<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\CourseForm;
use App\Models\Faq;
use App\Models\Footer;
use App\Models\Header;
use App\Models\Hero;
use App\Models\Learning;
use App\Models\LearningProgram;
use App\Models\Reviews;
use App\Models\Teacher;
use App\Models\Technologies;
use App\Models\WorksSections;


class HomeController extends Controller
{


    public function index()
    {
        $data = []  ;

        $data['header'] = Header::first();
        $data['hero'] = Hero::first();
        $data['learning'] = Learning::first();
        $data['technologies'] = Technologies::first();
        $data['works_sections'] = WorksSections::with('items.images')->orderBy('id')->get();
        $data['teacher'] = Teacher::first();
        $data['learning_program'] = LearningProgram::first();
        $data['reviews'] = Reviews::first();
        $data['course'] = Course::first();
        $data['course_form'] = CourseForm::first();
        $data['faq'] = Faq::first();
        $data['footer'] = Footer::first();

        return view('home', $data);
    }
}
