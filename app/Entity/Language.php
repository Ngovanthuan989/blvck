<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Lang;

class Language extends Model
{
    protected $table = 'language';

    protected $primaryKey = 'language_id';

    protected $fillable = [
        'language_id',
        'language',
        'acronym',
        'created_at',
        'updated_at',
    ];

    public static function getLang($acronym){
        $lang = Language::where('acronym', $acronym)->first();

        return $lang->language;
    }
}
