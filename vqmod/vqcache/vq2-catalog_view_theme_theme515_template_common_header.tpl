<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <!--<?php foreach ($styles as $style) { ?>-->
    <!--<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"-->
          <!--media="<?php echo $style['media']; ?>"/>-->
    <!--<?php } ?>-->
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript" async="async"></script>
    <link href="catalog/view/javascript/camera/css/camera.css" rel="stylesheet">

    <link rel="stylesheet" href="catalog/view/theme/theme515/js/fancybox/jquery.fancybox.css" media="screen"/>
    <link href="catalog/view/theme/theme515/stylesheet/livesearch.css" rel="stylesheet">
    <link href="catalog/view/theme/theme515/stylesheet/owl-carousel.css" rel="stylesheet">
    <link href="catalog/view/theme/theme515/stylesheet/photoswipe.css" rel="stylesheet">
    <link href="catalog/view/theme/theme515/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
    <link href="catalog/view/theme/theme515/stylesheet/material-design.css" rel="stylesheet">

    <link href="catalog/view/theme/theme515/stylesheet/stylesheet.css" rel="stylesheet">
    <!--custom script-->
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>

    <script src="catalog/view/theme/theme515/js/common.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/tmstickup.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/jquery.unveil.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/jquery.bxslider/jquery.bxslider.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/fancybox/jquery.fancybox.pack.js" async="async"></script>
    <script src="catalog/view/theme/theme515/js/elavatezoom/jquery.elevatezoom.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/superfish.min.js" type="text/javascript"></script>
    <script src="catalog/view/theme/theme515/js/jquery.ui.totop.js"></script>
    <script src="catalog/view/theme/theme515/js/owl.carousel.min.js"></script>
    <!--Green Sock-->
    <script src="catalog/view/theme/theme515/js/greensock/jquery.gsap.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/greensock/TimelineMax.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/greensock/TweenMax.min.js" type="text/javascript"async="async"></script>
    <script src="catalog/view/theme/theme515/js/greensock/jquery.scrollmagic.min.js" type="text/javascript"></script>

    <!--photo swipe-->
    <script src="catalog/view/theme/theme515/js/photo-swipe/klass.min.js" type="text/javascript"></script>
    <script src="catalog/view/theme/theme515/js/photo-swipe/code.photoswipe.jquery-3.0.5.min.js" type="text/javascript" async="async"></script>
    <script src="catalog/view/theme/theme515/js/photo-swipe/code.photoswipe-3.0.5.min.js" type="text/javascript" async="async"></script>
    
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start':
            new Date().getTime(), event: 'gtm.js'});
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-T4MVDNW');</script>
    <!-- End Google Tag Manager -->

    <!-- Yandex.Metrika counter -->
    <script type="text/javascript" >
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function () {
                try {
                    w.yaCounter48237968 = new Ya.Metrika({
                        id: 48237968,
                        clickmap: true,
                        trackLinks: true,
                        accurateTrackBounce: true
                    });
                } catch (e) {
                }
            });

            var n = d.getElementsByTagName("script")[0],
                    s = d.createElement("script"),
                    f = function () {
                        n.parentNode.insertBefore(s, n);
                    };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else {
                f();
            }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/48237968" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- Yandex.Metrika counter -->



    <!-- Push Start -->
    <link rel="manifest" href="/manifest.json" />
    <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async="async"></script>
    <script>
        var OneSignal = window.OneSignal || [];
        OneSignal.push(function () {
            OneSignal.init({
                appId: "1c2fd03c-c0dd-4103-ab2f-a34f42d85054",
            });
        });
    </script>
    <!-- Push End -->


    <!--[if lt IE 9]>
    <div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img
                src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                height="42" width="820"
                alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div><![endif]-->
    <?php echo $google_analytics; ?>

           		<?php if($cookieconsent_status){ ?>
	           		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />
					<script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>
					<script>
					window.addEventListener("load", function(){
						window.cookieconsent.initialise(<?=$cookieconsent_setting?>)
					});
					</script>
           		<?php }?>			
		   
