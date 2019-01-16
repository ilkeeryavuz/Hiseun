<script>
    function subscribe()
    {
        var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        var email = $('#txtemail').val();
        if (email != "")
        {
            if (!emailpattern.test(email))
            {
                alert("Hatalı Email Adresi");
                return false;
            } else
            {
                $.ajax({
                    url: 'index.php?route=module/newsletters/news',
                    type: 'post',
                    data: 'email=' + $('#txtemail').val(),
                    dataType: 'json',

                    success: function (json) {

                        alert(json.message);
                        window.location.reload();

                    }

                });
                return false;
            }
        } else
        {
            alert("Email Adresi Zorunludur");
            $(email).focus();
            return false;
        }
    }
</script>


<div class="box_html Markalar" style="background: #f2f2f2; padding: 42px 0 0 0;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 style="text-align: center;">Kampanyalarımızdan haberdar olabilirsiniz!</h2>
                <form action="" method="post">
                    <div id="search" class="search">
                        <input type="email" name="txtemail" id="txtemail" value="" placeholder="Kampanyalarımızdan haberdar olabilirsiniz!"  /> 
                        <button type="submit" class="button-search" onclick="return subscribe();">Kaydet</i></button><br>
                        <div class="clear"></div>
                    </div>
                </form>
                <p style="text-align: center; margin-top: 10px;">Bilgilerinizi güncellemek veya onayınızı geri almak için <strong><a href="mailto:info@hiseun.com" title="info@hiseun.com">info@hiseun.com</a></strong>'dan veya <strong><a href="tel:+902126722455" title="+902126722455">+90-212-672-24-55</a></strong> no'lu telefondan bize ulaşabilirsiniz.</p>
                <div class="footer-line" style="margin-top:29px; margin-bottom: 0px !important;"></div>
            </div>
        </div>
    </div>
</div>