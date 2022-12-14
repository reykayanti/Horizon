<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Users extends Model
{
    protected $table      = 'users';
    // protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'email',
        'username',
        'fullname',
        'birthday',
        'phone_number',
        'instagram',
        'country',
        'city',
        'user_image',
        'password_hash'
    ];
    protected $useTimestamps = true;

   
}