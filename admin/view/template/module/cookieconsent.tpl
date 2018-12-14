<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-cookieconsent" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
				<button id="button-trigger-cookieconsent" type="button" form="form-cookieconsent" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary">Preview</button>
			</div>
			<h1><?php echo $heading_title; ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="container-fluid">
		<?php if ($error_warning) { ?>
			<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		<?php } ?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
			</div>
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-cookieconsent" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-tax-class"><?=$entry_status?></label>
						<div class="col-sm-10">
							<select name="cookieconsent_status" id="input-tax-class" class="form-control">
								<?php if($cookieconsent_status){?>
									<option value="0"><?=$text_disabled?></option>
									<option selected="selected" value="1"><?=$text_enabled?></option>
									<?php }else{?>
									<option selected="selected" value="0"><?=$text_disabled?></option>
									<option value="1"><?=$text_enabled?></option>
								<?php }?>
							</select>
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label"><?=$entry_position?></label>
						<div class="col-sm-10">
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_position" 
								value="banner-bottom"
								<?=$cookieconsent_position=='banner-bottom'?"checked":""?>
								/><?=$text_banner_bottom?>
							</label>
							
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_position" 
								value="banner-top"
								<?=$cookieconsent_position=='banner-top'?"checked":""?>
								/><?=$text_banner_top?>
							</label>
							
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_position" 
								value="banner-top-pushdown"
								<?=$cookieconsent_position=='banner-top-pushdown'?"checked":""?>
								/><?=$text_banner_top_pushdown?>
							</label>
							
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_position" 
								value="floating-right"
								<?=$cookieconsent_position=='floating-right'?"checked":""?>
								/><?=$text_floating_right?>
							</label>
							
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_position" 
								value="floating-left"
								<?=$cookieconsent_position=='floating-left'?"checked":""?>
								/><?=$text_floating_left?>
							</label>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label"><?=$entry_layout?></label>
						<div class="col-sm-10">
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_layout" 
								value="block"
								<?=$cookieconsent_layout=='block'?"checked":""?>
								/><?=$text_block?>
							</label>
							
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_layout" 
								value="classic"
								<?=$cookieconsent_layout=='classic'?"checked":""?>
								/><?=$text_classic?>
							</label>
							
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_layout" 
								value="edgeless"
								<?=$cookieconsent_layout=='edgeless'?"checked":""?>
								/><?=$text_edgeless?>
							</label>
							
							<label class="radio-inline">
								<input 
								type="radio" 
								name="cookieconsent_layout" 
								value="wire"
								<?=$cookieconsent_layout=='wire'?"checked":""?>
								/><?=$text_wire?>
							</label>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_banner_color?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_banner_color" value="<?=$cookieconsent_setting['palette']['popup']['background']?>"/>
							<input type="text" class="form-control form-check-input spectrum-colorpicker" id="cookieconsent_banner_color"/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_banner_text_color?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_banner_text_color" value="<?=$cookieconsent_setting['palette']['popup']['text']?>"/>
							<input type="text" class="form-control form-check-input spectrum-colorpicker" id="cookieconsent_banner_text_color"/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_button_color?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_button_color" value="<?=$cookieconsent_setting['palette']['button']['background']?>"/>
							<input type="text" class="form-control form-check-input spectrum-colorpicker" id="cookieconsent_button_color"/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_button_text_color?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_button_text_color" value="<?=$cookieconsent_setting['palette']['button']['text']?>"/>
							<input type="text" class="form-control form-check-input spectrum-colorpicker" id="cookieconsent_button_text_color"/>
						</div>
					</div>
					
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_link?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_href" value="<?=$cookieconsent_href?>"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_message?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_message" value="<?=$cookieconsent_message?>"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_dismiss?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_dismiss" value="<?=$cookieconsent_dismiss?>"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-weight"><?=$entry_privacy?></label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-check-input" name="cookieconsent_link" value="<?=$cookieconsent_link?>"/>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/spectrum/1.8.0/spectrum.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/spectrum/1.8.0/spectrum.js"></script>

<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>

