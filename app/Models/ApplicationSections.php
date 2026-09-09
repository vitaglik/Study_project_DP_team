<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ApplicationSections extends Model
{
    protected $table = 'application_sections';

    public $timestamps = false;

    public function items()
    {
        return $this->hasMany(
            ApplicationSectionsItem::class,
            'section_id'
        )->orderBy('sort_order');
    }
}
