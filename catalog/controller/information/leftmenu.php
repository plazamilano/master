<?php
class ControllerInformationLeftMenu extends Controller {
	public function index() {
		
		$data = array();
		
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['informations'] = $this->model_catalog_information->getInformations();

	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/left_menu.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/information/left_menu.tpl', $data);
		} else {
			return '';
		}
	}			
		
}