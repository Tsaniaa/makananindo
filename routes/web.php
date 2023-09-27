<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KulinerController;
use App\Http\Controllers\JenisKulinerController;

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

// Route::get('/', function () {
//     return view('home');
// });

Route::get('/home', [JenisKulinerController::class, 'index']);
Route::get('/{id}', [KulinerController::class, 'index']);
Route::get('/makanan/{id}', [KulinerController::class, 'detail']);
Route::get('/minuman/{id}', [KulinerController::class, 'detail']);
Route::get('/jajanan/{id}', [KulinerController::class, 'detail']);
