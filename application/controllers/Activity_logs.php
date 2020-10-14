<?php
/**
 * Created by PhpStorm.
 * User: Saadi
 * Date: 3/22/2019
 * Time: 3:26 AM
 */
class Activity_logs extends MY_Controller
{

    /*===== GET ALL ACTIVITY LOGS ======*/
    public function index()
    {
        if($this->isLoggedIn())
        {
            $group = $this->session->userdata['role'];
            $data['menu'] = $this->Menu_model->getMenuItems($group);
            $data['users'] = $this->Activity_logs_model->get_all_active_users();
            $data['company_info'] = $this->Settings_model->get_company_info();
            $data['title'] = $data['company_info']['name'] . " | Activity Logs";
            $this->load->view("backend/activity_logs/activity_logs", $data);
        }
        else {
            redirect(base_url());
        }
    }


    /*===== GET ALL ACTIVITY LOGS THROUGH AJAX ======*/
    public function get_logs()
    {
        $list = $this->Activity_logs_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $logs) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $logs->user;
            $row[] = $logs->action_controller;
            $row[] = $logs->action_method;
            $row[] = date('l, j-F-Y h:i:sa',strtotime($logs->date_time));
            $row[] = '<a href="'.base_url().'#'.$logs->log_id.'" type="button" class="btn bg-gradient-primary btn-sm" title="View"><li class="fa fa-eye"></li></a>';
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->Activity_logs_model->count_all('activity_logs'),
            "recordsFiltered" => $this->Activity_logs_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }

    /*======= CUSTOM SEARCH =========*/
    public function custom_search()
	{
		if($this->isLoggedIn())
		{
			$group = $this->session->userdata['role'];
			$data['menu'] = $this->Menu_model->getMenuItems($group);
			$data['users'] = $this->Activity_logs_model->get_all_active_users();
			$data['company_info'] = $this->Settings_model->get_company_info();
			$data['title'] = $data['company_info']['name'] . " | Activity Logs";
			$this->load->view("backend/activity_logs/custom_search", $data);
		}
		else {
			redirect(base_url());
		}
	}

	public function _custom_search()
    {
        if($this->isLoggedIn())
        {
           if($_POST)
           {
               $config = array(
                   array(
                       'field' => 'user_id',
                       'label' => 'User',
                       'rules' => 'trim|required'
                   ),
                   array(
                       'field' => 'log_date',
                       'label' => 'Date',
                       'rules' => 'trim|required'
                   )
               );
               $this->form_validation->set_rules($config);
               if($this->form_validation->run() == false)
               {
                   echo json_encode(array("msg_type" => "error", "message" => validation_errors()));
               }
               else {
                   echo json_encode(array("msg_type" => "success", "message" => "Data retrieved successfully"));
               }
           }
        }
    }

    public function emp_log_detail()
    {
        $user_id = $this->uri->segment(3);
        $date = $this->uri->segment(4);
        $data['logs'] = $this->Activity_logs_model->custom_search($user_id, $date);
        $data['company_info'] = $this->Settings_model->get_company_info();
        $data['title'] = $data['company_info']['name'] . " | Activity Logs";
        $this->load->view('admin/custom_Activity', $data);
    }
}
