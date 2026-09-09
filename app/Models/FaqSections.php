<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FaqSections extends Model
{
    protected $table = 'faq_sections';

    public $timestamps = false;

    public function items()
    {
        return $this->hasMany(
            FaqSectionsItem::class,
            'section_id'
        )->orderBy('sort_order');
    }
}
