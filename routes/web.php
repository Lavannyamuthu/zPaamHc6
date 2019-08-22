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
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'ServiceRequestsController@index')->name('shome')->middleware('auth');

Route::get('serviceRequest/create','ServiceRequestsController@serviceRequestCreate')->name('serviceRequest.create')->middleware('auth');
Route::get('getVehicleModel/{id}','ServiceRequestsController@getVehicleModel')->name('getVehicleModel')->middleware('auth');
Route::post('serviceRequest/store','ServiceRequestsController@store')->name('serviceRequest.store')->middleware('auth');;
Route::get('serviceRequest/edit/{id}', 'ServiceRequestsController@edit')->name('serviceRequest.edit')->middleware('auth');
Route::put('serviceRequest/update/{id}','ServiceRequestsController@update')->name('serviceRequest.update')->middleware('auth');
Route::delete('serviceRequest/delete/{id}','ServiceRequestsController@destroy')->name('serviceRequest.delete')->middleware('auth');




