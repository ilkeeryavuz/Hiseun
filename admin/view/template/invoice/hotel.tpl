<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-bar-chart"></i> <?php echo $text_list; ?></h3>
            </div>
            <div class="panel-body">
                <div class="well">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_update_date; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="entry_update_date" value="" placeholder="<?php echo $entry_update_date; ?>" data-date-format="YYYY-MM-DD" id="input-date-start" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-end"><?php echo $entry_update_time; ?></label>
                                <div class="input-group time">
                                    <input type="text" name="entry_update_time" value="" placeholder="<?php echo $entry_update_time; ?>" data-date-format="HH:mm" id="input-date-start" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-end"><?php echo $entry_actual_date; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="entry_actual_date" value="" placeholder="<?php echo $entry_actual_date; ?>" data-date-format="YYYY-MM-DD HH:mm:ss" id="input-date-end" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_delivery_add; ?></label>
                                <textarea name="entry_delivery_add" rows="5" placeholder="<?php echo $entry_delivery_add; ?>" id="input-delivery-add" class="form-control"></textarea>    
                            </div>
                        </div>
                    </div>
                    <div class="row" style="    border-top: 1px solid #e3e3e3; margin-bottom: 10px;"></div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_product; ?></label>
                                <textarea name="entry_product" rows="22" placeholder="<?php echo $entry_product; ?>" id="input-product" class="form-control"></textarea>      
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_desc; ?></label>
                                <textarea name="entry_desc" rows="22" placeholder="<?php echo $entry_desc; ?>" id="input-desc" class="form-control"></textarea>      
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_price; ?></label>
                                <input type="text" name="entry_price" value="" placeholder="<?php echo $entry_price; ?>" id="input-subject" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_vat18; ?></label>
                                <input type="text" name="entry_vat18" value="" placeholder="<?php echo $entry_vat18; ?>" id="input-subject" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_fieldtax; ?></label>
                                <input type="text" name="entry_fieldtax" value="" placeholder="<?php echo $entry_fieldtax; ?>" id="input-subject" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_vat8; ?></label>
                                <input type="text" name="entry_vat8" value="" placeholder="<?php echo $entry_vat8 ?>" id="input-subject" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_fee; ?></label>
                                <input type="text" name="entry_fee" value="" placeholder="<?php echo $entry_fee; ?>" id="input-subject" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_total; ?></label>
                                <input type="text" name="entry_total" value="" placeholder="<?php echo $entry_total ?>" id="input-subject" class="form-control">
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_inv_text; ?></label>
                                <input type="text" name="entry_inv_text" value="" placeholder="<?php echo $entry_inv_text; ?>" id="input-subject" class="form-control">
                            </div>
                        </div>

                    </div>
                    <div class="row" style="border-top: 1px solid #e3e3e3; margin-bottom: 10px;"></div>
                    <div class="row">
                        <div class="col-sm-6" style="width: 40%; float: right;">
                            <button type="button" id="button-print" class="btn btn-primary pull-right"><i class="fa fa-print"></i> Yazdır</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('#button-print').on('click', function () {
            url = 'index.php?route=invoice/invhotel&token=<?php echo $token; ?>';
            var entry_update_date = $('input[name=\'entry_update_date\']').val();
            if (entry_update_date) {
                url += '&entry_update_date=' + encodeURIComponent(entry_update_date);
            }
            var entry_update_time = $('input[name=\'entry_update_time\']').val();
            if (entry_update_time) {
                url += '&entry_update_time=' + encodeURIComponent(entry_update_time);
            }
            var entry_actual_date = $('input[name=\'entry_actual_date\']').val();
            if (entry_actual_date) {
                url += '&entry_actual_date=' + encodeURIComponent(entry_actual_date);
            }
            var entry_delivery_add = $('#input-delivery-add').val();
            if (entry_delivery_add) {
                url += '&entry_delivery_add=' + encodeURIComponent(entry_delivery_add);
            }
            var entry_product = $('#input-product').val();
            if (entry_product) {
                url += '&entry_product=' + encodeURIComponent(entry_product);
            }
            var entry_desc = $('#input-desc').val();
            if (entry_desc) {

                url += '&entry_desc=' + encodeURIComponent(entry_desc);
            }
            var entry_price = $('input[name=\'entry_price\']').val();
            if (entry_price) {
                url += '&entry_price=' + encodeURIComponent(entry_price);
            }
            var entry_fieldtax = $('input[name=\'entry_fieldtax\']').val();
            if (entry_fieldtax) {
                url += '&entry_fieldtax=' + encodeURIComponent(entry_fieldtax);
            }
            var entry_fee = $('input[name=\'entry_fee\']').val();
            if (entry_fee) {
                url += '&entry_fee=' + encodeURIComponent(entry_fee);
            }
            var entry_vat18 = $('input[name=\'entry_vat18\']').val();
            if (entry_vat18) {
                url += '&entry_vat18=' + encodeURIComponent(entry_vat18);
            }
            var entry_vat8 = $('input[name=\'entry_vat8\']').val();
            if (entry_vat8) {
                url += '&entry_vat8=' + encodeURIComponent(entry_vat8);
            }
            var entry_total = $('input[name=\'entry_total\']').val();
            if (entry_total) {
                url += '&entry_total=' + encodeURIComponent(entry_total);
            }
            var entry_inv_text = $('input[name=\'entry_inv_text\']').val();
            if (entry_inv_text) {
                url += '&entry_inv_text=' + encodeURIComponent(entry_inv_text);
            }

            window.open('https://www.hiseun.com/admin/' + url, '_blank');
            //location = url;

        });
    </script>
    <script type="text/javascript">
        $('.date').datetimepicker({
            pickTime: false
        });
        $('.time').datetimepicker({
            pickDate: false,
            timeFormat: 'HH:mm',
            timeOnly: true
        });
    </script>
</div>
<?php echo $footer; ?>