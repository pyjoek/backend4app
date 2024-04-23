<?php

namespace App\Http\Controllers;

use App\Models\Drinks;
use Illuminate\Http\Request;

class DrinksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $drinks  = Drinks::all();
        return view('drinks', ['drinks' => $drinks]);
    }
    public function apiindex()
    {
        $drinks  = Drinks::all();
        return response()->json($drinks);
    }
    public function deel()
    {
        $drinks  = Drinks::all();
        return view('drinksDel', ['drinks' => $drinks]);
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
     * @return \Illuminate\Http\ResponseindexientOriginalName();
        $request->file->move(public_path('images'), $filename);
        */
    public function store(Request $request)
    {
        $filename = $request->file->getClientOriginalName();
        $request->file->move(public_path('images'), $filename);
        $drink = new Drinks();
        $drink->img = $filename;
        $drink->drinkname = $request->drink;
        $drink->price = $request->price;
        $drink->save();

        return redirect('/admin');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Drinks  $drinks
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $food = Drinks::find($id);
        return view('orderD', ['food' => $food]);
    }
    public function apishow($id)
    {
        $food = Drinks::find($id);
        return response($food);
    }

    public function see($id)
    {
        $food = Drinks::find($id);
        return view('cwaiterD', ['food' => $food]);
    }
    public function apisee($id)
    {
        $food = Drinks::find($id);
        return response()->json($food);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Drinks  $drinks
     * @return \Illuminate\Http\Response
     */
    public function edit(Drinks $drinks)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Drinks  $drinks
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Drinks $drinks)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Drinks  $drinks
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $datas = Drinks::find($id);
        $datas->delete();

        return redirect('/admin');
    }
}
