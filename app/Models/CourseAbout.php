<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CourseAbout extends Model
{
    protected $table = 'course_about';

    public $timestamps = false;

    public function items()
    {
        return $this->hasMany(
            CourseSectionItem::class,
            'section_id'
        )->orderBy('sort_order');
    }

}
