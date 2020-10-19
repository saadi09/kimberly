<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
class Items extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Items_model');
        $this->load->model('Menu_model');
        $this->load->library('ciqrcode');
    }

    public function index()
    {
        $group = $this->session->userdata['role'];
        $data['menu'] = $this->Menu_model->getMenuItems($group);
        $data['items'] = $this->Items_model->getAllItems();
        $data['company_info'] = $this->Settings_model->get_company_info();
        $data['title'] = $data['company_info']['name']." | Dashboard";
        $this->load->view('backend/items/index', $data);
    }

    public function add()
    {
        $group = $this->session->userdata['role'];
        $data['menu'] = $this->Menu_model->getMenuItems($group);
        $data['company_info'] = $this->Settings_model->get_company_info();
        $data['title'] = $data['company_info']['name']." | Add Item";
        if($_POST)
        {
            $item_id=$this->Items_model->saveItem($_POST);
            $qr_image=$this->generateQR($_POST);
            $this->Items_model->updateQR($item_id, $qr_image);
            redirect(base_url().'items/index');
        }
        else
        {
            
            $this->load->view('backend/items/add', $data);
        }
    }

    public function generateQR($data)
    {
        $qr_image='qr-code'.date('Y-m-d-h-i-s').'.png';
        $params=$data;
        $params['level'] = 'H';
        $params['size'] = 20;
        $params['savename']=FCPATH.'uploads/qrcodes/'.$qr_image;
        $this->ciqrcode->generate($params);
        return $qr_image;
    }

    public function view()
    {
        $id=$this->uri->segment(3);
        $group = $this->session->userdata['role'];
        $data['menu'] = $this->Menu_model->getMenuItems($group);
        $data['item'] = $this->Items_model->getItemById($id);
        $data['company_info'] = $this->Settings_model->get_company_info();
        $data['title'] = $data['company_info']['name']." | Item Detail";
        $this->load->view('backend/items/view', $data);
    }

    public function edit()
    {

    }

    public function del()
    {

    }

    public function inspect()
    {
        // load inspection view
        $id=$this->uri->segment(3);
        
    }

    public function getItemById()
    {

    }

    public function getAllItems()
    {

    }

    
}
