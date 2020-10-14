<?php

class Dashboard extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	/*======= DASHBOARD ========*/
	public function index()
	{
		if($this->isLoggedIn())
		{
			$group = $this->session->userdata['role'];
			$data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Dashboard";
			$this->load->view('backend/dashboard', $data);
		}
		else {
			redirect(base_url('login'));
		}
	}

	/*======= CODE EDITOR ======*/
	public function code_editor()
	{
		if($this->isLoggedIn())
		{
			$group = $this->session->userdata['role'];
			$data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Code Editor";
			$this->load->view('backend/code_editor', $data);
		}
		else {
			redirect(base_url('login'));
		}
	}
}
