<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TechnologiesItems extends Model
{
    protected $table = 'technologies_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(Technologies::class, 'section_id');
    }
}
