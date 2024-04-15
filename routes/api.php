<?php

use Illuminate\Http\Request;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FoodController;
use App\Http\Controllers\DrinksController;
use App\Http\Controllers\TableController;
use App\Http\Controllers\AcceptController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\WaiterController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('login', [AuthenticatedSessionController::class, 'receive']);
Route::get('/orderD/{id}', [DrinksController::class, 'apishow']);
Route::get('/waiterDr/{id}', [DrinksController::class, 'apisee']);

// waiter urls
Route::post('/callwaiter', [WaiterController::class, 'store']);
Route::get('/foods', [FoodController::class, 'apiindex']);
Route::get('/drinks', [DrinksController::class, 'apiindex']);


// order urls
Route::post('/placeorder', [OrderController::class, 'store']);
Route::get('/waitersRequest', [WaiterController::class, 'apiindex']);
Route::get('/order/{id}', [FoodController::class, 'apishow']);
Route::get('/waiter/{id}', [FoodController::class, 'apisee']);

Route::middleware('auth')->group(function () {
    Route::get('logout', [AuthenticatedSessionController::class, 'apidestroy']);
    Route::get('/dashboard', [OrderController::class, 'apiindex'])->name('dashboard');
    Route::post('/accepted', [AcceptController::class, 'store']);
    
    Route::middleware('role:admin')->group(function () {
        Route::get('/admin1', [OrderController::class, 'apiadmin1']);
        Route::get('/admin', [WaiterController::class, 'apiadmin1']);
        Route::get('/newF', function (){return view('new');});
        Route::post('/new-food', [FoodController::class, 'store']);
        Route::get('/newD', function (){return view('newD');});
        Route::post('/new-drink', [DrinksController::class, 'store']);
        Route::get('/newTable', function(){return view('newTable');});
        Route::post('/new-table', [TableController::class, 'store']);
    });
});