<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<link href="view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="all" />
<script type="text/javascript" src="view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>
<link href="view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" media="all" />
</head>
<body>
<div class="container">
  <?php foreach ($orders as $order) { ?>
  <div style="page-break-after: always;">
    <div class="row" style="height: 370px;">
        asdasdasdadsa
      <!--<div class="col-sm-6 col-md-8" style="float: left;">
          
        <address>
        <strong><?php echo $order['store_name']; ?></strong><br />
        <?php echo $order['store_address']; ?>
        </address>
        <b><?php echo $text_telephone; ?></b> <?php echo $order['store_telephone']; ?><br />
        <?php if ($order['store_fax']) { ?>
        <b><?php echo $text_fax; ?></b> <?php echo $order['store_fax']; ?><br />
        <?php } ?>
        <b><?php echo $text_email; ?></b> <?php echo $order['store_email']; ?><br />
        <b><?php echo $text_website; ?></b> <?php echo $order['store_url']; ?><br />
        <br />
      </div>-->
      <div class="col-sm-6 col-md-4" style="float: right;">
          
          <!--<img src="view/image/hiseun.png" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" style="margin-left: 60px;" />--><br />   
      <table style="border: 1px solid #000 !important; margin-top: 144px" class="table table-bordered">
        <tbody style="border: 1px solid #000 !important;">
            <tr style="border: 1px solid #000 !important;">
            <td style="width: 40%; border: 1px solid #000 !important; "><b>Düzenleme Tarihi</b></td>
            <td style="width: 60%; border: 1px solid #000 !important;">
                <?php 
                 
                $timeInFuture = time() + (60 * 60 * 24); 
                echo date('d.m.Y', $timeInFuture);
                
                /*echo $order['date_added'];*/
                
                ?>
            </td>
          </tr>
          
            <tr>
            <td style="width: 40%; border: 1px solid #000 !important;"><b>Düzenleme Saati</b></td>
            
            <td style="width: 60%; border: 1px solid #000 !important;">
                <?php 
                 
                $timeInFuture = time() + (60 * 60 * 24); 
                echo date('H:i:s', $timeInFuture);
                
                /*echo $order['date_added'];*/
                
                ?>
            </td>
          </tr>
            <tr>
            <td style="width: 40%; border: 1px solid #000 !important;"><b>Fiili Sevk Tarihi</b></td>
            
            <td style="width: 60%; border: 1px solid #000 !important;">
                <?php 
                $timeInFuture = time() + (60 * 60 * 24); 
                echo date('d.m.Y', $timeInFuture);
                ?>
            </td>
          </tr>
          
          
        </tbody>
      </table>
      </div>
    </div>
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <thead style="width: 40%; border: 1px solid #000 !important;">
        <tr style="width: 40%; border: 1px solid #000 !important;">
          <td style="width: 50%; background-color: #19caaf; color: #ffffff; border: 1px solid #000 !important;"><b><?php echo $text_ship_to; ?></b></td>
          <td style="width: 50%; background-color: #19caaf; color: #ffffff; border: 1px solid #000 !important;"><b><?php echo $text_to; ?></b></td>
        </tr>
      </thead>
      <tbody style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important;"><address>
            Sayın <?php echo $order['shipping_address']; ?>
            </address></td>
          <td style="border: 1px solid #000 !important;"><address>
            Sayın <?php echo $order['payment_address']; ?>
            </address></td>
        </tr>
      </tbody>
    </table>
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <thead style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b><?php echo $column_product; ?></b></td>
          <td style=" border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b><?php echo $column_model; ?></b></td>
          <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b><?php echo $column_quantity; ?></b></td>
          <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b><?php echo $column_price; ?></b></td>
          <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b><?php echo $column_total; ?></b></td>
        </tr>
      </thead>
      <tbody style="border: 1px solid #000 !important;">
        <?php foreach ($order['product'] as $product) { ?>
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important;"><?php echo $product['name']; ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
            <?php } ?></td>
          <td style="border: 1px solid #000 !important;"><?php echo $product['model']; ?></td>
          <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $product['quantity']; ?></td>
          <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $product['price']; ?></td>
          <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $product['total']; ?></td>
        </tr>
        <?php } ?>
        <?php foreach ($order['voucher'] as $voucher) { ?>
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important;"><?php echo $voucher['description']; ?></td>
          <td style="border: 1px solid #000 !important;"></td>
          <td style="border: 1px solid #000 !important;" class="text-right">1</td>
          <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $voucher['amount']; ?></td>
          <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $voucher['amount']; ?></td>
        </tr>
        <?php } ?>
        <?php foreach ($order['total'] as $total) { ?>
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important;" class="text-right" colspan="4"><b><?php echo $total['title']; ?></b></td>
          <td style="border: 1px solid #000 !important;" class="text-right"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
    <?php if ($order['comment']) { ?>
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <thead style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important;"><b><?php echo $text_comment; ?></b></td>
        </tr>
      </thead>
      <tbody style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important;"><?php echo $order['comment']; ?></td>
        </tr>
      </tbody>
    </table>
    <?php } ?>
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <tbody style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
            <td style="border: 1px solid #000 !important;">
                - İş bu fatura muhteviyatı mal ve faturanın ibrazından itibaren 8 gün içinde itiraz edilmediği taktirde aynen kabul edilmiş sayılır.<br>
                - İş bu belge ile birlikte 4077 sayılı kanun uyarınca garanti belgesi, tanıtma ve kullanma klavuzu teslim edilmiştir.<br>
                - Bu belgenin sevk edilen malla birlikte bulunması halinde ayrıca sevk irsaliyesi aranmaz. İrsaliye yerine geçer.<br>
                - Satış yapılan internet sitesi : www.hiseun.com
            </td>
        </tr>
      </tbody>
    </table>
    
    
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
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
          <td style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 446px;"><b><?php echo $column_product; ?></b></td>
          <td style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 173px;"><b><?php echo $column_model; ?></b></td>
          <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 89px;"><b><?php echo $column_quantity; ?></b></td>
          <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 183px"><b><?php echo $column_price; ?></b></td>
          <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width: 158px;"><b><?php echo $column_total; ?></b></td>
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
    
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <tbody style="border: 1px solid #000 !important;">
        
        <tr style="border: 1px solid #000 !important;">
            <td style="border: 1px solid #000 !important;"><b>*Ad Soyad : </b></td>
            <td style="border: 1px solid #000 !important;"><b>*Telefon : </b></td>
        </tr>
        <tr style="border: 1px solid #000 !important;">
            <td style="border: 1px solid #000 !important; height: 150px; vertical-align: top;"><b>*Adres : </b></td>
            <td style="border: 1px solid #000 !important; height: 150px; vertical-align: top;"><b>*İmza : </b></td>
        </tr>
      </tbody>
    </table>
  </div>
  <?php } ?>
</div>
</body>
</html>
