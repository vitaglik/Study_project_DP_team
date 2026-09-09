<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WorksSectionItems extends Model
{
    protected $table = 'works_section_items';

    public $timestamps = false;

    public function section()
    {
        return $this->belongsTo(WorksSections::class, 'section_id');
    }
    public function images() {
        return $this->hasMany(WorkImage::class, 'work_id')->orderBy('ordinal_number');
    }
}
