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

		<div align="left"><p><strong>1. TARAFLAR</strong></p></div>
		<div class="clr5">
			<p>İşbu Sözleşme aşağıdaki taraflar arasında aşağıda belirtilen hüküm ve şartlar çerçevesinde imzalanmıştır.</p>
		</div>
		<table valign="top" border="0">
			<tr>
				<td width="100%">
					<strong>1.1. SATICI</strong> (sözleşmede bundan sonra "SATICI" olarak anılacaktır)<br />
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
					<strong>1.2. ALICI</strong> (sözleşmede bundan sonra "ALICI" olarak anılacaktır)<br />
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
		
		<div align="left"><p><strong>2. TANIMLAR</strong></p></div>
		<div class="clr5">
			<p>
				İşbu sözleşmenin uygulanmasında ve yorumlanmasında aşağıda yazılı terimler karşılarındaki yazılı açıklamaları ifade edeceklerdir.
				<br />BAKAN: Gümrük ve Ticaret Bakanı’nı,
				<br />BAKANLIK: Gümrük ve Ticaret  Bakanlığı’nı,
				<br />KANUN: 6502 sayılı Tüketicinin Korunması Hakkında Kanun’u,
				<br />YÖNETMELİK: Mesafeli Sözleşmeler Yönetmeliği’ni (RG:27.11.2014/29188)
				<br />HİZMET: Bir ücret veya menfaat karşılığında yapılan ya da yapılması taahhüt edilen mal sağlama dışındaki her türlü tüketici işleminin konusunu,
				<br />SATICI: Ticari veya mesleki faaliyetleri kapsamında tüketiciye mal sunan veya mal sunan adına veya hesabına hareket eden şirketi,
				<br />ALICI: Bir mal veya hizmeti ticari veya mesleki olmayan amaçlarla edinen, kullanan veya yararlanan gerçek ya da tüzel kişiyi,
				<br />SİTE: SATICI’ya ait internet sitesini,
				<br />SİPARİŞ VEREN: Bir mal veya hizmeti SATICI’ya ait internet sitesi üzerinden talep eden gerçek ya da tüzel kişiyi,
				<br />TARAFLAR: SATICI ve ALICI’yı,
				<br />SÖZLEŞME: SATICI ve ALICI arasında akdedilen işbu sözleşmeyi,
				<br />MAL: Alışverişe konu olan taşınır eşyayı ve elektronik ortamda kullanılmak üzere hazırlanan yazılım, ses, görüntü ve benzeri gayri maddi malları ifade eder.
			</p>
		</div>
		
		<div align="left"><p><strong>3. KONU</strong></p></div>
		<div class="clr5">
			<p>
				İşbu Sözleşme, ALICI’nın, SATICI’ya ait internet sitesi üzerinden elektronik ortamda siparişini verdiği 
				aşağıda nitelikleri ve satış fiyatı belirtilen ürünün satışı ve teslimi ile ilgili olarak 6502 sayılı 
				Tüketicinin Korunması Hakkında Kanun ve Mesafeli Sözleşmelere Dair Yönetmelik hükümleri gereğince 
				tarafların hak ve yükümlülüklerini düzenler.
				<br />Listelenen ve sitede ilan edilen fiyatlar satış fiyatıdır. İlan edilen fiyatlar ve vaatler 
				güncelleme yapılana ve değiştirilene kadar geçerlidir. Süreli olarak ilan edilen fiyatlar ise 
				belirtilen süre sonuna kadar geçerlidir.
			</p>
		</div>
		
		<div align="left"><p><strong>4. SÖZLEŞME KONUSU ÜRÜN/ÜRÜNLER BİLGİLERİ</strong></p></div>
		<div class="clr5">
			<p>
				4.1. Malın /Ürün/Ürünlerin/ Hizmetin temel özelliklerini (türü, miktarı, marka/modeli, rengi, adedi) SATICI’ya ait internet sitesinde yayınlanmaktadır. Satıcı tarafından kampanya düzenlenmiş ise ilgili ürünün temel özelliklerini kampanya süresince inceleyebilirsiniz. Kampanya tarihine kadar geçerlidir.
				<br />4.2. Listelenen ve sitede ilan edilen fiyatlar satış fiyatıdır. İlan edilen fiyatlar ve vaatler güncelleme yapılana ve değiştirilene kadar geçerlidir. Süreli olarak ilan edilen fiyatlar ise belirtilen süre sonuna kadar geçerlidir.
				<br />4.3. Sözleşme konusu mal veya hizmetin adı, adeti, KDV dahil satış fiyatı, ödeme şekli ve temel nitelikleri aşağıda gösterilmiştir.
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
			<p>4.4. Ürün sevkiyat masrafı olan kargo ücreti SATICI tarafından ödenecektir.</p>
		</div>		
		
		<div align="left"><p><strong>5. FATURA ve TESLİMAT BİLGİLERİ</strong></p></div>
		<div class="clr5">
			<p>5.1. Fatura Bilgileri:</p>
			<div class="left" style="padding-left:20px;padding-bottom:5px;">
				<span style="font-weight:400">Ad Soyad:</span> <?php echo $firstname . " " . $lastname; ?><br />
				<?php if (!empty($payment_company)) { ?><span style="font-weight:400">Firma:</span> <?php echo $payment_company; ?><br /><?php } ?>
				<span style="font-weight:400">Adres:</span> <?php echo $payment_address_1 ." ". $payment_address_2 . "<br />" . $payment_postcode. " ". $payment_city . "/". $payment_zone . "/" . $payment_country; ?><br />
				<span style="font-weight:400">Telefon:</span> <?php echo $telephone; ?><br />
			</div>
			<p>5.2. Teslimat Bilgileri:</p>
			<div class="left" style="padding-left:20px;padding-bottom:5px;">
				<span style="font-weight:400">Ad Soyad:</span> <?php echo $shipping_soz_firstname . " " . $shipping_soz_lastname; ?><br />
				<?php if (!empty($shipping_soz_company)) { ?><span style="font-weight:400">Firma:</span> <?php echo $shipping_soz_company; ?><br /><?php } ?>
				<span style="font-weight:400">Adres:</span> <?php echo $shipping_soz_address_1 ." ". $shipping_soz_address_2 . "<br />" . $shipping_soz_postcode. " ". $shipping_soz_city . "/". $shipping_soz_zone . "/" . $shipping_soz_country; ?><br />
				<span style="font-weight:400">Telefon:</span> <?php echo $telephone; ?><br />
			</div>			
		</div>
		<div style="padding-top:8px;">
			<p>
				5.3. Faturanız; sipariş teslimatı sırasında belirtilen fatura adresine, ürün/ürünler ile birlikte teslim edilecektir.
				Teslimat, anlaşmalı kargo şirketi aracılığı ile, ALICI'nın yukarıda belirtilen teslimat adresine elden teslim edilecektir. 
				Teslim anında TESLİMAT BİLGİLERİNDEKİ KİŞİNİN adresinde bulunmaması durumunda dahi Firmamız siparişin teslimatını 
				tam ve eksiksiz olarak yerine getirmiş olarak kabul edilecektir. Bu nedenle, ALICI'nın ürünü geç teslim almasından 
				ve/veya hiç teslim almamasından kaynaklanan zararlardan ve giderlerden SATICI sorumlu değildir. SATICI, sözleşme 
				konusu ürünün sağlam, eksiksiz, siparişte belirtilen niteliklere uygun teslim edilmesinden sorumludur.
			</p>
		</div>
		<div style="padding-top:4px;">
			<p>
				5.4. Ürün sözleşme tarihinden itibaren en geç 30 gün içerisinde teslim edilecektir. Ürününün teslim 
				edilmesi anına kadar tüm sorumluluk SATICI'ya aittir.
			</p>
		</div>
		
		<div align="left"><p><strong>6. GENEL HÜKÜMLER</strong></p></div>
		<div class="clr5">
			<p>
				6.1. ALICI, SATICI’ya ait internet sitesinde sözleşme konusu ürünün temel nitelikleri, satış fiyatı ve ödeme şekli ile teslimata ilişkin ön bilgileri okuyup, bilgi sahibi olduğunu, elektronik ortamda gerekli teyidi verdiğini kabul, beyan ve taahhüt eder. ALICI’nın; Ön Bilgilendirmeyi elektronik ortamda teyit etmesi, mesafeli satış sözleşmesinin kurulmasından evvel, SATICI tarafından ALICI' ya verilmesi gereken adresi, siparişi verilen ürünlere ait temel özellikleri, ürünlerin vergiler dâhil fiyatını, ödeme ve teslimat bilgilerini de doğru ve eksiksiz olarak edindiğini kabul, beyan ve taahhüt eder.
				<br />6.2. Sözleşme konusu her bir ürün, 30 günlük yasal süreyi aşmamak kaydı ile ALICI' nın yerleşim yeri uzaklığına bağlı olarak internet sitesindeki ön bilgiler kısmında belirtilen süre zarfında ALICI veya ALICI’nın gösterdiği adresteki kişi ve/veya kuruluşa teslim edilir. Bu süre içinde ürünün ALICI’ya teslim edilememesi durumunda, ALICI’nın sözleşmeyi feshetme hakkı saklıdır. 
				<br />6.3. SATICI, Sözleşme konusu ürünü eksiksiz, siparişte belirtilen niteliklere uygun ve varsa garanti belgeleri, kullanım kılavuzları işin gereği olan bilgi ve belgeler ile teslim etmeyi, her türlü ayıptan arî olarak yasal mevzuat gereklerine göre sağlam, standartlara uygun bir şekilde işi doğruluk ve dürüstlük esasları dâhilinde ifa etmeyi, hizmet kalitesini koruyup yükseltmeyi, işin ifası sırasında gerekli dikkat ve özeni göstermeyi, ihtiyat ve öngörü ile hareket etmeyi kabul, beyan ve taahhüt eder.
				<br />6.4. SATICI, sözleşmeden doğan ifa yükümlülüğünün süresi dolmadan ALICI’yı bilgilendirmek ve açıkça onayını almak suretiyle eşit kalite ve fiyatta farklı bir ürün tedarik edebilir.
				<br />6.5. SATICI, sipariş konusu ürün veya hizmetin yerine getirilmesinin imkânsızlaşması halinde sözleşme konusu yükümlülüklerini yerine getiremezse, bu durumu, öğrendiği tarihten itibaren 3 gün içinde yazılı olarak tüketiciye bildireceğini, 14 günlük süre içinde toplam bedeli ALICI’ya iade edeceğini kabul, beyan ve taahhüt eder. 
				<br />6.6. ALICI, Sözleşme konusu ürünün teslimatı için işbu Sözleşme’yi elektronik ortamda teyit edeceğini, herhangi bir nedenle sözleşme konusu ürün bedelinin ödenmemesi ve/veya banka kayıtlarında iptal edilmesi halinde, SATICI’nın sözleşme konusu ürünü teslim yükümlülüğünün sona ereceğini kabul, beyan ve taahhüt eder.
				<br />6.7. ALICI, Sözleşme konusu ürünün ALICI veya ALICI’nın gösterdiği adresteki kişi ve/veya kuruluşa tesliminden sonra ALICI'ya ait kredi kartının yetkisiz kişilerce haksız kullanılması sonucunda sözleşme konusu ürün bedelinin ilgili banka veya finans kuruluşu tarafından SATICI'ya ödenmemesi halinde, ALICI Sözleşme konusu ürünü 3 gün içerisinde nakliye gideri ALICI’ya ait olacak şekilde SATICI’ya iade edeceğini kabul, beyan ve taahhüt eder.
				<br />6.8. SATICI, tarafların iradesi dışında gelişen, önceden öngörülemeyen ve tarafların borçlarını yerine getirmesini engelleyici ve/veya geciktirici hallerin oluşması gibi mücbir sebepler halleri nedeni ile sözleşme konusu ürünü süresi içinde teslim edemez ise, durumu ALICI'ya bildireceğini kabul, beyan ve taahhüt eder. ALICI da siparişin iptal edilmesini, sözleşme konusu ürünün varsa emsali ile değiştirilmesini ve/veya teslimat süresinin engelleyici durumun ortadan kalkmasına kadar ertelenmesini SATICI’dan talep etme hakkını haizdir. ALICI tarafından siparişin iptal edilmesi halinde ALICI’nın nakit ile yaptığı ödemelerde, ürün tutarı 14 gün içinde kendisine nakden ve defaten ödenir. ALICI’nın kredi kartı ile yaptığı ödemelerde ise, ürün tutarı, siparişin ALICI tarafından iptal edilmesinden sonra 14 gün içerisinde ilgili bankaya iade edilir. ALICI, SATICI tarafından kredi kartına iade edilen tutarın banka tarafından ALICI hesabına yansıtılmasına ilişkin ortalama sürecin 2 ile 3 haftayı bulabileceğini, bu tutarın bankaya iadesinden sonra ALICI’nın hesaplarına yansıması halinin tamamen banka işlem süreci ile ilgili olduğundan, ALICI, olası gecikmeler için SATICI’yı sorumlu tutamayacağını kabul, beyan ve taahhüt eder.
				<br />6.9. SATICININ, ALICI tarafından siteye kayıt formunda belirtilen veya daha sonra kendisi tarafından güncellenen adresi, e-posta adresi, sabit ve mobil telefon hatları ve diğer iletişim bilgileri üzerinden mektup, e-posta, SMS, telefon görüşmesi ve diğer yollarla iletişim, pazarlama, bildirim ve diğer amaçlarla ALICI’ya ulaşma hakkı bulunmaktadır. ALICI, işbu sözleşmeyi kabul etmekle SATICI’nın kendisine yönelik yukarıda belirtilen iletişim faaliyetlerinde bulunabileceğini kabul ve beyan etmektedir.
				<br />6.10. ALICI, sözleşme konusu mal/hizmeti teslim almadan önce muayene edecek; ezik, kırık, ambalajı yırtılmış vb. hasarlı ve ayıplı mal/hizmeti kargo şirketinden teslim almayacaktır. Teslim alınan mal/hizmetin hasarsız ve sağlam olduğu kabul edilecektir. Teslimden sonra mal/hizmetin özenle korunması borcu, ALICI’ya aittir. Cayma hakkı kullanılacaksa mal/hizmet kullanılmamalıdır. Fatura iade edilmelidir.
				<br />6.11. ALICI ile sipariş esnasında kullanılan kredi kartı hamilinin aynı kişi olmaması veya ürünün ALICI’ya tesliminden evvel, siparişte kullanılan kredi kartına ilişkin güvenlik açığı tespit edilmesi halinde, SATICI, kredi kartı hamiline ilişkin kimlik ve iletişim bilgilerini, siparişte kullanılan kredi kartının bir önceki aya ait ekstresini yahut kart hamilinin bankasından kredi kartının kendisine ait olduğuna ilişkin yazıyı ibraz etmesini ALICI’dan talep edebilir. ALICI’nın talebe konu bilgi/belgeleri temin etmesine kadar geçecek sürede sipariş dondurulacak olup, mezkur taleplerin 24 saat içerisinde karşılanmaması halinde ise SATICI, siparişi iptal etme hakkını haizdir.
				<br />6.12. ALICI, SATICI’ya ait internet sitesine üye olurken verdiği kişisel ve diğer sair bilgilerin gerçeğe uygun olduğunu, SATICI’nın bu bilgilerin gerçeğe aykırılığı nedeniyle uğrayacağı tüm zararları, SATICI’nın ilk bildirimi üzerine derhal, nakden ve defaten tazmin edeceğini beyan ve taahhüt eder.
				<br />6.13. ALICI, SATICI’ya ait internet sitesini kullanırken yasal mevzuat hükümlerine riayet etmeyi ve bunları ihlal etmemeyi baştan kabul ve taahhüt eder. Aksi takdirde, doğacak tüm hukuki ve cezai yükümlülükler tamamen ve münhasıran ALICI’yı bağlayacaktır.
				<br />6.14. ALICI, SATICI’ya ait internet sitesini hiçbir şekilde kamu düzenini bozucu, genel ahlaka aykırı, başkalarını rahatsız ve taciz edici şekilde, yasalara aykırı bir amaç için, başkalarının maddi ve manevi haklarına tecavüz edecek şekilde kullanamaz. Ayrıca, üye başkalarının hizmetleri kullanmasını önleyici veya zorlaştırıcı faaliyet (spam, virus, truva atı, vb.) işlemlerde bulunamaz.
				<br />6.15. SATICI’ya ait internet sitesinin üzerinden, SATICI’nın kendi kontrolünde olmayan ve/veya başkaca üçüncü kişilerin sahip olduğu ve/veya işlettiği başka web sitelerine ve/veya başka içeriklere link verilebilir. Bu linkler ALICI’ya yönlenme kolaylığı sağlamak amacıyla konmuş olup herhangi bir web sitesini veya o siteyi işleten kişiyi desteklememekte ve Link verilen web sitesinin içerdiği bilgilere yönelik herhangi bir garanti niteliği taşımamaktadır.
				<br />6.16. İşbu sözleşme içerisinde sayılan maddelerden bir ya da birkaçını ihlal eden üye işbu ihlal nedeniyle cezai ve hukuki olarak şahsen sorumlu olup, SATICI’yı bu ihlallerin hukuki ve cezai sonuçlarından ari tutacaktır. Ayrıca; işbu ihlal nedeniyle, olayın hukuk alanına intikal ettirilmesi halinde, SATICI’nın üyeye karşı üyelik sözleşmesine uyulmamasından dolayı tazminat talebinde bulunma hakkı saklıdır.
			</p>
		</div>
		
		<div align="left"><p><strong>7. CAYMA HAKKI</strong></p></div>
		<div class="clr5">
			<p>
				7.1. ALICI; mesafeli sözleşmenin mal satışına ilişkin olması durumunda, ürünün kendisine veya gösterdiği adresteki kişi/kuruluşa teslim tarihinden itibaren 14 (on dört) gün içerisinde, SATICI’ya bildirmek şartıyla hiçbir hukuki ve cezai sorumluluk üstlenmeksizin ve hiçbir gerekçe göstermeksizin malı reddederek sözleşmeden cayma hakkını kullanabilir. Hizmet sunumuna ilişkin mesafeli sözleşmelerde ise, bu süre sözleşmenin imzalandığı tarihten itibaren başlar. Cayma hakkı süresi sona ermeden önce, tüketicinin onayı ile hizmetin ifasına başlanan hizmet sözleşmelerinde cayma hakkı kullanılamaz. Cayma hakkının kullanımından kaynaklanan masraflar SATICI’ ya aittir. ALICI, iş bu sözleşmeyi kabul etmekle, cayma hakkı konusunda bilgilendirildiğini peşinen kabul eder.
				<br />7.2. Cayma hakkının kullanılması için 14 (on dört) günlük süre içinde SATICI' ya iadeli taahhütlü posta, faks veya eposta ile yazılı bildirimde bulunulması ve ürünün işbu sözleşmede düzenlenen "Cayma Hakkı Kullanılamayacak Ürünler" hükümleri çerçevesinde kullanılmamış olması şarttır. Bu hakkın kullanılması halinde, 
				<br />a) 3. kişiye veya ALICI’ ya teslim edilen ürünün faturası, (İade edilmek istenen ürünün faturası kurumsal ise, iade ederken kurumun düzenlemiş olduğu iade faturası ile birlikte gönderilmesi gerekmektedir. Faturası kurumlar adına düzenlenen sipariş iadeleri İADE FATURASI kesilmediği takdirde tamamlanamayacaktır.)
				<br />b) İade formu,
				<br />c) İade edilecek ürünlerin kutusu, ambalajı, varsa standart aksesuarları ile birlikte eksiksiz ve hasarsız olarak teslim edilmesi gerekmektedir.
				<br />d) SATICI, cayma bildiriminin kendisine ulaşmasından itibaren en geç 10 günlük süre içerisinde toplam bedeli ve ALICI’yı borç altına sokan belgeleri ALICI’ ya iade etmek ve 20 günlük süre içerisinde malı iade almakla yükümlüdür.
				<br />e) ALICI’ nın kusurundan kaynaklanan bir nedenle malın değerinde bir azalma olursa veya iade imkânsızlaşırsa ALICI kusuru oranında SATICI’nın zararlarını tazmin etmekle yükümlüdür. Ancak cayma hakkı süresi içinde malın veya ürünün usulüne uygun kullanılması sebebiyle meydana gelen değişiklik ve bozulmalardan ALICI sorumlu değildir. 
				<br />f) Cayma hakkının kullanılması nedeniyle SATICI tarafından düzenlenen kampanya limit tutarının altına düşülmesi halinde kampanya kapsamında faydalanılan indirim miktarı iptal edilir.

			</p>
		</div>
		
		<div align="left"><p><strong>8. CAYMA HAKKI KULLANILAMAYACAK ÜRÜNLER</strong></p></div>
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
		
		<div align="left"><p><strong>9. TEMERRÜT HALİ VE HUKUKİ SONUÇLARI</strong></p></div>
		<div class="clr5">
			<p>
				ALICI, ödeme işlemlerini  kredi kartı ile yaptığı durumda temerrüde düştüğü takdirde, kart sahibi 
				banka ile arasındaki kredi kartı sözleşmesi çerçevesinde faiz ödeyeceğini ve bankaya karşı sorumlu 
				olacağını kabul, beyan ve taahhüt eder. Bu durumda ilgili banka hukuki yollara başvurabilir; doğacak 
				masrafları ve vekâlet ücretini ALICI’dan talep edebilir ve her koşulda ALICI’nın borcundan dolayı 
				temerrüde düşmesi halinde, ALICI, borcun gecikmeli ifasından dolayı SATICI’nın uğradığı zarar ve 
				ziyanını ödeyeceğini kabul, beyan ve taahhüt eder.
			</p>
		</div>
		
		<div align="left"><p><strong>10. YETKİLİ MAHKEME</strong></p></div>
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
		
		<div align="left"><p><strong>11. YÜRÜRLÜK</strong></p></div>
		<div class="clr5">
			<p>
				ALICI, Site üzerinden verdiği siparişe ait ödemeyi gerçekleştirdiğinde işbu sözleşmenin tüm şartlarını 
				kabul etmiş sayılır. SATICI, siparişin gerçekleşmesi öncesinde işbu sözleşmenin sitede ALICI tarafından 
				okunup kabul edildiğine dair onay alacak şekilde gerekli yazılımsal düzenlemeleri yapmakla yükümlüdür.
			</p>
		</div>

		<div class="clr5">
			<table border="0">
				<tr height="25">
					<td width="25%"><strong>SATICI</strong></td>
					<td width="75%"><strong>:</strong> <?php echo $config_name; ?></td>
				</tr>
				<tr height="25">
					<td width="25%"><strong>ALICI</strong></td>
					<td width="75%"><strong>:</strong> <?php echo $firstname; ?> <?php echo $lastname; ?></td>
				</tr>
				<tr height="25">
					<td width="25%"><strong>TARİH</strong></td>
					<td width="75%"><strong>:</strong> <?php echo date("d/m/Y"); ?></td>
				</tr>
				<tr height="10">
					<td width="100%" colspan="2">&nbsp;</td>
				</tr>
			</table>
		</div>
		
	</div>
</div>	
<?php 
} 
else { ?>
<script type="text/javascript">
location = '<?php echo $redirect; ?>';
</script> 
<?php 
} 
?>