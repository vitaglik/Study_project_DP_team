<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LearningSectionItem extends Model
{
    protected $table = 'learning_section_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(LearningSection::class, 'section_id');
    }
}
