<table class="table table-striped table-bordered">
    <tr>
        <td><?php echo $text_payment_cancel; ?></td>
        <td>
            <button class="button btn btn-primary"
            <?php if(count($request_type)>0){ echo " disabled='disable'";} ?>
            id="btn_cancel"><?php echo $text_order_cancel;?></button>
        </td>
    </tr>
    <tr class="order_can_cancel_tr">
        <td><?php echo $text_items; ?></td>
        <td>
            <table class="table table-striped table-bordered">
                <thead>
                <tr>
                    <td class="text-left"><strong><?php echo $text_item_name; ?></strong></td>
                    <td class="text-left"><strong><?php echo $text_paid_price; ?></strong></td>
                    <td class="text-left"><strong><?php echo $count_item; ?></strong></td>
                </tr>
                </thead>
                <tbody>

                <?php foreach($items as $item){ ?>
                <tr>
                    <td class="text-left"><?php echo $item->description; ?></td>
                    <td class="text-left"><?php $decimail_price= ($item->amount/100); echo $decimail_price." ".$currency;?></td>
                    <td class="text-left"><?php echo $item->count; ?></td>
                </tr>
                <?php } ?>
                </tbody>
            </table>
        </td>

    </tr>

    <tr>
        <td><?php echo $text_transactions; ?></td>
        <td>
            <table class="table table-striped table-bordered">
                <thead>
                <tr>
                    <td class="text-left"><strong><?php echo $text_transaction_id; ?></strong></td>
                    <td class="text-left"><strong><?php echo $text_date_added; ?></strong></td>
                    <td class="text-left"><strong><?php echo $text_type; ?></strong></td>
                    <td class="text-left"><strong><?php echo $text_installment; ?></strong></td>
                    <td class="text-left"><strong><?php echo $text_paid_price; ?></strong></td>
                    <td class="text-left"><strong><?php echo $text_status; ?></strong></td>
                </tr>
                </thead>
                <tbody>

                <?php foreach($transactions as $transaction){ ?>
                <tr>
                    <td class="text-left"> <?php echo $transaction["process_transaction_id"]; ?></td>
                    <td class="text-left"> <?php echo $transaction["date_created"]; ?></td>
                    <td class="text-left"> <?php echo $transaction["request_type"]; ?></td>
                    <td class="text-left"> <?php echo $transaction["installment"]; ?></td>
                    <td class="text-left"> <?php $decimail_price= ($transaction["paid_price"]/100); echo $decimail_price." ".$currency; ?>
                        <i><?php if($transaction["request_type"]=="cancel payment") echo " Cancelled"; ?></i>
                    </td>
                    <td class="text-left"> <?php echo $transaction["transaction_status"]; ?></td>
                </tr>
                <?php } ?>

                </tbody>
            </table>
        </td>
    </tr>

</table>
<script type="text/javascript">
    $("#btn_cancel").click(function () {
        if (confirm('<?php echo $text_are_you_sure_cancel_payment; ?>')) {
            var settings = {
                "method": "GET",
                "url": "index.php?route=payment/hepsipay/orderCancel&token=<?php echo $token;?>&order_id=<?php echo $orderId;?>"
            };
            $.ajax(settings).done(function (rsp) {
                var response = JSON.parse(rsp);
                if (response.Success == true) {
                    alert("<?php echo $cancel_done_success;?>");
                    location.reload();
                }
            });
        }
    });


</script>