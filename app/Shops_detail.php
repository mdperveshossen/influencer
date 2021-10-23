<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Shops_detail extends Model
{
    use SoftDeletes;
    protected $guarded = ['_token'];
}
