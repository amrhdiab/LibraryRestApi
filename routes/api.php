<?php

use Illuminate\Http\Request;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

//User Routes
Route::post('login', 'API\UserController@login');
Route::post('register', 'API\UserController@Register');

Route::group(['middleware' => 'auth:api'], function ()
{
    Route::get('details', 'API\UserController@details');
    Route::get('logout', 'API\UserController@logout');
    Route::post('verify', 'API\UserController@verify');
});

//Books Api Resource
Route::apiResource('/books', 'BookController');

//Reviews Api
Route::apiResource('/books/{book}/reviews','ReviewController');
