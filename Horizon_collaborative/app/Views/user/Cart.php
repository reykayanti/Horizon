
    <?= $this->extend('user/layout'); ?>

<?= $this->section('header'); ?>
    <header style="height: 350px">
        <div class="shadow" style="height: 350px">
<?= $this->endSection(); ?>

<?= $this->section('content'); ?>
<div class="title-tour">
<div class="title-tour">
    
          <h1>Cart</h1>
        </div>
      </div>
    </header>
    <div class="main-cart">
      
    <h3>Your Order</h3>
      <!-- form cart -->
      <form action="" method="POST">
        <div class="card">
           <br>
          <table>
            <tr class="title">
              <td>Product</td>
              <td>Booking Date</td>
              <td>Price</td>
              <td>Qyt</td>
              <td>Total</td>
              <td width="40px"></td>
              <td ></td>
            </tr>
            <?php foreach($detail_pesanan as $pesanan) : ?>
            <tr>
              <td style="display: flex;">
                <div class="image" style="  background-image: url('/Horizon/Assets/img/<?= $pesanan->sampul ?>');"></div>
                <div class="text">
                  <?= $pesanan->nama_produk ?>
                </div>
              </td>
              <td>
                  <?= $pesanan->tanggal_tour ?>
              </td>
              <td>
                  Rp <?= $pesanan->harga ?>
              </td>
              <td>
                  Rp <?= $pesanan->item ?>
              </td>
              <td>
                  <?php 
                    $total_biaya = $pesanan->harga * $pesanan->item;
                    echo 'Rp '. $total_biaya;
                  ?>
              </td>
              <td>
                <div class="btn"><a href="/cart/prosescheckout/<?= $pesanan->id_keranjang; ?>">Checkout</a></div>
              </td>
              <td>
                <abbr title="Delete">
                  <a href="/cart/delete/<?= $pesanan->id_keranjang; ?>"><img src="/Horizon/Assets/icon/close.png" width="15px" alt=""></a>
                </abbr>
              </td>
            </tr>
            <?php endforeach; ?>
            
          </table>
        </div>
      </form>
      
    </div>

<?= $this->endSection(); ?>