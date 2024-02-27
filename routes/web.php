<?php

use App\Livewire\BlogDetails;
use App\Livewire\ShoServiceDetails;
use Illuminate\Support\Facades\Route;
use App\Livewire\ShowHome;
use App\Livewire\ShoServicePage;
use App\Livewire\ShowBlog;
use App\Livewire\ShowContactPage;
use App\Livewire\ShowFaq;
use App\Livewire\ShowPage;
use App\Livewire\ShowTeamPage;

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

/* Route::get('/', function () {
    return view('welcome');
}); */
Route::get('/',ShowHome::class)->name('home');
Route::get('/services',ShoServicePage::class)->name('ServicePage');
Route::get('/service/{id}',ShoServiceDetails::class)->name('ServiceDetails');
Route::get('/team',ShowTeamPage::class)->name('teamPage');
Route::get('/blog',ShowBlog::class)->name('blog');
Route::get('/blog/{id}',BlogDetails::class)->name('blogDetails');
Route::get('/faq',ShowFaq::class)->name('faq');
//daynamic page
Route::get('/page/{id}',ShowPage::class)->name('page');
Route::get('/contact',ShowContactPage::class)->name('contact');