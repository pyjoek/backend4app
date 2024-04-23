<?php

namespace App\Http\Controllers;

use App\Models\Food;
use App\Models\Table;
use Illuminate\Http\Request;

class FoodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $foods  = Food::all();
        return view('foods', ['foods' => $foods]);
    }
    public function apiindex()
    {
        $foods  = Food::all();
        return response()->json($foods);
    }
    public function deel()
    {
        $foods  = Food::all();
        return view('foodsDel', ['foods' => $foods]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $filename = $request->file->getClientOriginalName();
        $request->file->move(public_path('images'), $filename);


        $food = new Food();
        $food->img = $filename;
        $food->foodname = $request->food;
        $food->price = $request->price;
        $food->save();

        return redirect('/admin');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Food  $food
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $food = Food::find($request->id);
        $table = Table::find($request->ids);
        return view('order', ['food' => $food, 'table' => $table]);
    }
    public function apishow(Request $request)
    {
        $food = Food::find($request->id);
        $table = Table::find($request->ids);
        return response()->json([$food, $table]);
    }

    public function see(Request $request)
    {
        $food = Food::find($request->id);
        $table = Table::find($request->ids);
        return view('cwaiter', ['food' => $food, 'table' => $table]);
    }
    public function apisee(Request $request)
    {
        $food = Food::find($request->id);
        $table = Table::find($request->ids);
        return response()->json([$food, $table]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Food  $food
     * @return \Illuminate\Http\Responsedestroy
     */
    public function edit(Food $food)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Food  $food
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Food $food)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Food  $food
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $datas = Food::find($id);
        $datas->delete();

        return redirect('/admin');
    }
}
