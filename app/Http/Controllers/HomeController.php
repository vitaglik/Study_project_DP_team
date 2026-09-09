<?php

namespace App\Http\Controllers;

use App\Models\CourseSections;
use App\Models\FooterSections;
use App\Models\Header;
use App\Models\Hero;
use App\Models\LearningSection;
use App\Models\ReviewsSection;
use App\Models\TeacherSection;
use App\Models\Technologies;
use App\Models\WorksSections;
use App\Models\LearningProgramSection;
use App\Models\ApplicationSections;
use App\Models\FaqSections;

class HomeController extends Controller
{
    private function getSections(string $model, string|array $relation = 'items') {
        return $model::with($relation)->orderBy('sort_order')->get();
    }

    public function index()
    {
        $header = Header::first();
        $hero = Hero::first();
        $learning_sections = $this->getSections(LearningSection::class);
        $technologies = $this->getSections(Technologies::class);
        $works_sections = $this->getSections(WorksSections::class, 'items.images');
        $teacher = $this->getSections(TeacherSection::class);
        $learning_program = $this->getSections(LearningProgramSection::class);
        $reviews = $this->getSections(ReviewsSection::class);
        $course_sections = $this->getSections(CourseSections::class, 'about.items');
        $application_sections = $this->getSections(ApplicationSections::class);
        $faq_sections = $this->getSections(FaqSections::class);
        $footer_sections = $this->getSections(
            FooterSections::class,
            ['links', 'socials']
        );

        return view('home', compact(
            'header', 'hero', 'learning_sections', 'technologies', 'works_sections', 'learning_program', 'reviews', 'teacher', 'course_sections', 'application_sections', 'faq_sections', 'footer_sections'));
    }
}
