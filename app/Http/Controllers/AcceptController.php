<?php

namespace App\Http\Controllers;

use App\Models\Accept;
use Illuminate\Http\Request;

class AcceptController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $user = $request->user();
        $datas = new Accept();
        $datas->foodname = $request->foodname;
        $datas->tablename = $request->tablename;
        $datas->username = $user->name;
        $datas->useremail = $user->email;
        $datas->clientid = $request->phone;
        $datas->save();

        return redirect()->back()->with('success', 'Food submitted successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Accept  $accept
     * @return \Illuminate\Http\Response
     */
    public function show(Accept $accept)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Accept  $accept
     * @return \Illuminate\Http\Response
     */
    public function edit(Accept $accept)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Accept  $accept
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Accept $accept)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Accept  $accept
     * @return \Illuminate\Http\Response
     */
    public function destroy(Accept $accept)
    {
        //
    }
}