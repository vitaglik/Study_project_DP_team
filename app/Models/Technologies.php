<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Technologies extends Model
{
    protected $table = 'technologies';

    public $timestamps = false;
    public function items() {
        return $this->hasMany(TechnologiesItems::class, 'section_id')->orderBy('sort_order');
    }
}
