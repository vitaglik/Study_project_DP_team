<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WorksSections extends Model
{
    protected $table = 'works_sections';

    public $timestamps = false;

    public function items() {
        return $this->hasMany(WorksSectionItems::class, 'section_id')->orderBy('id');
    }
}
