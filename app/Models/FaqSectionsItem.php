<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FaqSectionsItem extends Model
{
    protected $table = 'faq_section_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(
            FaqSections::class,
            'section_id'
        );
    }
}
