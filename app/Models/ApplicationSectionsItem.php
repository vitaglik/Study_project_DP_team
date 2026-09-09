<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ApplicationSectionsItem extends Model
{
    protected $table = 'application_section_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(
            ApplicationSections::class,
            'section_id'
        );
    }
}
