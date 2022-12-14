
    <?= $this->extend('user/layout'); ?>

<?= $this->section('header'); ?>
<header style="height: 370px">
      <div class="shadow" style="height: 500px">
<?= $this->endSection(); ?>

<?= $this->section('content'); ?>

<div class="title-tour">
          <h1 style="font-size: 30px;"><?= $produk['nama_produk']; ?></h1>
          <div class="price">
            <h1><b>Rp <?= $produk['harga']; ?> </b>
            </h1>
          </div>
        </div>
      </div>
    </header>
    <div class="detail-tours">
      <div class="detail">
        <br />
        <center>
          <img src="/Horizon/Assets/img/<?= $produk['sampul']; ?>" width="400px" alt="" />
        </center>
        <!-- Deskripsi -->
        <div class="desk">
          <?= $produk['deskripsi_produk']; ?> 
        </div>
      </div>
      <div class="booking">
        <form action="/cart/addcart" method="post">
          <h2>Book The Tour </h2>
          <input type="hidden" name="id" value="<?= user()->id ?? null; ?>" id="">
          <input type="hidden" name="id_produk" value="<?= $produk['id_produk']; ?>" id="">
          <input type="date" name="tanggal_tour" id="tanggal_tour" class="" placeholder="2022-12-17" required />
          <input type="number" name="item" id="item" class="" min="1" placeholder="Pax/Person" required />

          <div class="btn">
            <?php if(!logged_in()) : ?>
              <a href="/login"><div class="logindulu">Anda belum login</div></a>
              <!-- <button class="alert" onclick="alertLogin();">Book Now</button> -->
            <?php else: ?>
              <button type="submit">Book Now</button>
            <?php endif; ?>
          </div>
        </form>
        <div class="card-tour" style="font-size: 12px;">
            Jika anda ingin tour atau trekking dengan lebih dari 10 orang, silahkan booking via whatsapp dengan penawaran harga yang lebih terjangkau. <br> <br>
            <a href="https://wa.me/6285954629508" target="_blank">Whatsapp Now</a>
          </div>
        <div class="card-tour">
          <h3 style="color:  rgb(53, 53, 53);">Ulasan</h3>
          <!-- perulangannya dari sini -->
          <?php foreach($rating as $r):?>
            <?php if($r['nilai_rating'] != null) : ?>
              <hr>
              <div class="headercomment">
                <div class="nama">
                  <?= $r['fullname'] ?? 'anonim';?>
                </div>
                <div class="ratingg">
                    <?php 
                    $rate = (int)$r['nilai_rating'];
                    $rateminus = 5 - $rate;
                    // var_dump($rateminus);
                    if($rate > 0):  ?>
                        <?php for($i=0; $i< $rate; $i++){ ?>
                        <img src="/Horizon/Assets/icon/rating.png" alt="" />
                        <?php } ?>
                        <?php for($i=0; $i< $rateminus; $i++){ ?>
                        <img src="/Horizon/Assets/icon/ratingg.png" alt="" />
                        <?php } ?>
                    <?php endif; ?>
                      
                </div>
              </div>
              <div class="isicomment">
                <?= $r['komentar']; ?>
              </div>
            <?php endif; ?>
          <?php endforeach; ?>

          </div>
          
      </div>
    </div>

<?= $this->endSection(); ?>