</head>
<body class="<?php echo $class; ?>">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T4MVDNW" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!-- swipe menu -->
<div class="swipe">
    <div class="swipe-menu">
        <ul>

            <li>
                <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i class="fa fa-user"></i>
                    <span><?php echo $text_account; ?></span></a>
            </li>
            <?php if ($logged) { ?>
            <li>
                <a href="<?php echo $order; ?>"><i class="fa fa-file-text-o"></i><?php echo $text_order; ?></a>
            </li>
            <li>
                <a href="<?php echo $transaction; ?>"><i class="fa fa-exchange"></i><?php echo $text_transaction; ?></a>
            </li>
            <li>
                <a href="<?php echo $download; ?>"><i class="fa fa-download"></i><?php echo $text_download; ?></a>
            </li>
            <li>
                <a href="<?php echo $logout; ?>"><i class="fa fa-unlock"></i><?php echo $text_logout; ?></a>
            </li>
            <?php } else { ?>
            <li>
                <a href="<?php echo $register; ?>"><i class="fa fa-user"></i> <?php echo $text_register; ?></a>
            </li>
            <li>
                <a href="<?php echo $login; ?>"><i class="fa fa-lock"></i><?php echo $text_login; ?></a>
            </li>
            <?php } ?>
            <li>
                <a href="<?php echo $wishlist; ?>" id="wishlist-total2" title="<?php echo $text_wishlist; ?>"><i
                        class="fa fa-heart"></i> <span><?php echo $text_wishlist; ?></span></a>
            </li>
            <li>
                <a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i
                        class="fa fa-shopping-cart"></i> <span><?php echo $text_shopping_cart; ?></span></a>
            </li>
            <li>
                <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i>
                    <span><?php echo $text_checkout; ?></span></a>
            </li>
        </ul>
        <?php if ($maintenance == 0){ ?>
        <ul class="foot">
            <?php if ($informations) { ?>
            <?php foreach ($informations as $information) { ?>
            <li>
                <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
            </li>
            <?php } ?>
            <?php } ?>
        </ul>
        <?php } ?>
        <ul class="foot foot-1">
            <li>
                <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
            </li>
            <li>
                <a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
            </li>
            <li>
                <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
            </li>
        </ul>

        <ul class="foot foot-2">
            <li>
                <a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a>
            </li>
            <li>
                <a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a>
            </li>
            <li>
                <a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a>
            </li>
            <li>
                <a href="<?php echo $special; ?>"><?php echo $text_special; ?></a>
            </li>
        </ul>
        <ul class="foot foot-3">
            <li>
                <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
            </li>
            <li>
                <a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a>
            </li>
        </ul>
    </div>
</div>
<div id="page">
    <div class="shadow"></div>
    <div class="toprow-1">
        <a class="swipe-control" href="#"><i class="fa fa-align-justify"></i></a>
    </div>

    <header class="header">
        <div class="container">
            <div class="box-right">
                <ul class="social-list">
                    <li>
                        <a class="fa fa-facebook" href="//www.facebook.com/"></a>
                    </li>
                    <li>
                        <a class="fa fa-twitter" href="//twitter.com/"></a>
                    </li>
                    <li>
                        <a class="fa fa-google-plus" href="//plus.google.com/"></a>
                    </li>
                    <li>
                        <a class="fa fa-youtube" href="//www.youtube.com/"></a>
                    </li>
                </ul>
                <?php echo $language; ?>
                <?php echo $currency; ?>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-3 col-xs-6">
                    <div id="logo" class="logo">
                        <?php if ($logo) { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                            alt="<?php echo $name; ?>" class="img-responsive"/></a>
                        <?php } else { ?>
                        <h1>
                            <a href="<?php echo $home; ?>"><?php echo $name; ?></a>
                        </h1>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-6">
                    <?php echo $search; ?>
                </div>

                <div class="col-sm-3">
                    <div class="phone hidden-xs">
                        <a href="<?php echo $contact; ?>"><i class="flaticon-phone370"></i></a>
                        <span><?php echo $telephone; ?></span>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="row">

                <div class="col-sm-3"></div>
                <div class="col-sm-9">
                    <nav id="top" class="top_panel">
                        <div id="top-links" class="nav">
                            <ul class="list-inline">
                                <li class="first">
                                    <a href="<?php echo $home; ?>"><i class="flaticon-home149"></i><span
                                            class="hidden-sm"><?php echo $text_home; ?></span></a>
                                </li>
                                <li>
                                    <a href="<?php echo $wishlist; ?>" id="wishlist-total"
                                       title="<?php echo $text_wishlist; ?>"><i
                                            class="flaticon-bookmark45"></i> <span
                                            class="hidden-sm"><?php echo $text_wishlist; ?></span></a>
                                </li>
                                <li class="dropdown">
                                    <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"
                                       class="dropdown-toggle" data-toggle="dropdown"><i
                                            class="flaticon-account4"></i>
                                        <span class="hidden-sm"><?php echo $text_account; ?></span> <span
                                                class="caret hidden-sm"></span></a>
                                    <ul class="dropdown-menu dropdown-menu-left">
                                        <?php if ($logged) { ?>
                                        <li>
                                            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $download; ?>"><?php echo $text_download; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                                        </li>
                                        <?php } else { ?>
                                        <li>
                                            <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </li>

                                <li>
                                    <a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>">
                                        <i class="flaticon-shopping232"></i> <span
                                            class="hidden-sm"><?php echo $text_shopping_cart; ?></span></a>
                                </li>
                                <li>
                                    <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i
                                            class="flaticon-check51"></i> <span
                                            class="hidden-sm"><?php echo $text_checkout; ?></span></a>
                                </li>
                            </ul>
                            <?php echo $cart; ?>
                        </div>
                    </nav>
                </div>
            </div>
        </div>


    </header>

    <?php if ($categories) { ?>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div id="menu-gadget" class="menu-gadget">
                    <div id="menu-icon"><?php echo $text_category; ?></div>
                    <?php if ($categories) {  echo $categories; } ?>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
