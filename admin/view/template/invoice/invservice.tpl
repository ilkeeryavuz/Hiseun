<!DOCTYPE html>
<html dir="ltr" lang="tr">
    <head>
        <meta charset="UTF-8" />
    <title>Hizmet Faturası</title>
    <base href="https://www.hiseun.com/admin/" />
    <link href="https://www.hiseun.com/admin/view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="all" />
    <script type="text/javascript" src="https://www.hiseun.com/admin/view/javascript/jquery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://www.hiseun.com/admin/view/javascript/bootstrap/js/bootstrap.min.js"></script>
    <link href="https://www.hiseun.com/admin/view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link type="text/css" href="https://www.hiseun.com/admin/view/stylesheet/stylesheet.css" rel="stylesheet" media="all" />
</head>
<body style="font-size: 10px!important;">
<div class="container">
    <div style="page-break-after: always;">
        <div class="row">
            <div style="position: relative; min-height: 1px; padding-left: 15px; float: right;"> 
                <table style="border: 1px solid #000 !important; margin-top: 100px" class="table table-bordered">
                    <tbody style="border: 1px solid #000 !important;">
                        <tr style="border: 1px solid #000 !important;">
                            <td style="width: 40%; border: 1px solid #000 !important; "><b>Düzenleme Tarihi</b></td>
                            <td style="width: 60%; border: 1px solid #000 !important;">
                                <?php echo $_GET["entry_update_date"]; ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 40%; border: 1px solid #000 !important;"><b>Düzenleme Saati</b></td>

                            <td style="width: 60%; border: 1px solid #000 !important;">
                                <?php echo $_GET["entry_update_time"]; ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 40%; border: 1px solid #000 !important;"><b>Fiili Sevk Tarihi</b></td>

                            <td style="width: 60%; border: 1px solid #000 !important;">
                                <?php echo $_GET["entry_actual_date"]; ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <table style="border: 1px solid #000 !important; margin-bottom: 10px!important;" class="table table-bordered">
                <thead style="width: 40%; border: 1px solid #000 !important;">
                    <tr style="width: 40%; border: 1px solid #000 !important;">
                        <td style="width: 50%; background-color: #19caaf; color: #ffffff; border: 1px solid #000 !important;"><b>Teslimat Adresi</b></td>
                        <td style="width: 50%; background-color: #19caaf; color: #ffffff; border: 1px solid #000 !important;"><b>Fatura Adresi</b></td>
                    </tr>
                </thead>
                <tbody style="border: 1px solid #000 !important;">
                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important; height: 60px !important;">
                            <address style="margin-bottom: 0px!important; ">
                                <?php echo nl2br($_GET["entry_delivery_add"]); ?>
                            </address>
                        </td>
                        <td style="border: 1px solid #000 !important; height: 60px !important;">
                            <address style="margin-bottom: 0px!important; ">
                                <?php echo nl2br($_GET["entry_inv_add"]); ?>
                            </address>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="border: 1px solid #000 !important; margin-bottom: 10px!important;" class="table table-bordered">
                <thead style="border: 1px solid #000 !important;">
                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b>Ürün</b></td>
                        <td style=" border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b>Ürün Kodu</b></td>
                        <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b>Adet</b></td>
                        <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b>Birim Fiyatı</b></td>
                        <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b>Tutarı</b></td>
                    </tr>
                </thead>
                <tbody style="border: 1px solid #000 !important;">

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product1"]; ?></td>
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product_code1"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_piece1"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_unit_price1"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_price1"]; ?></td>
                    </tr>

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product2"]; ?></td>
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product_code2"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_piece2"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_unit_price2"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_price2"]; ?></td>
                    </tr>

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product3"]; ?></td>
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product_code3"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_piece3"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_unit_price3"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_price3"]; ?></td>
                    </tr>

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product4"]; ?></td>
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product_code4"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_piece4"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_unit_price4"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_price4"]; ?></td>
                    </tr>

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product5"]; ?></td>
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product_code5"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["adet5"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_unit_price5"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_price5"]; ?></td>
                    </tr>

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product6"]; ?></td>
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product_code6"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_piece6"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_unit_price6"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_price6"]; ?></td>
                    </tr>

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product7"]; ?></td>
                        <td style="border: 1px solid #000 !important;"><?php echo $_GET["entry_product_code7"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_piece7"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_unit_price7"]; ?></td>
                        <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $_GET["entry_price7"]; ?></td>
                    </tr>

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;" class="text-right" colspan="4"><b>Ara Toplam</b></td>
                        <td style="border: 1px solid #000 !important;" class="text-right">
                            <?php echo $_GET["entry_subtotal"]; ?>
                        </td>
                    </tr>
                    <?php if($_GET["entry_vat18"]){ ?>
                    <tr>
                        <td style="border: 1px solid #000 !important;" class="text-right" colspan="4"><b>KDV (%18)</b></td>
                        <td style="border: 1px solid #000 !important;" class="text-right">
                            <?php echo $_GET["entry_vat18"]; ?>
                        </td>
                    </tr>
                    <?php }?>
                    <?php if($_GET["entry_vat8"]){ ?>
                    <tr>
                        <td style="border: 1px solid #000 !important;" class="text-right" colspan="4"><b>KDV (%8)</b></td>
                        <td style="border: 1px solid #000 !important;" class="text-right">
                            <?php echo $_GET["entry_vat8"]; ?>
                        </td>
                    </tr>
                    <?php }?>
                    <tr>
                        <td style="border: 1px solid #000 !important;" class="text-right" colspan="4" >
                            <span style="float: left;"><b>Yazıyla :&nbsp;</b></span>
                            <span style="float: left;"><?php echo $_GET["entry_inv_text"]; ?></span>
                            <span style="float: right;"><b>Toplam</b></span>
                        </td>
                        <td style="border: 1px solid #000 !important;" class="text-right">
                            <?php echo $_GET["entry_total"]; ?>
                        </td>
                    </tr>
                </tbody>
            </table>

            <table style="border: 1px solid #000 !important; margin-bottom: 10px!important;" class="table table-bordered">
                <tbody style="border: 1px solid #000 !important;">
                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;">
                            - İş bu fatura muhteviyatı mal ve faturanın ibrazından itibaren 8 gün içinde itiraz edilmediği taktirde aynen kabul edilmiş sayılır.<br>
                            - İş bu belge ile birlikte 4077 sayılı kanun uyarınca garanti belgesi, tanıtma ve kullanma klavuzu teslim edilmiştir.<br>
                            - Satış yapılan internet sitesi : www.hiseun.com
                        </td>
                    </tr>
                </tbody>
            </table>

            <table style="border: 1px solid #000 !important; margin-bottom: 10px!important;" class="table table-bordered">
                <thead style="border: 1px solid #000 !important;">
                    <tr>
                        <td colspan="5" style="border: 1px solid #000 !important; text-align: center; background-color: #19caaf; color: #ffffff;"><b>İade Bölümü</b></td>
                    </tr>
                </thead>
                <tbody style="border: 1px solid #000 !important;">

                <thead style="border: 1px solid #000 !important;">
                    <tr style="border: 1px solid #000 !important;">
                        <td  colspan="5" style="border: 1px solid #000 !important; text-align: right; padding-right: 200px;"><b>Tarih:</b></td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 446px;"><b>Ürün</b></td>
                        <td style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 173px;"><b>Ürün Kodu</b></td>
                        <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 89px;"><b>Adet</b></td>
                        <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 183px"><b>Birim Fiyatı</b></td>
                        <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 158px;"><b>Tutarı</b></td>
                    </tr>
                </thead>
                <tbody style="border: 1px solid #000 !important;">
                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;">&nbsp;</td>
                        <td style="border: 1px solid #000 !important;">&nbsp;</td>
                        <td style="border: 1px solid #000 !important;" class="text-right">&nbsp;</td>
                        <td style="border: 1px solid #000 !important;" class="text-right">&nbsp;</td>
                        <td style="border: 1px solid #000 !important;" class="text-right">&nbsp;</td>
                    </tr>
                </tbody>
            </table>

            <table style="border: 1px solid #000 !important; margin-bottom: 10px!important;" class="table table-bordered">
                <tbody style="border: 1px solid #000 !important;">

                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important;"><b>*Ad Soyad : </b></td>
                        <td style="border: 1px solid #000 !important;"><b>*Telefon : </b></td>
                    </tr>
                    <tr style="border: 1px solid #000 !important;">
                        <td style="border: 1px solid #000 !important; height: 60px; vertical-align: top;"><b>*Adres : </b></td>
                        <td style="border: 1px solid #000 !important; height: 60px; vertical-align: top;"><b>*İmza : </b></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
