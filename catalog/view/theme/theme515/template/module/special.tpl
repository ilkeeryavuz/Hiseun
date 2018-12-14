<script>
    $(window).load(function () {
        var slider = $('.specials-scroll');
        if ($(window).width() > 767) {
            slider.bxSlider({
                mode: 'vertical',
                slideWidth: 270,
                minSlides: 3,
                maxSlides: 3,
                moveSlides: 1,
                pager: false,
                slideMargin: 30,
                controls: true
            });
        } else{
            if (!slider.hasClass('activated')){
                slider.owlCarousel({
                    items:3,
                    margin: 30,
                    smartSpeed: 450,
                    dots: false,
                    nav: true,
                    loop: true,
                    navClass: ['owl-prev fa fa-angle-up', 'owl-next fa fa-angle-down'],
                    responsive: {
                        0: {items: 1},
                        370: {items: 2},
                        570: {items: 3}
                    }
                });
                slider.addClass('activated');
            }
        }
    })
</script>

<div class="box specials">
    <div class="box-heading"><h3><?php echo $heading_title; ?></h3></div>
    <div class="box-content">
        <div class="product-layout">
            <div class="specials-scroll">
                <?php $t=0; foreach ($products as $product) { $t++ ?>
                <div>
                    <div class="product-thumb transition equal-height-767">
                        <?php if ($product['special']) { ?>
                        <div class="sale"><?php echo $text_sale; ?></div>
                        <?php } ?>
                        <div class="image">
                            <a href="<?php echo $product['href']; ?>">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"
                                     title="<?php echo $product['name']; ?>" class="img-responsive"/>
                            </a>
                        </div>
                        <div class="caption">
                            <?php if ($product['price']) { ?>
                            <div class="price">
                                <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                                <?php } else { ?>
							<span class="price-new">
								<?php echo $product['special']; ?>
							</span>
							<span class="price-old">
								<?php echo $product['price']; ?>
							</span>
                                <?php } ?>
                                <?php if ($product['tax']) { ?>
							<span class="price-tax">
								<?php echo $text_tax; ?> <?php echo $product['tax']; ?>
							</span>
                                <?php } ?>
                            </div>
                            <?php } ?>
                            <div class="name">
                                <a href="<?php echo $product['href']; ?>">
                                    <?php echo $product['name']; ?>
                                </a>
                            </div>
                            <div class="description">
                                <!--<?php echo $product['description']; ?>-->
                            </div>
                            <?php if ($product['rating']) { ?>
                            <div class="rating">
                                <?php for ($i = 1; $i <= 5; $i++) { ?>
                                <?php if ($product['rating'] < $i) { ?>
							<span class="fa fa-stack">
								<i class="fa fa-star-o fa-stack-2x"></i>
							</span>
                                <?php } else { ?>
							<span class="fa fa-stack">
								<i class="fa fa-star fa-stack-2x"></i>
								<i class="fa fa-star-o fa-stack-2x"></i>
							</span>
                                <?php } ?>
                                <?php } ?>
                            </div>
                            <?php } ?>

                        </div>
                        <div class="cart-button">
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>