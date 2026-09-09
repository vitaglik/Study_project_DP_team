<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FooterSocial extends Model
{
    protected $table = 'footer_socials';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(
            FooterSections::class,
            'section_id'
        );
    }
}
