<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LearningProgramSection extends Model
{
    protected $table = 'learning_program_sections';

    public $timestamps = false;

    public function items() {
        return $this->hasMany(LearningProgramSectionItems::class, 'section_id')->orderBy('sort_order');
    }
}
