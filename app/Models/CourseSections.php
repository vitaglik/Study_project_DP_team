<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CourseSections extends Model
{
    protected $table = 'course_sections';

    public $timestamps = false;

    public function about()
    {
        return $this->hasMany(
            CourseAbout::class,
            'section_id'
        );
    }
}
