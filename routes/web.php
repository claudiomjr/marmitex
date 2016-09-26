<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('teste', function (){
    $rep = app()->make(\CodeDelivery\Repositories\CategoryRepository::class);
    return $rep->all();
});

//Route::get('logout');

Route::group(['prefix'=>'admin','as'=>'admin.','middleware'=>'auth.checkrole'],function (){

    Route::group(['prefix'=>'clients','as'=>'clients.'],function(){
        Route::get('', ['as'=>'index','uses'=>'ClientController@index']);
        Route::get('create', ['as'=>'create','uses'=>'ClientController@create']);
        Route::post('store', ['as'=>'store','uses'=>'ClientController@store']);
        Route::get('edit/{id}', ['as'=>'edit','uses'=>'ClientController@edit']);
        Route::post('update/{id}', ['as'=>'update','uses'=>'ClientController@update']);
    });

    Route::group(['prefix'=>'categories','as'=>'categories.'],function(){
        Route::get('', ['as'=>'index','uses'=>'CategoryController@index']);
        Route::get('create', ['as'=>'create','uses'=>'CategoryController@create']);
        Route::post('store', ['as'=>'store','uses'=>'CategoryController@store']);
        Route::get('edit/{id}', ['as'=>'edit','uses'=>'CategoryController@edit']);
        Route::post('update/{id}', ['as'=>'update','uses'=>'CategoryController@update']);
    });


    Route::group(['prefix'=>'products','as'=>'products.'],function(){
        Route::get('', ['as'=>'index','uses'=>'ProductController@index']);
        Route::get('create', ['as'=>'create','uses'=>'ProductController@create']);
        Route::post('store', ['as'=>'store','uses'=>'ProductController@store']);
        Route::get('edit/{id}', ['as'=>'edit','uses'=>'ProductController@edit']);
        Route::post('update/{id}', ['as'=>'update','uses'=>'ProductController@update']);
        Route::get('delete/{id}', ['as'=>'delete','uses'=>'ProductController@delete']);
    });


    Route::group(['prefix'=>'orders','as'=>'orders.'],function(){
        Route::get('', ['as'=>'index','uses'=>'OrderController@index']);
        Route::get('edit/{id}', ['as'=>'edit','uses'=>'OrderController@edit']);
        Route::post('update/{id}', ['as'=>'update','uses'=>'OrderController@update']);
    });
});

/*Route::post('/task', function (Request $request) {
    $validator = Validator::make($request->all(), [
        'name' => 'required|max:255',
    ]);

    if ($validator->fails()) {
        return redirect('/')
            ->withInput()
            ->withErrors($validator);
    }

    // Create The Task...
    $task = new Task;
    $task->name = $request->name;
    $task->save();

    return redirect('/');
});*/
Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');
