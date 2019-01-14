<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <h1><?php echo $heading_title; ?></h1>
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
                                    </span></div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-end"><?php echo $entry_update_time; ?></label>
                                <div class="input-group time">
                                    <input type="text" name="entry_update_time" value="" placeholder="<?php echo $entry_update_time; ?>" data-date-format="HH:mm" id="input-date-start" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span></div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-end"><?php echo $entry_actual_date; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="entry_actual_date" value="" placeholder="<?php echo $entry_actual_date; ?>" data-date-format="YYYY-MM-DD HH:mm:ss" id="input-date-end" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span></div>
                            </div> 

                        </div>  
                    </div>
                    <div class="row">
                        <div class="col-sm-6">  
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_delivery_add; ?></label>
                                <textarea name="entry_delivery_add" rows="5" placeholder="<?php echo $entry_delivery_add; ?>" id="input-entry-delivery-add" class="form-control"></textarea>    
                            </div>  
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_inv_add; ?></label>
                                <textarea name="entry_inv_add" rows="5" placeholder="<?php echo $entry_inv_add; ?>" id="input-entry-inv-add" class="form-control"></textarea>    
                            </div>
                        </div>
                    </div>
                    <div class="row" style="    border-top: 1px solid #e3e3e3; margin-bottom: 10px;"></div>
                    <?php for($i = 1; $i <= 8; $i++){ ?>  
                    <div class="row">
                        <div class="col-sm-6">  
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_product; ?></label>
                                <input type="text" name="entry_product<?php echo $i ?>" value="" placeholder="<?php echo $entry_product; ?>" id="input-subject" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_piece; ?></label>
                                <input type="text" name="entry_piece<?php echo $i ?>" value="" placeholder="<?php echo $entry_piece; ?>" id="input-subject" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_product_code; ?></label>
                                <input type="text" name="entry_product_code<?php echo $i ?>" value="" placeholder="<?php echo $entry_product_code; ?>" id="input-subject" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_unit_price; ?></label>
                                <input type="text" name="entry_unit_price<?php echo $i ?>" value="" placeholder="<?php echo $entry_unit_price; ?>" id="input-subject" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-12">  
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_price; ?></label>
                                <input type="text" name="entry_price<?php echo $i ?>" value="" placeholder="<?php echo $entry_price; ?>" id="input-subject" class="form-control">
                            </div>
                        </div> 
                    </div>
                    <div class="row" style="border-top: 1px solid #e3e3e3; margin-bottom: 10px;"></div>
                    <?php }?>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_subtotal; ?></label>
                                <input type="text" name="entry_subtotal" value="" placeholder="<?php echo $entry_subtotal; ?>" id="input-subject" class="form-control">
                            </div>  
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_vat18; ?></label>
                                <input type="text" name="entry_vat18" value="" placeholder="<?php echo $entry_vat18; ?>" id="input-subject" class="form-control">
                            </div>  
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label class="control-label" for="input-date-start"><?php echo $entry_vat8; ?></label>
                                <input type="text" name="entry_vat8" value="" placeholder="<?php echo $entry_vat8 ?>" id="input-subject" class="form-control">
                            </div>  
                        </div>
                        <div class="col-sm-3">
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
                            <button type="button" id="button-print" class="btn btn-primary pull-right"><i class="fa fa-print"></i> Yazdır</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('#button-print').on('click', function () {
            url = 'index.php?route=invoice/invservice&token=<?php echo $token; ?>';

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

            var entry_delivery_add = $('#input-entry-delivery-add').val();
            if (entry_delivery_add) {
                url += '&entry_delivery_add=' + encodeURIComponent(entry_delivery_add);
            }

            var entry_inv_add = $('#input-entry-inv-add').val();
            if (entry_delivery_add) {
                url += '&entry_inv_add=' + encodeURIComponent(entry_inv_add);
            }

            var entry_product1 = $('input[name=\'entry_product1\']').val();
            var entry_product2 = $('input[name=\'entry_product2\']').val();
            var entry_product3 = $('input[name=\'entry_product3\']').val();
            var entry_product4 = $('input[name=\'entry_product4\']').val();
            var entry_product5 = $('input[name=\'entry_product5\']').val();
            var entry_product6 = $('input[name=\'entry_product6\']').val();
            var entry_product7 = $('input[name=\'entry_product7\']').val();
            var entry_product8 = $('input[name=\'entry_product8\']').val();

            var entry_product_code1 = $('input[name=\'entry_product_code1\']').val();
            var entry_product_code2 = $('input[name=\'entry_product_code2\']').val();
            var entry_product_code3 = $('input[name=\'entry_product_code3\']').val();
            var entry_product_code4 = $('input[name=\'entry_product_code4\']').val();
            var entry_product_code5 = $('input[name=\'entry_product_code5\']').val();
            var entry_product_code6 = $('input[name=\'entry_product_code6\']').val();
            var entry_product_code7 = $('input[name=\'entry_product_code7\']').val();
            var entry_product_code8 = $('input[name=\'entry_product_code8\']').val();

            var entry_piece1 = $('input[name=\'entry_piece1\']').val();
            var entry_piece2 = $('input[name=\'entry_piece2\']').val();
            var entry_piece3 = $('input[name=\'entry_piece3\']').val();
            var entry_piece4 = $('input[name=\'entry_piece4\']').val();
            var entry_piece5 = $('input[name=\'entry_piece5\']').val();
            var entry_piece6 = $('input[name=\'entry_piece6\']').val();
            var entry_piece7 = $('input[name=\'entry_piece7\']').val();
            var entry_piece8 = $('input[name=\'entry_piece8\']').val();

            var entry_unit_price1 = $('input[name=\'entry_unit_price1\']').val();
            var entry_unit_price2 = $('input[name=\'entry_unit_price2\']').val();
            var entry_unit_price3 = $('input[name=\'entry_unit_price3\']').val();
            var entry_unit_price4 = $('input[name=\'entry_unit_price4\']').val();
            var entry_unit_price5 = $('input[name=\'entry_unit_price5\']').val();
            var entry_unit_price6 = $('input[name=\'entry_unit_price6\']').val();
            var entry_unit_price7 = $('input[name=\'entry_unit_price7\']').val();
            var entry_unit_price8 = $('input[name=\'entry_unit_price8\']').val();

            var entry_price1 = $('input[name=\'entry_price1\']').val();
            var entry_price2 = $('input[name=\'entry_price2\']').val();
            var entry_price3 = $('input[name=\'entry_price3\']').val();
            var entry_price4 = $('input[name=\'entry_price4\']').val();
            var entry_price5 = $('input[name=\'entry_price5\']').val();
            var entry_price6 = $('input[name=\'entry_price6\']').val();
            var entry_price7 = $('input[name=\'entry_price7\']').val();
            var entry_price8 = $('input[name=\'entry_price8\']').val();

            if (entry_product1 || entry_product2 || entry_product3 || entry_product4 || entry_product5 || entry_product6 || entry_product7 || entry_product8) {
                url += '&entry_product1=' + encodeURIComponent(entry_product1);
                url += '&entry_product2=' + encodeURIComponent(entry_product2);
                url += '&entry_product3=' + encodeURIComponent(entry_product3);
                url += '&entry_product4=' + encodeURIComponent(entry_product4);
                url += '&entry_product5=' + encodeURIComponent(entry_product5);
                url += '&entry_product6=' + encodeURIComponent(entry_product6);
                url += '&entry_product7=' + encodeURIComponent(entry_product7);
                url += '&entry_product8=' + encodeURIComponent(entry_product8);
            }

            if (entry_product_code1 || entry_product_code2 || entry_product_code3 || entry_product_code4 || entry_product_code5 || entry_product_code6 || entry_product_code7 || entry_product_code8) {
                url += '&entry_product_code1=' + encodeURIComponent(entry_product_code1);
                url += '&entry_product_code2=' + encodeURIComponent(entry_product_code2);
                url += '&entry_product_code3=' + encodeURIComponent(entry_product_code3);
                url += '&entry_product_code4=' + encodeURIComponent(entry_product_code4);
                url += '&entry_product_code5=' + encodeURIComponent(entry_product_code5);
                url += '&entry_product_code6=' + encodeURIComponent(entry_product_code6);
                url += '&entry_product_code7=' + encodeURIComponent(entry_product_code7);
                url += '&entry_product_code8=' + encodeURIComponent(entry_product_code8);
            }

            if (entry_piece1 || entry_piece2 || entry_piece3 || entry_piece4 || entry_piece5 || entry_piece6 || entry_piece7 || entry_piece8) {
                url += '&entry_piece1=' + encodeURIComponent(entry_piece1);
                url += '&entry_piece2=' + encodeURIComponent(entry_piece2);
                url += '&entry_piece3=' + encodeURIComponent(entry_piece3);
                url += '&entry_piece4=' + encodeURIComponent(entry_piece4);
                url += '&entry_piece5=' + encodeURIComponent(entry_piece5);
                url += '&entry_piece6=' + encodeURIComponent(entry_piece6);
                url += '&entry_piece7=' + encodeURIComponent(entry_piece7);
                url += '&entry_piece8=' + encodeURIComponent(entry_piece8);
            }

            if (entry_unit_price1 || entry_unit_price2 || entry_unit_price3 || entry_unit_price4 || entry_unit_price5 || entry_unit_price6 || entry_unit_price7 || entry_unit_price8) {
                url += '&entry_unit_price1=' + encodeURIComponent(entry_unit_price1);
                url += '&entry_unit_price2=' + encodeURIComponent(entry_unit_price2);
                url += '&entry_unit_price3=' + encodeURIComponent(entry_unit_price3);
                url += '&entry_unit_price4=' + encodeURIComponent(entry_unit_price4);
                url += '&entry_unit_price5=' + encodeURIComponent(entry_unit_price5);
                url += '&entry_unit_price6=' + encodeURIComponent(entry_unit_price6);
                url += '&entry_unit_price7=' + encodeURIComponent(entry_unit_price7);
                url += '&entry_unit_price8=' + encodeURIComponent(entry_unit_price8);
            }

            if (entry_price1 || entry_price2 || entry_price3 || entry_price4 || entry_price5 || entry_price6 || entry_price7 || entry_price8) {
                url += '&entry_price1=' + encodeURIComponent(entry_price1);
                url += '&entry_price2=' + encodeURIComponent(entry_price2);
                url += '&entry_price3=' + encodeURIComponent(entry_price3);
                url += '&entry_price4=' + encodeURIComponent(entry_price4);
                url += '&entry_price5=' + encodeURIComponent(entry_price5);
                url += '&entry_price6=' + encodeURIComponent(entry_price6);
                url += '&entry_price7=' + encodeURIComponent(entry_price7);
                url += '&entry_price8=' + encodeURIComponent(entry_price8);
            }

            var entry_subtotal = $('input[name=\'entry_subtotal\']').val();
            if (entry_subtotal) {
                url += '&entry_subtotal=' + encodeURIComponent(entry_subtotal);
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
    </script></div>
<?php echo $footer; ?>