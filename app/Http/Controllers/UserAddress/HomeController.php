<?php

namespace App\Http\Controllers\UserAddress;


use App\Http\Controllers\Controller;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    public function index()
    {
        $addresses =  DB::table('address')
            ->select([
                'city',
                'area',
                'street',
                'house',
                'additional_info'
            ])
            ->orderBy('city', 'asc')
            ->get();

        return view('index', [
            'addresses' => $addresses
        ]);
    }


    public function createAddress(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'area' => 'required|string|max:255',
            'street' => 'required|string|max:255',
            'house' => 'required|numeric',
        ]);

        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator);
        }

        $address = new Address();
        $address->name = $request->name;
        $address->city = $request->city;
        $address->area = $request->area;
        $address->street = $request->street;
        $address->house = $request->house;
        $address->additional_info = $request->info;

        $address->save();

        return redirect()->route('index');
    }

}
