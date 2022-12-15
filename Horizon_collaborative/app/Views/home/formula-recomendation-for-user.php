<?php
$recomendationProductsGuest = $predictionClass->recomendationProductsForUser();
?>

<ol>
    <?php foreach ($recomendationProductsGuest as $product) : ?>
        <li><?= $product->nama_produk ?></li>
    <?php endforeach; ?>
</ol>
