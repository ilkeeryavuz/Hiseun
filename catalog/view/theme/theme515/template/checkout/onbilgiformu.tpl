<?php 
if (!isset($redirect)) { 
?>
<div>

	<div>
	  <div align="left">
		27 Kasım 2014 Perşembe tarih ve 29188 sayılı Resmî Gazetede yayınlanan<br />
		Mesafeli Sözleşmeler Yönetmeliğine göre düzenlenmiştir.
	  </div>
	</div>

	<div>

		<div align="left"><p><strong>1. SATICI</strong></p></div>
		<table style="width:98%;border:0px solid #ddd;padding:10px;" valign="top" border="0">
			<tr>
				<td width="100%">
					<div class="left" style="padding-bottom:10px;">
						<span style="font-weight:400"><?php echo $entry_name; ?></span> <?php echo $config_name; ?><br />
						<span style="font-weight:400"><?php echo $entry_owner; ?></span> <?php echo $config_owner; ?><br />
						<span style="font-weight:400"><?php echo $entry_address; ?></span> <?php echo $config_address; ?><br />
						<span style="font-weight:400"><?php echo $entry_email; ?></span> <?php echo $config_email; ?><br />
						<span style="font-weight:400"><?php echo $entry_telephone; ?></span> <?php echo $config_telephone; ?><br />
						<?php if (!empty($config_fax)) { ?><span style="font-weight:400"><?php echo $entry_fax; ?></span> <?php echo $config_fax; ?><br /><?php } ?>
						<div class="left" style="padding-top:5px;"><span style="font-weight:400">Müşteri Hizmetleri Telefon:</span> <?php echo $config_telephone; ?><br /></div>
					</div>
				</td>
			</tr>
		</table>
		
		<div align="left"><p><strong>2. ÜRÜN/ÜRÜNLER</strong></p></div>
		<div class="clr5">
			<p>
				2.1. Malın /Ürün/Ürünlerin/ Hizmetin temel özelliklerini (türü, miktarı, marka/modeli, rengi, adedi) SATICI’ya ait internet sitesinde yayınlanmaktadır. Satıcı tarafından kampanya düzenlenmiş ise ilgili ürünün temel özelliklerini kampanya süresince inceleyebilirsiniz. Kampanya tarihine kadar geçerlidir.
				<br />2.2. Listelenen ve sitede ilan edilen fiyatlar satış fiyatıdır. İlan edilen fiyatlar ve vaatler güncelleme yapılana ve değiştirilene kadar geçerlidir. Süreli olarak ilan edilen fiyatlar ise belirtilen süre sonuna kadar geçerlidir.
				<br />2.3. Sözleşme konusu mal veya hizmetin adı, adeti, KDV dahil satış fiyatı, ödeme şekli ve temel nitelikleri aşağıda gösterilmiştir.
			</p>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
				<div class="table-responsive" style="padding-right:10px;">
					<table class="table table-bordered">
					<thead>
					  <tr>
						
						<td class="text-left" width="28%"><?php echo $column_name; ?></td>
						<td class="text-left" width="18%"><?php echo $column_model; ?></td>
						<td class="text-left" width="6%"><?php echo $column_quantity; ?></td>
						<td class="text-right" width="21%"><?php echo $column_price; ?></td>
						<td class="text-right" width="21%"><?php echo $column_total; ?></td>
					  </tr>
					</thead>
					<tbody>
					  <?php foreach ($products as $product) { ?>
					  <tr>
						<td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
						  <?php if (!$product['stock']) { ?>
						  <span class="text-danger">***</span>
						  <?php } ?>
						  <?php if ($product['option']) { ?>
						  <?php foreach ($product['option'] as $option) { ?>
						  <br />
						  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
						  <?php } ?>
						  <?php } ?>
						  <?php if ($product['reward']) { ?>
						  <br />
						  <small><?php echo $product['reward']; ?></small>
						  <?php } ?>
						  <?php if ($product['recurring']) { ?>
						  <br />
						  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
						  <?php } ?></td>
						<td class="text-left"><?php echo $product['model']; ?></td>
						<td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
						<span><?php echo $product['quantity']; ?></span>
						   
						   </div></td>
						<td class="text-right"><?php echo $product['price']; ?></td>
						<td class="text-right"><?php echo $product['total']; ?></td>
					  </tr>
					  <?php } ?>
					  <?php foreach ($vouchers as $voucher) { ?>
					  <tr>
						<td></td>
						<td class="text-left"><?php echo $voucher['description']; ?></td>
						<td class="text-left"></td>
						<td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
							<input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
							<span class="input-group-btn">
							<button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times-circle"></i></button>
							</span></div></td>
						<td class="text-right"><?php echo $voucher['amount']; ?></td>
						<td class="text-right"><?php echo $voucher['amount']; ?></td>
					  </tr>
					  <?php } ?>
					</tbody>
					</table>
				</div>
			</form>
			<div class="row" style="padding-top:0;padding-right:10px;">
				<div class="col-sm-7 col-sm-offset-5" style="padding-top:0;">
					<table class="table table-bordered">
						<?php foreach ($totals as $total) { ?>
						<tr>
						  <td width="55%" class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
						  <td width="45%" class="text-right"><?php echo $total['text']; ?></td>
						</tr>
						<?php } ?>
					</table>
				</div>
			</div>
			<p>2.4. Ürün sevkiyat masrafı olan kargo ücreti SATICI tarafından ödenecektir.</p>
		</div>		
		
		<div align="left"><p><strong>3.FATURA ve TESLİMAT BİLGİLERİ</strong></p></div>
		<div class="clr5">
			<p>3.1. Fatura Bilgileri:</p>
			<div class="left" style="padding-left:20px;padding-bottom:5px;">
				<span style="font-weight:400">Ad Soyad:</span> <?php echo $firstname . " " . $lastname; ?><br />
				<?php if (!empty($payment_company)) { ?><span style="font-weight:400">Firma:</span> <?php echo $payment_company; ?><br /><?php } ?>
				<span style="font-weight:400">Adres:</span> <?php echo $payment_address_1 ." ". $payment_address_2 . "<br />" . $payment_postcode. " ". $payment_city . "/". $payment_zone . "/" . $payment_country; ?><br />
				<span style="font-weight:400">Telefon:</span> <?php echo $telephone; ?><br />
			</div>
			<p>3.2. Teslimat Bilgileri:</p>
			<div class="left" style="padding-left:20px;padding-bottom:5px;">
				<span style="font-weight:400">Ad Soyad:</span> <?php echo $shipping_soz_firstname . " " . $shipping_soz_lastname; ?><br />
				<?php if (!empty($shipping_soz_company)) { ?><span style="font-weight:400">Firma:</span> <?php echo $shipping_soz_company; ?><br /><?php } ?>
				<span style="font-weight:400">Adres:</span> <?php echo $shipping_soz_address_1 ." ". $shipping_soz_address_2 . "<br />" . $shipping_soz_postcode. " ". $shipping_soz_city . "/". $shipping_soz_zone . "/" . $shipping_soz_country; ?><br />
				<span style="font-weight:400">Telefon:</span> <?php echo $telephone; ?><br />
			</div>			
		</div>		
		<div style="padding-top:8px;">
			<p>
				3.3. Faturanız; sipariş teslimatı sırasında belirtilen fatura adresine, ürün/ürünler ile birlikte teslim edilecektir.
				Teslimat, anlaşmalı kargo şirketi aracılığı ile, ALICI'nın yukarıda belirtilen teslimat adresine elden teslim edilecektir. 
				Teslim anında TESLİMAT BİLGİLERİNDEKİ KİŞİNİN adresinde bulunmaması durumunda dahi Firmamız siparişin teslimatını 
				tam ve eksiksiz olarak yerine getirmiş olarak kabul edilecektir. Bu nedenle, ALICI'nın ürünü geç teslim almasından 
				ve/veya hiç teslim almamasından kaynaklanan zararlardan ve giderlerden SATICI sorumlu değildir. SATICI, sözleşme 
				konusu ürünün sağlam, eksiksiz, siparişte belirtilen niteliklere uygun teslim edilmesinden sorumludur.
			</p>
		</div>
		<div style="padding-top:4px;">
			<p>
				3.4. Ürün sözleşme tarihinden itibaren en geç 30 gün içerisinde teslim edilecektir. Ürününün teslim 
				edilmesi anına kadar tüm sorumluluk SATICI'ya aittir.
			</p>
		</div>
		
		<div align="left"><p><strong>4. CAYMA HAKKI</strong></p></div>
		<div class="clr5">
			<p>
				4.1. ALICI; mesafeli sözleşmenin mal satışına ilişkin olması durumunda, ürünün kendisine veya gösterdiği adresteki kişi/kuruluşa teslim tarihinden itibaren 14 (on dört) gün içerisinde, SATICI’ya bildirmek şartıyla hiçbir hukuki ve cezai sorumluluk üstlenmeksizin ve hiçbir gerekçe göstermeksizin malı reddederek sözleşmeden cayma hakkını kullanabilir. Hizmet sunumuna ilişkin mesafeli sözleşmelerde ise, bu süre sözleşmenin imzalandığı tarihten itibaren başlar. Cayma hakkı süresi sona ermeden önce, tüketicinin onayı ile hizmetin ifasına başlanan hizmet sözleşmelerinde cayma hakkı kullanılamaz. Cayma hakkının kullanımından kaynaklanan masraflar SATICI’ ya aittir. ALICI, iş bu sözleşmeyi kabul etmekle, cayma hakkı konusunda bilgilendirildiğini peşinen kabul eder.
				<br />4.2. Cayma hakkının kullanılması için 14 (on dört) günlük süre içinde SATICI' ya iadeli taahhütlü posta, faks veya eposta ile yazılı bildirimde bulunulması ve ürünün işbu sözleşmede düzenlenen "Cayma Hakkı Kullanılamayacak Ürünler" hükümleri çerçevesinde kullanılmamış olması şarttır. Bu hakkın kullanılması halinde, 
				<br />a) 3. kişiye veya ALICI’ ya teslim edilen ürünün faturası, (İade edilmek istenen ürünün faturası kurumsal ise, iade ederken kurumun düzenlemiş olduğu iade faturası ile birlikte gönderilmesi gerekmektedir. Faturası kurumlar adına düzenlenen sipariş iadeleri İADE FATURASI kesilmediği takdirde tamamlanamayacaktır.)
				<br />b) İade formu,
				<br />c) İade edilecek ürünlerin kutusu, ambalajı, varsa standart aksesuarları ile birlikte eksiksiz ve hasarsız olarak teslim edilmesi gerekmektedir.
				<br />d) SATICI, cayma bildiriminin kendisine ulaşmasından itibaren en geç 10 günlük süre içerisinde toplam bedeli ve ALICI’yı borç altına sokan belgeleri ALICI’ ya iade etmek ve 20 günlük süre içerisinde malı iade almakla yükümlüdür.
				<br />e) ALICI’ nın kusurundan kaynaklanan bir nedenle malın değerinde bir azalma olursa veya iade imkânsızlaşırsa ALICI kusuru oranında SATICI’nın zararlarını tazmin etmekle yükümlüdür. Ancak cayma hakkı süresi içinde malın veya ürünün usulüne uygun kullanılması sebebiyle meydana gelen değişiklik ve bozulmalardan ALICI sorumlu değildir. 
				<br />f) Cayma hakkının kullanılması nedeniyle SATICI tarafından düzenlenen kampanya limit tutarının altına düşülmesi halinde kampanya kapsamında faydalanılan indirim miktarı iptal edilir.

			</p>
		</div>
		
		<div align="left"><p><strong>5. CAYMA HAKKI KULLANILAMAYACAK ÜRÜNLER</strong></p></div>
		<div class="clr5">
			<p>
				Taraflarca aksi kararlaştırılmadıkça, tüketici aşağıdaki sözleşmelerde cayma hakkını kullanamaz:
				<br />a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrolünde olmayan mal veya hizmetlere ilişkin sözleşmeler.
				<br />b) Tüketicinin istekleri veya kişisel ihtiyaçları doğrultusunda hazırlanan mallara ilişkin sözleşmeler.
				<br />c) Çabuk bozulabilen veya son kullanma tarihi geçebilecek malların teslimine ilişkin sözleşmeler.
				<br />ç) Tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olan mallardan; iadesi sağlık ve hijyen açısından uygun olmayanların teslimine ilişkin sözleşmeler.
				<br />d) Tesliminden sonra başka ürünlerle karışan ve doğası gereği ayrıştırılması mümkün olmayan mallara ilişkin sözleşmeler.
				<br />e) Malın tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olması halinde maddi ortamda sunulan kitap, dijital içerik ve bilgisayar sarf malzemelerine ilişkin sözleşmeler.
				<br />f) Abonelik sözleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi süreli yayınların teslimine ilişkin sözleşmeler.
				<br />g) Belirli bir tarihte veya dönemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-içecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin sözleşmeler.
				<br />ğ) Elektronik ortamda anında ifa edilen hizmetler veya tüketiciye anında teslim edilen gayrimaddi mallara ilişkin sözleşmeler.
				<br />h) Cayma hakkı süresi sona ermeden önce, tüketicinin onayı ile ifasına başlanan hizmetlere ilişkin sözleşmeler.

			</p>
		</div>
		
		<div align="left"><p><strong>6. YETKİLİ MAHKEME</strong></p></div>
		<div class="clr5">
			<p>
				İşbu sözleşmeden doğan uyuşmazlıklarda şikayet ve itirazlar,  aşağıdaki kanunda belirtilen parasal sınırlar dâhilinde tüketicinin yerleşim yerinin bulunduğu  veya tüketici işleminin yapıldığı yerdeki  tüketici sorunları hakem heyetine veya tüketici mahkemesine yapılacaktır. 
				Parasal sınıra ilişkin bilgiler aşağıdadır: 
				<br />28/05/2014 tarihinden itibaren geçerli olmak üzere:
				<br />a) 6502 sayılı Tüketicinin Korunması Hakkında Kanuna göre değeri 2.320 TL'nin altında olan uyuşmazlıklarda ilçe tüketici hakem heyetlerine,
				<br />b) Değeri 2.320.-3.480 TL arasında bulunan uyuşmazlıklarda il tüketici hakem heyetlerine,
				<br />c) Değeri 3.480 TL'nin üzerinde olan uyuşmazlıklarda Tüketici  Mahkemelerine başvuru yapılmaktadır.
				<br />İşbu Sözleşme ticari amaçlarla yapılmaktadır.
			</p>
		</div>

		<div align="left"><p><strong>7. TARAFLAR</strong></p></div>
		<div class="clr5">
			<p>Alıcı ve Satıcı bilgileri aşağıda yer almaktadır.</p>
		</div>
		<table valign="top" border="0">
			<tr>
				<td width="100%">
					<strong>7.1. SATICI</strong><br />
					<div class="left" style="padding-bottom:10px;">
						<span style="font-weight:400"><?php echo $entry_name; ?></span> <?php echo $config_name; ?><br />
						<span style="font-weight:400"><?php echo $entry_owner; ?></span> <?php echo $config_owner; ?><br />
						<span style="font-weight:400"><?php echo $entry_address; ?></span> <?php echo $config_address; ?><br />
						<span style="font-weight:400"><?php echo $entry_email; ?></span> <?php echo $config_email; ?><br />
						<span style="font-weight:400"><?php echo $entry_telephone; ?></span> <?php echo $config_telephone; ?><br />
						<?php if (!empty($config_fax)) { ?><span style="font-weight:400"><?php echo $entry_fax; ?></span> <?php echo $config_fax; ?><br /><?php } ?>
					</div>
				</td>
			</tr>
			<tr>
				<td width="100%">
					<strong>7.2. ALICI</strong><br />
					<div class="left">
						<span style="font-weight:400">Ad Soyad:</span> <?php echo $firstname . " " . $lastname; ?><br />
						<?php if (!empty($company)) { ?><span style="font-weight:400">Firma:</span> <?php echo $company; ?><br /><?php } ?>
						<span style="font-weight:400">Adres:</span> <?php echo $address_1 ." ". $address_2 . "<br /> " . $postcode. " ". $city . "/". $zone . "/" . $country; ?><br />
						<span style="font-weight:400">Telefon:</span> <?php echo $telephone; ?><br />
						<span style="font-weight:400">E-Posta:</span> <?php echo $email; ?>  <br />  
						<div class="ipaddress">
							<?php 
							function getRealIpAddr() {
								if (!empty($_SERVER['HTTP_CLIENT_IP']))   //check ip from share internet
								{
								  $ip=$_SERVER['HTTP_CLIENT_IP'];
								}
								elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))   //to check ip is pass from proxy
								{
								  $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
								}
								else
								{
								  $ip=$_SERVER['REMOTE_ADDR'];
								}
								return $ip;
							} 
							echo "<span style=\"font-weight:400\">IP Adresiniz :</span> ".getRealIpAddr();
							?>
						</div>
					</div>
				</td>
			</tr>
		</table>
		<p style="line-height:1%;">&nbsp;</p>
		<div class="clr5">
			<p>
				İş bu ön bilgilendirme formunu kabul etmekle ALICI, sözleşme konusu siparişi onayladığı takdirde sipariş 
				konusu bedeli, varsa kargo ücretini ve vergi gibi belirtilen ek ücretleri ödeme yükümlülüğü 
				altına gireceğini ve bu konuda bilgilendirildiğini peşinen kabul eder.
			</p>
		</div>
		
	</div>
</div>	
<?php 
} 
else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php 
} 
?>