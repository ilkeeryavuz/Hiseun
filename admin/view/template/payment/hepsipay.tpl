<script src="catalog/view/javascript/jquery/jquery.validate.min.js" type="text/javascript"></script>

<h2><?php echo $text_instruction; ?></h2>
<p><b><?php echo $text_description; ?></b></p>
<div class="well well-sm">
    <p><?php echo $text_payment; ?></p>
</div>
<style>
    .installment_table {
        width: 100%;
        border-collapse: collapse;
    }

    .installment_table tr:hover {
        background: #eee;
    }

    .installment_table td {
        border: 1px solid #eee;
        padding: 1px 20px;
    }

    .highlight_row {
        background: #eee;
    }

    #alertError {
        display: none;
    }


</style>

<div class="panel-body">
    <form action="" method="post" enctype="multipart/form-data" id="form-hepsipay"
          class="form-horizontal">

        <div class="form-group">
            <label class="col-sm-2 control-label" for="cardHolderName"><?php echo $entry_card_holder_name; ?></label>
            <div class="col-sm-10">
                <input type="text" name="cardHolderName" value="" placeholder="<?php echo 'Ad Soyad'; ?>"
                       id="cardHolderName" class="form-control" maxlength="40"/>
            </div>
        </div>
        <div class="required form-group">
            <label class="col-sm-2 control-label" for="cardNumber"><?php echo $entry_card_number; ?></label>
            <div class="col-sm-10">
                <input type="text" name="cardNumber" value=""
                       placeholder="<?php echo $entry_card_number; ?>" id="cardNumber" class="form-control"
                       maxlength="16"
                       minlength="16"/>
            </div>
        </div>

        <div class="required form-group">
            <label class="col-sm-2 control-label" for="expireDate"><?php echo $entry_card_EUD; ?></label>
            <div class="row">
                <div class="col-sm-2">
                    <select class="form-control" name="expireMonth" id="expireMonth">
                        <option value=""><?php echo 'Ay'; ?></option>
                        <option value="<?php echo '01'; ?>"><?php echo 'Ocak'; ?></option>
                        <option value="<?php echo '02'; ?>"><?php echo 'Şubat'; ?></option>
                        <option value="<?php echo '03'; ?>"><?php echo 'Mart'; ?></option>
                        <option value="<?php echo '04'; ?>"><?php echo 'Nisan'; ?></option>
                        <option value="<?php echo '05'; ?>"><?php echo 'Mayıs'; ?></option>
                        <option value="<?php echo '06'; ?>"><?php echo 'Haziran'; ?></option>
                        <option value="<?php echo '07'; ?>"><?php echo 'Temmuz'; ?></option>
                        <option value="<?php echo '08'; ?>"><?php echo 'Ağustos'; ?></option>
                        <option value="<?php echo '09'; ?>"><?php echo 'Eylül'; ?></option>
                        <option value="<?php echo '10'; ?>"><?php echo 'Ekim'; ?></option>
                        <option value="<?php echo '11'; ?>"><?php echo 'Kasım'; ?></option>
                        <option value="<?php echo '12'; ?>"><?php echo 'Aralık'; ?></option>

                    </select>

                </div>
                <div class="col-sm-2">
                    <select class="form-control" name="expireYear" id="expireYear">
                        <option value=""><?php echo 'Yıl'; ?></option>
                        <option value="<?php echo '16'; ?>"><?php echo '16'; ?></option>
                        <option value="<?php echo '17'; ?>"><?php echo '17'; ?></option>
                        <option value="<?php echo '18'; ?>"><?php echo '18'; ?></option>
                        <option value="<?php echo '19'; ?>"><?php echo '19'; ?></option>
                        <option value="<?php echo '20'; ?>"><?php echo '20'; ?></option>
                        <option value="<?php echo '21'; ?>"><?php echo '21'; ?></option>
                        <option value="<?php echo '22'; ?>"><?php echo '22'; ?></option>
                        <option value="<?php echo '23'; ?>"><?php echo '23'; ?></option>
                        <option value="<?php echo '24'; ?>"><?php echo '24'; ?></option>
                        <option value="<?php echo '25'; ?>"><?php echo '25'; ?></option>
                        <option value="<?php echo '26'; ?>"><?php echo '26'; ?></option>
                        <option value="<?php echo '27'; ?>"><?php echo '27'; ?></option>
                        <option value="<?php echo '28'; ?>"><?php echo '28'; ?></option>
                        <option value="<?php echo '29'; ?>"><?php echo '29'; ?></option>
                        <option value="<?php echo '30'; ?>"><?php echo '29'; ?></option>
                    </select>
                </div>

            </div>
        </div>

        <div class="required form-group">
            <label class="col-sm-2 control-label" for="securityCode"><?php echo $entry_card_cvv; ?></label>
            <div class="col-sm-10">
                <input type="text" name="securityCode" value=""
                       placeholder="<?php echo $entry_card_cvv; ?>" id="securityCode"
                       class="is_required validate form-control"
                       maxlength="3" data-validate="isNumber"/>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="1" name="threeDsecure"
                               id="threeDsecure"> <?php echo $entry_3DSecure; ?>
                    </label>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">

                <div id="alertError" class="alert alert-danger">
                    <strong>Hata:</strong> <span></span>
                </div>


                <table class="installment_table">
                    <thead>
                    <tr>
                        <th data-field="state" data-radio="true">Seçim</th>
                        <th data-field="id" data-align="right">Taksit</th>
                        <?php if($isBasketUpdate){ ?>
                        <th data-field="name" data-align="center">Komisyon</th>
                        <th data-field="price" data-align="left">Toplam</th>
                        <?php }?>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="return_message"></div>
        <input id="firstAmount" type="hidden" name="installmentAmount" value="">
    </form>
