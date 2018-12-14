<script type="application/ld+json">
{
"@context": "http://schema.org/",
"@type": "Product",
"name": "<?php echo $sdname; ?>",
"image": "<?php echo $sdimage; ?>",
"description": "<?php echo $sddescription; ?>",
<?php if ($sdmpn) { ?> "mpn": "<?php echo $sdmpn; ?>", <?php } ?>
<?php if ($sdsku) { ?> "sku": "<?php echo $sdsku; ?>", <?php } ?>
<?php if ($sdbrand) { ?>
"brand": {
"@type": "Thing",
"name": "<?php echo $sdbrand; ?>"
},
<?php } ?>
<?php if ($sdratingvalue) { ?>
"aggregateRating": {
"@type": "AggregateRating",
"ratingValue": "<?php echo $sdratingvalue; ?>",
"worstRating": 1,
"bestRating": 5,
"reviewCount": "<?php echo $sdreviewcount; ?>"
},
<?php } ?>
"offers": {
"@type": "Offer",
"priceCurrency": "<?php echo $sdpricecurrency; ?>",
"price": "<?php echo $sdprice; ?>",
"availability": "<?php echo $sdavailability; ?>",
<?php if ($sdseller) { ?>
"seller": {
"@type": "Organization",
"name": "<?php echo $sdseller; ?>"
}
<?php } ?>
}
}
</script>
  