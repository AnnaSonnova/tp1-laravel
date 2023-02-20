<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\CustomAuthController ;
use App\Http\Controllers\LocalizationController;

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


//route etudiant
 
Route::get('index', [EtudiantController::class , 'index'])->name('index')->middleware('auth');
// Route::get('/etudiant', [EtudiantController::class , 'index']);
Route::get('show/{etudiant}', [EtudiantController::class , 'show'])->name('show')->middleware('auth');
Route::get('create', [EtudiantController::class, 'create'])-> name('create')->middleware('auth');
Route::post('create', [EtudiantController::class, 'store'])-> name('store')->middleware('auth');
Route::get('edit/{etudiant}', [EtudiantController::class, 'edit'])-> name('edit')->middleware('auth');
Route::put('edit/{etudiant}', [EtudiantController::class, 'update'])->middleware('auth');
Route::delete('edit/{etudiant}', [EtudiantController::class, 'destroy'])->middleware('auth');


//route auth user
Route::get('/login', [CustomAuthController::class, 'index'])->name('login');
Route::post('/login', [CustomAuthController::class, 'authentication'])->name('user.auth');
Route::get('/registration', [CustomAuthController::class, 'create'])->name('user.create');
Route::post('/registration', [CustomAuthController::class, 'store'])->name('user.store');
Route::get('/logout', [CustomAuthController::class, 'logout'])->name('logout');

Route::get('/dashboard', [CustomAuthController::class, 'dashboard'])->name(
    'dashboard');

//langue
Route::get('/lang/{locale}', [LocalizationController::class, 'index'])->name('lang');