<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
class Inventory extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('inventory');
    }

    public function index()
    {

    }

    
}
