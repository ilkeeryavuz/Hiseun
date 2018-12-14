<!DOCTYPE html>
<html dir="ltr" lang="tr">
<head>
<meta charset="UTF-8" />
<title>Bilet & Otel Faturası</title>
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
      <table style="border: 1px solid #000 !important; margin-top: 144px" class="table table-bordered">
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
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <thead style="width: 40%; border: 1px solid #000 !important;">
        <tr style="width: 40%; border: 1px solid #000 !important;">
          <td style="width: 100%; background-color: #19caaf; color: #ffffff; border: 1px solid #000 !important;"><b>Müşteri Adresi</b></td>
          
        </tr>
      </thead>
      <tbody style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
          <td style="border: 1px solid #000 !important; height: 150px !important;">
              <address>
                  <?php echo nl2br($_GET["entry_delivery_add"]); ?>
              </address>
          </td>
        </tr>
      </tbody>
    </table>
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <thead style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
            <td style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff; width:80%;"  colspan="2"><b>Açıklama</b></td>
          <td class="text-right" style="border: 1px solid #000 !important; background-color: #19caaf; color: #ffffff;"><b>Tutarı</b></td>
        </tr>
      </thead>
      <tbody>
        
        <tr>
          <td style="border: 1px solid #000 !important;  height: 350px; min-height: 280px; vertical-align: top;" colspan="2">
              <div style="vertical-align: top;">
              <?php echo nl2br($_GET["entry_product"]); ?>
              </div>
              <div id="entry_desc" style="/*margin-top:530px;*/">
                  <?php echo nl2br($_GET["entry_desc"]); ?>
              </div>
              </td>
          <td style="border: 1px solid #000 !important; vertical-align: top;" class="text-right">
              <?php echo $_GET["entry_price"]; ?>
          </td>
        </tr>
        <?php if($_GET["entry_fieldtax"]){ ?>
        <tr>
          <td style="border: 1px solid #000 !important;" class="text-right" colspan="2"><b>Alan Vergisi</b></td>
          <td style="border: 1px solid #000 !important;" class="text-right">
              <?php echo $_GET["entry_fieldtax"]; ?>
          </td>
        </tr>
        <?php }?>
        <?php if($_GET["entry_fee"]){ ?>
        <tr>
          <td style="border: 1px solid #000 !important;" class="text-right" colspan="2"><b>Servis Hizmeti</b></td>
          <td style="border: 1px solid #000 !important;" class="text-right">
              <?php echo $_GET["entry_fee"]; ?>
          </td>
        </tr>
        <?php }?>
        <?php if($_GET["entry_vat18"]){ ?>
        <tr>
            <td style="border: 1px solid #000 !important;" class="text-right" colspan="2"><b>KDV (%18)</b></td>
            <td style="border: 1px solid #000 !important;" class="text-right">
                <?php echo $_GET["entry_vat18"]; ?>
            </td>
        </tr>
        <?php }?>
        <?php if($_GET["entry_vat8"]){ ?>
        <tr>
            <td style="border: 1px solid #000 !important;" class="text-right" colspan="2"><b>KDV (%8)</b></td>
            <td style="border: 1px solid #000 !important;" class="text-right">
                <?php echo $_GET["entry_vat8"]; ?>
            </td>
        </tr>
        <?php }?>
        <tr>
            <td style="border: 1px solid #000 !important;" class="text-right" colspan="2"><b>Toplam</b></td>
            <td style="border: 1px solid #000 !important;" class="text-right">
                <?php echo $_GET["entry_total"]; ?>
            </td>
        </tr>
        <tr>
            <td style="border: 1px solid #000 !important;" class="text-right" colspan="3">
                <span style="float: left;"><b>Yazıyla :&nbsp;</b></span>
                <span style="float: left;"><?php echo $_GET["entry_inv_text"]; ?></span>
            </td>
        </tr>
      </tbody>
    </table>
      </div>
      <!--<div class="row">
    <table style="border: 1px solid #000 !important;" class="table table-bordered">
      <tbody style="border: 1px solid #000 !important;">
        <tr style="border: 1px solid #000 !important;">
            <td style="border: 1px solid #000 !important;">
                - Bu belgenin sevk edilen malla birlikte bulunması halinde ayrıca sevk irsaliyesi aranmaz. İrsaliye yerine geçer.<br>
            </td>
        </tr>
      </tbody>
    </table>
      </div>-->
  </div>
</div>
</body>
</html>
