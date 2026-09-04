<?php

namespace App\Http\Controllers;

use App\Models\Header;
use App\Models\Hero;
use App\Models\Learning;
use App\Models\Technologies;

class HomeController extends Controller
{
    public function index()
    {
        $header = Header::first();
        $hero = Hero::first();
        $learning = Learning::first();
        $technologies = Technologies::first();

        return view('home', compact(
            'header','hero'));
    }
}
