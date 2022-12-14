<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Rating extends Model
{
    protected $table      = 'rating';
    protected $primaryKey = 'id_rating';
    protected $allowedFields = ['id_produk', 'id', 'nilai_rating', 'komentar'];
    protected $useTimestamps = true;
    protected $createdField  = 'created_rating';
    protected $updatedField  = 'updated_rating';

    public function getRatingInfo()
    {
        $query =  $this->db->table('rating')
        ->select('id_rating, username, nama_produk, nilai_rating, komentar')
        ->join('produk', 'produk.id_produk = rating.id_produk')
        ->join('users', 'users.id = rating.id')
        ->get();  
        return $query;
    }

    public function hitungRating()
    {
        $query= $this->db->query( "SELECT produk.id_produk as idproduk, nama_produk, harga, deskripsi_produk, sampul , rating.id_produk as produk, SUM(rating.nilai_rating) as jumlah_rating, COUNT(rating.id) as jumlah_rater, SUM(rating.nilai_rating)/COUNT(rating.id) as rata_rating, nama_kategori FROM produk JOIN rating ON produk.id_produk = rating.id_produk JOIN kategori ON kategori.id_kategori = produk.id_kategori GROUP BY rating.id_produk DESC LIMIT 3 ");
        return $query;
    }
    
    // Collaborative
    public function usersRating(){
        $query =  $this->db->table('rating')
        ->select('users.id, username')
        ->join('users','rating.id=users.id')
        ->groupBy('rating.id')
        ->get();  
        return $query;

    }
}