<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ReviewsSection extends Model
{
    protected $table = 'reviews_sections';

    public $timestamps = false;

    public function items() {
        return $this->hasMany(ReviewsSectionItems::class, 'section_id')->orderBy('sort_order');
    }
}
