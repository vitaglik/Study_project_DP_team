<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FooterLink extends Model
{
    protected $table = 'footer_links';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(
            FooterSections::class,
            'section_id'
        );
    }
}
