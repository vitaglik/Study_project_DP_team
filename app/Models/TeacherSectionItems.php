<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TeacherSectionItems extends Model
{
    protected $table = 'teacher_section_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(TeacherSection::class, 'section_id');
    }
}
