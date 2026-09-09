<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CourseSectionItem extends Model
{
    protected $table = 'course_sections_items';

    public $timestamps = false;

    public function about()
    {
        return $this->belongsTo(
            CourseAbout::class,
            'section_id'
        );
    }
}
