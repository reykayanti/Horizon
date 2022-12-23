
    <?= $this->extend('user/layout'); ?>

    <?= $this->section('header'); ?>
    <header>
      <div class="shadow">
      <?= $this->endSection(); ?>

    <?= $this->section('content'); ?>
    
            <!-- headline -->
            <div class="headline">
          <h1>HORIZON</h1>
          <h3>Tour And Travel</h3>

          <p>
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nesciunt quia rem id nostrum, debitis at quos enim corrupti facilis, magni ad iusto totam provident non voluptate doloremque sit assumenda voluptatum, consequuntur sed
            deserunt tempora ducimus? Molestiae sit iste dolorem
          </p>

          <div class="btn-headline">
            <a href="#">Choose Your Tour Packages</a>
          </div>
        </div>
      </div>
    </header>

    
    <div class="main-lates">
      <center>
        <h1>Lates Post</h1>
      </center>
      <div class="list-product">
        <div class="list-post">
      
          
          <?php foreach($produk as $prod): ?>
          <a href="/detailtour/<?= $prod['idproduk']; ?>">
            <div class="card-post">
              <!-- isi -->
              <div class="header-card" style="background-image: url('/Horizon/Assets/img/<?= $prod['sampul']; ?>')">
                <div class="shadow-card">
                  <div class="rating">
                    <?php 
                    $rate = (int)$prod['rata_rating'];
                    $rateminus = 5 - $rate;
                    // var_dump($rateminus);

                    if($rate > 0):  ?>
                        <?php for($i=0; $i< $rate; $i++){ ?>
                          <img src="/Horizon/Assets/icon/rating.png" alt="" />
                        <?php } ?>
                        <?php for($i=0; $i< $rateminus; $i++){ ?>
                          <img src="/Horizon/Assets/icon/ratingg.png" alt="" />
                        <?php } ?>
                        <small style="color: #ffc832; margin-top: -25px;">/<?= $prod['jumlah_rater']; ?></small>
                    <?php else: ?>
                      <p style="color: #ffc832; margin-top: -25px;"> Belum ada Rating</p>
                    <?php endif; ?>
                  </div>
                  <div class="harga">Rp <?= $prod['harga']; ?></div>
                </div>
              </div>
              <div class="ket">
                <h2><?= $prod['nama_produk']; ?></h2>
                <div class="line-post"></div>
                <b><p></p></b>
                <p><?= substr($prod['deskripsi_produk'], 0, 100); ?></p>
              </div>
            </div>
          </a>
          <?php endforeach; ?>
         
    
        </div>
      </div>
      <div class="btn-more">
        <a href="/tour">More</a>
      </div>
    </div>
    <!-- travel recommendation -->
    <div class="travel-recommendation">
      <div class="shadow">
        <center>
          <h1>We provide a travel recommendation system based on reviews.</h1>
        </center>
      </div>
    </div>

    <!-- <div class="about">
      <div class="pic">
      </div>
      <div class="keterangan"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum facere ipsam blanditiis magnam quia iste! Amet, ratione quia. Maiores quas deleniti amet quae dolor ipsum doloremque, enim ratione laudantium vitae inventore est illum iure culpa impedit quia saepe ullam ad aliquid natus fugit placeat harum! Maxime blanditiis molestiae fugit exercitationem?</div>
    </div> -->

    <!-- hasil collaborative filtering -->
    <?php if ($predictionClass->userIdRated) : ?>
        <?= view('home/formula-recomendation-for-user', ['predictionClass' => $predictionClass]); ?>
    <?php else : ?>
        <?= view('home/formula-recomendation-for-guest', ['predictionClass' => $predictionClass]); ?>
    <?php endif ?>
          
  
      

    <?= $this->endSection(); ?>