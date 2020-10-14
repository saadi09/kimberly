<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menus extends MY_Controller {

    /*==== ADD ADMIN SIDEBAR MENU ====*/
	public function add_menu()
	{
		if ($this->isLoggedIn()) {
            $group = $this->session->userdata['role'];
		    $data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['parents'] = $this->Menu_model->getMenuParents('menus');
			$data['fonts'] = $this->Settings_model->getAll('fonts');
			$data['routes'] = $this->Menu_model->get_all_routes();
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Add Menu";
			$this->load->view('backend/menus/add_menu',$data);
		} else {
			redirect(base_url());
		}
	}

	/*===== SAVE MENU ITEM VIA AJAX CALL =====*/
	public function save_menu()
	{
		if ($_POST) {
			$config = array(
				array(
					'field' => 'parent',
					'label' => 'Parent',
					'rules' => 'trim|required'
				),
				array(
					'field' => 'name',
					'label' => 'Name',
					'rules' => 'trim|required'
				)
			);
			$this->form_validation->set_rules($config);
			if ($this->form_validation->run() == false) {
				echo json_encode(array("msg_type" => "error", "message" => validation_errors()));
			} else {
				$this->Menu_model->addMenuItem($_POST, 'menus');
				$redirect_link = base_url('Menus/manage_menus');
				echo json_encode(array("msg_type" => "success", "message" => "Menu Added Successfully", "redirect_link" => $redirect_link));
			}
		}
	}

	/*==== EDIT ADMIN SIDEBAR MENU =====*/
	public function edit_menu()
	{
		if ($this->isLoggedIn()) {
			$group = $this->session->userdata['role'];
		    $menuId = $this->uri->segment(3);
		    $data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['parents'] = $this->Menu_model->getMenuParents('menus');
			$data['menu_item'] = $this->Menu_model->getMenuItemDetail('menus', $menuId);
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Edit Admin Menu";
			$this->load->view('backend/menus/edit_menu',$data);
		} else {
			redirect(base_url());
		}
	}

	/*===== SAVE EDIT ADMIN MENU VIA AJAX =====*/
	public function save_admin_edit_menu()
	{
		if ($_POST) {
			$config = array(
				array(
					'field' => 'parent',
					'label' => 'Parent',
					'rules' => 'trim|required'
				),
				array(
					'field' => 'name',
					'label' => 'Name',
					'rules' => 'trim|required'
				)
			);
			$this->form_validation->set_rules($config);
			if ($this->form_validation->run() == false) {
				echo json_encode(array("msg_type" => "error", "message" => validation_errors()));
			} else {
				$id = $this->input->post('id');
				$this->Menu_model->updateMenuItem($_POST, $id, 'menus');
				$redirect_link = base_url('Menus/manage_menus');
				echo json_encode(array("msg_type" => "success", "message" => "Menu Updated Successfully", "redirect_link" => $redirect_link));
			}
		}
	}

	/*==== DEL ADMIN SIDEBAR MENU ====*/
	public function del_menu()
	{
		if ($this->isLoggedIn()) {
			$menuId = $this->input->post('id');
			$response = $this->Menu_model->delete_menu($menuId);
			if($response == true)
            {
                echo json_encode(array('msg_type'=>'success','message'=>'Menu Deleted Successfully..!'));
            }
            else {
                echo json_encode(array('msg_type'=>'error','message'=>'Something Went Wrong'));
            }
		} else {
			redirect(base_url());
		}
	}

	public function test()
    {
        $dep_id = $this->input->post('id');
        $response = $this->Department_model->delete_department($dep_id);
        if($response == TRUE) {
            echo json_encode(array('msg_type'=>'success','message'=>'Department Deleted Successfully..!'));
        }else{
            echo json_encode(array('msg_type'=>'error','message'=>'Something Went Wrong'));
        }
    }

	/*==== MANAGE ADMIN SIDEBAR MENU ====*/
	public function manage_menus()
	{
		if ($this->isLoggedIn()) {
            $group = $this->session->userdata['role'];
		    $data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['menu_items'] = $this->Menu_model->getAllMenuItems('menus');
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Manage Admin Menu";
			$this->load->view('backend/menus/manage_menus',$data);
		} else {
			redirect(base_url());
		}
	}


	/*====== MENU ROUTES =======*/
	public function menus_routes()
	{
		if ($this->isLoggedIn()) {
			$group = $this->session->userdata['role'];
			$data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['routes'] = $this->Menu_model->get_all_routes();
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Manage Menus Routes";
			$this->load->view('backend/menus/menus_routes',$data);
		} else {
			redirect(base_url());
		}
	}

	/*======= ADD MENU ROUTE ========*/
	public function add_menu_route()
	{
		if ($this->isLoggedIn()) {
			$group = $this->session->userdata['role'];
			$data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['parents'] = $this->Menu_model->getMenuParents('menus');
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Add Menu Route";
			$this->load->view('backend/menus/add_menu_route',$data);
		} else {
			redirect(base_url());
		}
	}

	/*====== SAVE MENU ROUTE ======*/
	public function save_menu_route()
	{
		if ($_POST) {
			$config = array(
				array(
					'field' => 'label',
					'label' => 'Label',
					'rules' => 'trim|required'
				),
				array(
					'field' => 'route',
					'label' => 'Route',
					'rules' => 'trim|required'
				)
			);
			$this->form_validation->set_rules($config);
			if ($this->form_validation->run() == false) {
				echo json_encode(array("msg_type" => "error", "message" => validation_errors()));
			} else {
				$this->Menu_model->add_route($_POST);
				$redirect_link = base_url('Menus/menus_routes');
				echo json_encode(array("msg_type" => "success", "message" => "Route Added Successfully", "redirect_link" => $redirect_link));
			}
		}
	}

	/*====== EDIT MENU ROUTE =======*/
	public function edit_menu_route()
	{
		if ($this->isLoggedIn()) {
			$route_id = $this->uri->segment(3);
			$group = $this->session->userdata['role'];
			$data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['route'] = $this->Menu_model->get_route_by_id($route_id);
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name']." | Add Menu Route";
			$this->load->view('backend/menus/edit_menu_route',$data);
		} else {
			redirect(base_url());
		}
	}

	/*====== SAVE EDIT MENU ROUTE  ======*/
	public function save_edit_menu_route()
	{
		if ($_POST) {
			$config = array(
				array(
					'field' => 'label',
					'label' => 'Label',
					'rules' => 'trim|required'
				),
				array(
					'field' => 'route',
					'label' => 'Route',
					'rules' => 'trim|required'
				)
			);
			$this->form_validation->set_rules($config);
			if ($this->form_validation->run() == false) {
				echo json_encode(array("msg_type" => "error", "message" => validation_errors()));
			} else {
				$route_id = $this->input->post('route_id');
				$this->Menu_model->edit_menu_route($_POST, $route_id);
				$redirect_link = base_url('Menus/menus_routes');
				echo json_encode(array("msg_type" => "success", "message" => "Route Updated Successfully", "redirect_link" => $redirect_link));
			}
		}
	}
}
