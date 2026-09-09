<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TeacherSection extends Model
{
    protected $table = 'teacher_sections';

    public $timestamps = false;
    public function items() {
        return $this->hasMany(TeacherSectionItems::class, 'section_id')->orderBy('sort_order');
    }
}
