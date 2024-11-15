<?php

use App\Http\Controllers\ClienteController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
    // return view('auth.login');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // Users.
    Route::get('/users-index', [UserController::class, 'index'])->name('user.index');
    Route::get('/users-index', [UserController::class, 'index'])->name('user.index'); // index page.
    Route::get('/user-edit/{id}', [UserController::class, 'edit'])->name('user.edit'); // edit form page.
    Route::put('/user-update/{id}', [UserController::class, 'update'])->name('user.update'); // update page from edit page.

    // Rota para Clientes.
    Route::resources([
        'cliente' => ClienteController::class
    ]);


});

require __DIR__.'/auth.php';

