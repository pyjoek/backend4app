<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\FoodController;
use App\Http\Controllers\DrinksController;
use App\Http\Controllers\TableController;
use App\Http\Controllers\AcceptController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\WaiterController;
require __DIR__.'/auth.php';

// food urls
Route::get('/', [FoodController::class, 'index']);
Route::get('/order/{id}', [FoodController::class, 'show']);
Route::get('/waiter/{id}', [FoodController::class, 'see']);

// drinks urls
Route::get('/drinks', [DrinksController::class, 'index']);
Route::get('/orderD/{id}', [DrinksController::class, 'show']);
Route::get('/waiterD/{id}', [DrinksController::class, 'see']);

// waiter urls
Route::post('/callwaiter', [WaiterController::class, 'store']);

// order urls
Route::post('/placeorder', [OrderController::class, 'store']);
Route::get('/waitersRequest', [WaiterController::class, 'index']);

// others urls

Route::middleware('auth')->group(function () {
    Route::get('logout', [AuthenticatedSessionController::class, 'destroy']);
    Route::get('/dashboard', [OrderController::class, 'index'])->name('dashboard');
    Route::post('/accepted', [AcceptController::class, 'store']);
    
    Route::middleware('role:admin')->group(function () {
        Route::get('/admin1', [OrderController::class, 'admin1']);
        Route::get('/admin', [WaiterController::class, 'admin1']);
        Route::get('/newF', function (){return view('new');});
        Route::post('/new-food', [FoodController::class, 'store']);
        Route::get('/newD', function (){return view('newD');});
        Route::post('/new-drink', [DrinksController::class, 'store']);
        Route::get('/newTable', function(){return view('newTable');});
        Route::post('/new-table', [TableController::class, 'store']);
        Route::get('/waliokubali', [AcceptController::class, 'index']);
        Route::get('/del/foods',[FoodController::class, 'deel']);
        Route::get('/del/foods/{id}', [FoodController::class, 'destroy']);
        Route::get('/del/drinks',[DrinksController::class, 'deel']);
        Route::get('/del/drinks/{id}', [DrinksController::class, 'destroy']);
    });
});