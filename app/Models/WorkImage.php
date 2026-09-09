<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WorkImage extends Model
{
    protected $table = 'works_image';

    public $timestamps = false;

    public function work()
    {
        return $this->belongsTo(WorksSectionItems::class, 'work_id');
    }
}
