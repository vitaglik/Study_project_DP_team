<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class ReviewsSectionItems extends Model
{
    protected $table = 'reviews_sections_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(ReviewsSection::class, 'section_id');
    }
}
