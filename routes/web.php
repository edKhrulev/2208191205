<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::namespace('UserAddress')->group(function() {
    Route::get('/', 'HomeController@index')->name('index');
    Route::post('/', 'HomeController@createAddress')->name('createAddress');
});
