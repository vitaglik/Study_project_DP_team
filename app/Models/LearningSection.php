<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class LearningSection extends Model
{
    protected $table = 'learning_sections';

    public $timestamps = false;

    public function items() {
        return $this->hasMany(LearningSectionItem::class, 'section_id')->orderBy('sort_order');
    }
}
