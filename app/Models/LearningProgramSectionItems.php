<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LearningProgramSectionItems extends Model
{
    protected $table = 'learning_program_sections_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(TeacherSection::class, 'section_id');
    }
}
