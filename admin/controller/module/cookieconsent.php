<?php
class ControllerModulecookieconsent extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/cookieconsent');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('cookieconsent', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		$data['entry_status'] = $this->language->get('entry_status');
 		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['entry_position'] = $this->language->get('entry_position');
		$data['text_banner_bottom'] = $this->language->get('text_banner_bottom');
		$data['text_banner_top'] = $this->language->get('text_banner_top');
		$data['text_banner_top_pushdown'] = $this->language->get('text_banner_top_pushdown');
		$data['text_floating_right'] = $this->language->get('text_floating_right');
		$data['text_floating_left'] = $this->language->get('text_floating_left');
		$data['entry_layout'] = $this->language->get('entry_layout');
		$data['text_block'] = $this->language->get('text_block');
		$data['text_classic'] = $this->language->get('text_classic');
		$data['text_edgeless'] = $this->language->get('text_edgeless');
		$data['text_wire'] = $this->language->get('text_wire');
		$data['entry_banner_color'] = $this->language->get('entry_banner_color');
		$data['entry_banner_text_color'] = $this->language->get('entry_banner_text_color');
		$data['entry_button_color'] = $this->language->get('entry_button_color');
		$data['entry_button_text_color'] = $this->language->get('entry_button_text_color');
		$data['entry_link'] = $this->language->get('entry_link');
		$data['entry_message'] = $this->language->get('entry_message');
		$data['entry_dismiss'] = $this->language->get('entry_dismiss');
		$data['entry_privacy'] = $this->language->get('entry_privacy');
	
		
		
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_edit'] = $this->language->get('text_edit');

		$data['entry_admin'] = $this->language->get('entry_admin');
		$data['entry_status'] = $this->language->get('entry_status');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/cookieconsent', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('module/cookieconsent', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');


		//Load default config
		if(!$this->config->get('cookieconsent_setting')){
			$this->config->load('cookieconsent');
		}

		if (isset($this->request->post['cookieconsent_status'])) {
			$data['cookieconsent_status'] = $this->request->post['cookieconsent_status'];
		} else {
			$data['cookieconsent_status'] = $this->config->get('cookieconsent_status');
		}


		if(isset($this->request->post['cookieconsent_position'])){
			$data['cookieconsent_position'] = $this->request->post['cookieconsent_position'];
		}else{
			$data['cookieconsent_position'] = $this->config->get('cookieconsent_position');
		}


		if(isset($this->request->post['cookieconsent_layout'])){
			$data['cookieconsent_layout'] = $this->request->post['cookieconsent_layout'];
		}else{
			$data['cookieconsent_layout'] = $this->config->get('cookieconsent_layout');
		}


		if(isset($this->request->post['cookieconsent_href'])){
			$data['cookieconsent_href'] = $this->request->post['cookieconsent_href'];
		}else{
			$data['cookieconsent_href'] = $this->config->get('cookieconsent_href');
		}


		if(isset($this->request->post['cookieconsent_message'])){
			$data['cookieconsent_message'] = $this->request->post['cookieconsent_message'];
		}else{
			$data['cookieconsent_message'] = $this->config->get('cookieconsent_message');
		}

		if(isset($this->request->post['cookieconsent_dismiss'])){
			$data['cookieconsent_dismiss'] = $this->request->post['cookieconsent_dismiss'];
		}else{
			$data['cookieconsent_dismiss'] = $this->config->get('cookieconsent_dismiss');
		}

		if(isset($this->request->post['cookieconsent_link'])){
			$data['cookieconsent_link'] = $this->request->post['cookieconsent_link'];
		}else{
			$data['cookieconsent_link'] = $this->config->get('cookieconsent_link');
		}

		if (isset($this->request->post['cookieconsent_setting'])) {
			$data['cookieconsent_setting'] = $this->request->post['cookieconsent_setting'];
		} else{
			$data['cookieconsent_setting'] = $this->config->get('cookieconsent_setting');
		}

		$data['token'] = $this->session->data['token'];
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/cookieconsent.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/cookieconsent')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}