<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FooterSections extends Model
{
    protected $table = 'footer_sections';

    public $timestamps = false;

    public function links()
    {
        return $this->hasMany(
            FooterLink::class,
            'section_id'
        )->orderBy('sort_order');
    }

    public function socials()
    {
        return $this->hasMany(
            FooterSocial::class,
            'section_id'
        )->orderBy('sort_order');
    }
}
