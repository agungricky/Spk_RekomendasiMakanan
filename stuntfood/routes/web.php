<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\authController;
use App\Http\Controllers\spkController;
use Illuminate\Routing\Events\Routing;
use Illuminate\Routing\Route as RoutingRoute;
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

//========== USER ==============// 
Route::get('/', function () {
    return view('landingpage.lp');
});

//========== Login ==============// 
Route::post('/login', [authController::class, 'login'])->name('login');
Route::get('/login', [authController::class, 'index'])->name('form_login');
Route::get('/logout', [authController::class, 'logout'])->name('logout');


//========== AI ==============// 
Route::get('/spk', [spkController::class, 'index'])->name('form_user');
Route::post('/proses', [spkController::class, 'proses'])->name('proses');
Route::get('/show/{id}', [spkController::class, 'show'])->name('detail');
// Route::get('/submenu/{id}', [spkController::class,'submenu'])->name('submenu');
Route::get('/submenu/{id}', [spkController::class, 'proses'])->name('submenu');
Route::get('/show/{paket}', [spkController::class, 'show']);

//========== Admin ==============// 
Route::get('/prosesadmin', [AdminController::class, 'store'])->name('prosesadmin');
Route::get('created', [AdminController::class, 'create']);
Route::post('/simpan', [AdminController::class, 'store'])->name('store');

Route::middleware(['customAuth'])->group(function () {
    //============ CRUD ===============//
    Route::get('datamakananadmin', [AdminController::class, 'datamakanan']);
    Route::get('/editDataMakanan/{id}', [AdminController::class, 'edit'])->name('edit');
    Route::patch('/update/{id}', [AdminController::class, 'update'])->name('update');
    Route::delete('/delete/{id}', [AdminController::class, 'delete'])->name('hapus');

    Route::post('/prosesadmin', [AdminController::class, 'prosesForm'])->name('prosesadmin');
});


//=========== PERHITUNGAN =========//
Route::get('/data-makanan', [spkController::class, 'subMenu']);


// Route::view('index', 'website.user.datamakanan')->name('dashboarduser');
// Route::view('/datamakanan', '/user/datamakanan');

//=============== LP ===============//
// Route::view('/spk', 'website.user.spk')->name('form_user');
// Route::get('/spk', [spkController::class, 'index'])->name('form_user');

// Route::get('datamakananuser',[spkController::class,'datamakananuser']);

// Route::view('/form','admin.formInput')->name('form');