</div>

<div class="buttons">
    <div class="pull-right">
        <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary"
               data-loading-text="<?php echo $text_loading; ?>"/>
    </div>
</div>

<script>var isBasketUpdate = "<?php echo $isBasketUpdate;?>";</script>

<script type="text/javascript">

    $.fn.serializeObject = function () {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function () {
            if (o[this.name] !== undefined) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    $('#button-confirm').on('click', function () {

        var form = $("#form-hepsipay");
        var validator = form.validate({
            rules: {
                cardNumber: {
                    required: true,
                    number: true
                },
                expireMonth: {
                    required: true
                },
                expireYear: {
                    required: true
                },
                securityCode: {
                    required: true,
                    number: true
                },
                installment: {
                    required: true
                }
            }
        });

        if (form.valid()) {

            var request = $("#form-hepsipay").serializeObject();
            $.ajax({
                type: 'post',
                url: 'index.php?route=payment/hepsipay/confirm',
                cache: false,
                data: request,
                beforeSend: function () {
                    $('#button-confirm').button('loading');
                },
                complete: function () {
                    $('#button-confirm').button('reset');
                },
                success: function (response) {
                    if ($("#threeDsecure").prop("checked")) {
                        $("body").html(response);
                    }
                    else {
                        var resp = JSON.parse(response);
                        if ((typeof resp.Success !== 'undefined') && resp.Success == true) {
                            location = '<?php echo $continue; ?>';
                        }
                        else {
                            var messageCode = resp.MessageCode;
                            var message = resp.Message;
                            var userMessage = resp.UserMessage;
                            $("#alertError span").text(userMessage + "," + message + " hata kodu:" + messageCode);
                            $("#alertError").show();
                        }
                    }
                }
            });
        }

        else {
            $("#alertError span").text("Taksit seçeneği seçiniz.");
            $("#alertError").show();
        }


    });

    $('#cardNumber').on('input', function (a) {

        if ($(this).val().length > 5) {

            var binNumber = $(this).val().substring(0, 6);
            var form = new FormData();
            form.append("BinNumber", binNumber);

            var settings = {
                "async": true,
                "crossDomain": true,
                "url": "index.php?route=payment/installment",
                "method": "POST",
                "headers": {
                    "cache-control": "no-cache",
                    "postman-token": "93b88f9f-7c28-6ff4-e9df-8c252a06b8e0"
                },
                "processData": false,
                "contentType": false,
                "mimeType": "multipart/form-data",
                "data": form
            }

            $.ajax(settings).done(function (response) {
                var body = JSON.parse(response);
                if (Array.isArray(body.InstallmentDtos)) {
                    $.showInstallment(body.InstallmentDtos);
                }
            });


        }

        if ($(this).val().length < 6) {
            $("table.installment_table tbody").html("");
        }
    });

    $.showInstallment = function (data) {
        if (!isBasketUpdate)
            $("#firstAmount").val(data[0].Amount);

        var tableBody = "";
        if ((Array.isArray(data)) && data.length > 0) {

            for (var i = 0; i < data.length; i++) {

                var amount = parseFloat(Math.round((data[i].CalculatedAmount / 100) * 100) / 100).toFixed(2) + " TL";
                var noCurrenceyAmount = data[i].CalculatedAmount;
                var installment = data[i].Installment;
                var installmentTxt = installment == 1 ? "Peşin" : installment;
                var commissionRate = data[i].Commission + " TL";

                var item_html = '';

                if (isBasketUpdate) {
                    item_html += '<tr data-amount="' + amount + '" data-amount-nocurrency="' + noCurrenceyAmount + '">' +
                            '<td><input type="radio" name="installment" value="' + installment + '"></td>' +
                            '<td>' + installmentTxt + '</td>' +
                            '<td>' + commissionRate + '</td>' +
                            '<td>' + amount + '</td>' +
                            '</tr>';
                }
                else {
                    item_html += '<tr data-amount="' + amount + '" data-amount-nocurrency="' + noCurrenceyAmount + '">' +
                            '<td><input type="radio" name="installment" value="' + installment + '"></td>' +
                            '<td>' + installmentTxt + '</td>' +
                            '</tr>';
                }
                tableBody += item_html;
            }

            $("table.installment_table tbody").html("").append(tableBody);

            $.defineInstallmentTable();

        }
        else {

        }

    };

    $.defineInstallmentTable = function () {

        $('.installment_table tr').click(function (event) {
            if (event.target.type !== 'radio') {
                $(':radio', this).trigger('click');
            }
            $(".installment_table tr").not($(this)).removeClass("highlight_row");
            var total_amout = $(this).attr("data-amount");
            var noCurrency = $(this).attr("data-amount-nocurrency");

            if (isBasketUpdate) {
                $("#firstAmount").val(noCurrency);
            }
        });

        $(".installment_table tr input[type='radio']").change(function (e) {

            if ($(this).is(":checked")) {
                $(this).closest('tr').addClass("highlight_row");
            } else {
                $(this).closest('tr').removeClass("highlight_row");
            }

        });

        // choose first installment
        $('.installment_table tr input').eq(0).trigger("click");

    }


</script>
