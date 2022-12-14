<?php

namespace App\Controllers;
use App\Models\M_Produk;
use App\Models\M_Kategori;
use App\Models\M_Rating;

class Home extends BaseController
{

    protected $mProduk, $mKategori, $mRating, $db, $builder;
    public $cekrole;

    public function __construct()
    {
        $this->db           = \Config\Database::connect();
        $this->mProduk      = new M_Produk();
        $this->mKategori    = new M_Kategori();
        $this->mRating      = new M_Rating();
    }

    public function cekrole($iduser){
        $this->builder = $this->db->table('auth_groups ');
        $this->builder->select('auth_groups.name as role');
        $this->builder->join('auth_groups_users ', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->join('users', 'auth_groups_users.user_id = users.id');
        $this->builder->where('users.id = '. $iduser);
        $query = $this->builder->get();

        $role = $query->getFirstRow();
        return $role;   
    }

    public function index()
    {
        $iduser = user()->id ?? null; 
        $role = $this->cekrole($iduser);
        $rolee = $role->role ?? null; 
        
        $produk         = $this->mRating->hitungRating()->getResultArray();
        $kategori       = $this->mKategori->findAll();

        $data = [
            'title'     => 'Horizon Tour and Travel',
            'produk'    => $produk,
            'kategori'  => $kategori,
            'role'      => $rolee
        ];

        return view('user/Home', $data);
    }

    public function homeedit()
    {
        $iduser = user()->id ?? null;
        $role = $this->cekrole($iduser);
        $rolee = $role->role ?? null;

        $produk         = $this->mRating->hitungRating()->getResultArray();
        $kategori       = $this->mKategori->findAll();

        $data = [
            'title'     => 'Horizon Tour and Travel',
            'produk'    => $produk,
            'kategori'  => $kategori,
            'role'      => $rolee
        ];

        return view('user/homeedit', $data);
    }
    
    public function tour()
    {
        $iduser = user()->id ?? null; 
        $role = $this->cekrole($iduser);
        $rolee = $role->role ?? null; 
        
        $produk         = $this->mProduk->getallprodukrating()->getResultArray();

        // dd($produk);
        $data = [
            'title'     => 'Paket Tour',
            'produk'    => $produk,
            'role'      => $rolee
        ];
        return view('user/Tour', $data);
    }

    public function trekking()
    {
        $iduser = user()->id ?? null; 
        $role = $this->cekrole($iduser);
        $rolee = $role->role ?? null; 
        
        $produk         = $this->mProduk->getallprodukrating()->getResultArray();

        // dd($produk);
        $data = [
            'title'     => 'Paket Trekking',
            'produk'    => $produk,
            'role'      => $rolee
        ];
        return view('user/tour-trekking', $data);
    }

    public function detailtour($id_produk)
    {
        $iduser = user()->id ?? null;
        $role = $this->cekrole($iduser);
        $rolee = $role->role ?? null;

        $produk = $this->mProduk->where(['id_produk' => $id_produk])->first();
        $rating = $this->mProduk->getratingfirst($id_produk)->getResultArray();

        // dd($rating);
        $data = [
            'title'     => 'Detail Tour',
            'role'      => $rolee,
            'produk'    => $produk,
            'rating'    => $rating
        ];

        return view('user/Detail', $data);
    }

    


}