<script type="text/javascript">
	var cookieconsent_setting = JSON.parse('<?=json_encode($cookieconsent_setting)?>');
	var popup = null; //Cookieconset object
	var $form = $('#form-cookieconsent')
	
	$('.spectrum-colorpicker').each(function(){
		var $input = $('[name="'+$(this).attr('id')+'"]')  //Corresponding input field
		var color = $input.val()
		var self = this;
		
		$input.on('input', function(){
			$(self).spectrum('set', $(this).val())
			var color = $(self).val() 
			
			switch($(this).attr('name')){
				case 'cookieconsent_banner_color':
				cookieconsent_setting.palette.popup.background = color;
				break;
				
				case 'cookieconsent_banner_text_color':
				cookieconsent_setting.palette.popup.text = color;
				break;
				
				case 'cookieconsent_button_color':
				cookieconsent_setting.palette.button.background = color;
				break;
				
				case 'cookieconsent_button_text_color':
				cookieconsent_setting.palette.button.text = color;
				break;
			}
		})
		
		$(this).spectrum({
			color           : color ,
			preferredFormat : 'hex6' ,
			change: function(color) {
				$input.val(color).trigger('input')
			}
		})
	})
	
	$('[name="cookieconsent_position"]').on('change', function(){
		delete cookieconsent_setting.static;
		switch($(this).val()){
			case 'banner-bottom':
			cookieconsent_setting.position = 'bottom'
			break;
			
			case 'banner-top':
			cookieconsent_setting.position = 'top'
			break;
			
			case 'banner-top-pushdown':
			cookieconsent_setting.position = 'top'
			cookieconsent_setting.static = true
			break;
			
			case 'floating-left':
			cookieconsent_setting.position = 'bottom-left'
			break;
			
			case 'floating-right':
			cookieconsent_setting.position = 'bottom-right'
			break;
		}
	})
	
	$('[name="cookieconsent_layout"]').on('change', function(){
		cookieconsent_setting.button = cookieconsent_setting.button || {};
		delete cookieconsent_setting.button.border
		
		switch($(this).val()){
			case 'block':
			delete cookieconsent_setting.theme
			break;
			
			case 'classic':
			cookieconsent_setting.theme = 'classic'
			break;
			
			case 'edgeless':
			cookieconsent_setting.theme = 'edgeless'
			break;
			
			case 'wire':
			cookieconsent_setting.position = 'bottom-left'
			cookieconsent_setting.static = true
			break;
		}
	})
	
	$('[name="cookieconsent_href"]').on('change', function(){
		cookieconsent_setting.content = cookieconsent_setting.content || {}
		cookieconsent_setting.content.href = $(this).val()
	})
	
	$('[name="cookieconsent_message"]').on('change', function(){
		cookieconsent_setting.content = cookieconsent_setting.content || {}
		cookieconsent_setting.content.message = $(this).val()
	})
	
	$('[name="cookieconsent_dismiss"]').on('change', function(){
		cookieconsent_setting.content = cookieconsent_setting.content || {}
		cookieconsent_setting.content.dismiss = $(this).val()
	})
	
	$('[name="cookieconsent_link"]').on('change', function(){
		cookieconsent_setting.content = cookieconsent_setting.content || {}
		cookieconsent_setting.content.link = $(this).val()
	})
	
	$('#button-trigger-cookieconsent').on('click', triggerPreview )
	
	//$form.on('change', triggerPreview )
	$form.on('submit', handleFormSubmit)
	
	function handleFormSubmit(event){
		event.preventDefault();
		
		var formData = Object.assign({}, $(this).serializeObject(), {cookieconsent_setting: cookieconsent_setting} )
		$.ajax({
			url		: 'index.php?route=module/cookieconsent&token=<?=$token?>',
			method	: 'POST',
			data 	: formData,
			success: function(){
				location = 'index.php?route=extension/module&token=<?=$token?>'
			}
		})
	}
	
	function triggerPreview(){
		eraseCookie('cookieconsent_status')
		
		if(isPopupOpen()){
			destroyPopup()
		}
		
		openPopup()
	}
	
	function isPopupOpen(){
		return popup && popup.isOpen()
	}
	
	function destroyPopup(){
		popup.destroy();
	}
	
	function openPopup(){
		window.cookieconsent.initialise( cookieconsent_setting, function(_popup){
			popup = _popup
		})
	}
	
	function createCookie(name,value,days) {
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path=/";
	}

	function readCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}

	function eraseCookie(name) {
		createCookie(name,"",-1);
	}
	
	jQuery.fn.serializeObject = function() {
		var arrayData, objectData;
		arrayData = this.serializeArray();
		objectData = {};
		
		$.each(arrayData, function() {
			var value;
			
			if (this.value != null) {
				value = this.value;
				} else {
				value = '';
			}
			
			if (objectData[this.name] != null) {
				if (!objectData[this.name].push) {
					objectData[this.name] = [objectData[this.name]];
				}
				
				objectData[this.name].push(value);
				} else {
				objectData[this.name] = value;
			}
		});
		
		return objectData;
	};
</script>
<?php echo $footer; ?>