<?php
class ControllerInvoiceHotel extends Controller {
	public function index() {
		$this->load->language('invoice/hotel');

		$this->document->setTitle($this->language->get('heading_title'));

		if (isset($this->request->get['entry_update_date'])) {
			$entry_update_date = $this->request->get['entry_update_date'];
		} else {
			$entry_update_date = '';
		}

		if (isset($this->request->get['entry_update_time'])) {
			$entry_update_time = $this->request->get['entry_update_time'];
		} else {
			$entry_update_time = '';
		}

		if (isset($this->request->get['entry_actual_date'])) {
			$entry_actual_date = $this->request->get['entry_actual_date'];
		} else {
			$entry_actual_date = '';
		}
                
                if (isset($this->request->get['entry_delivery_add'])) {
			$entry_delivery_add = $this->request->get['entry_delivery_add'];
		} else {
			$entry_delivery_add = '';
		}

                if (isset($this->request->get['entry_product'])) {
                    $entry_product = $this->request->get['entry_product'];
                } else {
                    $entry_product = '';
                }
                
                if (isset($this->request->get['entry_desc'])) {
                    $entry_desc = $this->request->get['entry_desc'];
                } else {
                    $entry_desc = '';
                }
                
                if (isset($this->request->get['entry_price'])) {
                    $entry_price = $this->request->get['entry_price'];
                } else {
                    $entry_price = '';
                }
                
                if (isset($this->request->get['entry_fieldtax'])) {
                    $entry_fieldtax = $this->request->get['entry_fieldtax'];
                } else {
                    $entry_fieldtax = '';
                }
                
                if (isset($this->request->get['entry_fee'])) {
                    $entry_fee = $this->request->get['entry_fee'];
                } else {
                    $entry_fee = '';
                }
                
                if (isset($this->request->get['entry_vat18'])) {
                    $entry_vat18 = $this->request->get['entry_vat18'];
                } else {
                    $entry_vat18 = '';
                }
                
                if (isset($this->request->get['entry_vat8'])) {
                    $entry_vat8 = $this->request->get['entry_vat8'];
                } else {
                    $entry_vat8 = '';
                }
                
                if (isset($this->request->get['entry_total'])) {
                    $entry_total = $this->request->get['entry_total'];
                } else {
                    $entry_total = '';
                }
                
                if (isset($this->request->get['entry_inv_text'])) {
                    $entry_inv_text = $this->request->get['entry_inv_text'];
                } else {
                    $entry_inv_text = '';
                }

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

                
                //Start Create QueryString
		$url = '';

		if (isset($this->request->get['filter_date_start'])) {
			$url .= '&filter_date_start=' . $this->request->get['filter_date_start'];
		}

		if (isset($this->request->get['filter_date_end'])) {
			$url .= '&filter_date_end=' . $this->request->get['filter_date_end'];
		}

		if (isset($this->request->get['filter_order_status_id'])) {
			$url .= '&filter_order_status_id=' . $this->request->get['filter_order_status_id'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
                //End Create QueryString
                
                
                
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('invoice/hotel', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		$this->load->model('invoice/hotel');

		$data['marketings'] = array();

		$filter_data = array(
			'filter_date_start'	 => $filter_date_start,
			'filter_date_end'	 => $filter_date_end,
			'filter_order_status_id' => $filter_order_status_id,
			'start'                  => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit'                  => $this->config->get('config_limit_admin')
		);
                
                
                $marketing_total = $this->model_invoice_hotel->getTotalMarketing($filter_data);
                
                $results = $this->model_invoice_hotel->getMarketing($filter_data);
                
                
		//$marketing_total = $this->model_report_marketing->getTotalMarketing($filter_data);

		//$results = $this->model_report_marketing->getMarketing($filter_data);

		foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('marketing/marketing/edit', 'token=' . $this->session->data['token'] . '&marketing_id=' . $result['marketing_id'] . $url, 'SSL')
			);

			$data['marketings'][] = array(
				'campaign' => $result['campaign'],
				'code'     => $result['code'],
				'clicks'   => $result['clicks'],
				'orders'   => $result['orders'],
				'total'    => $this->currency->format($result['total'], $this->config->get('config_currency')),
				'action'   => $action
			);
		}

                
                
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');
		$data['text_all_status'] = $this->language->get('text_all_status');
		$data['column_campaign'] = $this->language->get('column_campaign');
		$data['column_code'] = $this->language->get('column_code');
		$data['column_clicks'] = $this->language->get('column_clicks');
		$data['column_orders'] = $this->language->get('column_orders');
		$data['column_total'] = $this->language->get('column_total');
		$data['column_action'] = $this->language->get('column_action');
		$data['entry_update_date'] = $this->language->get('entry_update_date');
		$data['entry_update_time'] = $this->language->get('entry_update_time');
		$data['entry_actual_date'] = $this->language->get('entry_actual_date');
                $data['entry_delivery_add'] = $this->language->get('entry_delivery_add');
		$data['entry_product'] = $this->language->get('entry_product');
		$data['entry_desc'] = $this->language->get('entry_desc');
                $data['entry_price'] = $this->language->get('entry_price');
		$data['entry_fieldtax'] = $this->language->get('entry_fieldtax');
                $data['entry_fee'] = $this->language->get('entry_fee');
		$data['entry_vat18'] = $this->language->get('entry_vat18');
                $data['entry_vat8'] = $this->language->get('entry_vat8');
		$data['entry_total'] = $this->language->get('entry_total');
		$data['entry_inv_text'] = $this->language->get('entry_inv_text');

		$data['button_filter'] = $this->language->get('button_filter');

		$data['token'] = $this->session->data['token'];

		$this->load->model('localisation/order_status');

		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

		$url = '';

		if (isset($this->request->get['filter_date_start'])) {
			$url .= '&filter_date_start=' . $this->request->get['filter_date_start'];
		}

		if (isset($this->request->get['filter_date_end'])) {
			$url .= '&filter_date_end=' . $this->request->get['filter_date_end'];
		}

		if (isset($this->request->get['filter_order_status_id'])) {
			$url .= '&filter_order_status_id=' . $this->request->get['filter_order_status_id'];
		}

		$pagination = new Pagination();
		$pagination->total = $marketing_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('invoice/hotel', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($marketing_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($marketing_total - $this->config->get('config_limit_admin'))) ? $marketing_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $marketing_total, ceil($marketing_total / $this->config->get('config_limit_admin')));

		$data['filter_date_start'] = $filter_date_start;
		$data['filter_date_end'] = $filter_date_end;
		$data['filter_order_status_id'] = $filter_order_status_id;
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('invoice/hotel.tpl', $data));
	}
}