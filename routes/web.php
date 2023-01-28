<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;

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

 Route::get('/', function () {
     return view('welcome');
 })->name('about');
Route::get('index', [EtudiantController::class , 'index'])->name('index');
// Route::get('/etudiant', [EtudiantController::class , 'index']);
Route::get('show/{etudiant}', [EtudiantController::class , 'show'])->name('show');
Route::get('create', [EtudiantController::class, 'create'])-> name('create');
Route::post('create', [EtudiantController::class, 'store'])-> name('store');
Route::get('edit/{etudiant}', [EtudiantController::class, 'edit'])-> name('edit');
Route::put('edit/{etudiant}', [EtudiantController::class, 'update']);
Route::delete('edit/{etudiant}', [EtudiantController::class, 'destroy']);

