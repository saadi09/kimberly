<?php
/**
 * Created by PhpStorm.
 * User: Syed
 * Date: 23/06/2018
 * Time: 5:13 AM
 */
class Users_model extends CI_Model
{

    /*====== GET ALL USER THROUGH AJAX ========*/
    public function get_all_users_old()
    {
       $this->db->select('users.*, groups.type')
            ->from('users')
            ->join('groups','users.role = groups.group_id', 'left')
            ->order_by('users.id', 'desc');
            //->get()
            //->result_array();
       //echo '<pre>'; print_r($query); exit;
        $i = 0;

        foreach ($this->column as $item) // loop column
        {
            if (isset($_POST['search']['value'])) // if datatable send POST for search
            {

                if ($i === 0) // first loop
                {
                    $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                    $this->db->like($item, $_POST['search']['value']);
                } else {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if (count($this->column) - 1 == $i) //last loop
                    $this->db->group_end(); //close bracket
            }
            $column[$i] = $item; // set column array variable to order processing
            $i++;
        }

        if (isset($_POST['order'])) // here order processing
        {
            $this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }


    /*====== GET ALL USERS ======*/
     public function get_all_users()
     {
         $query = $this->db->select('users.*, groups.type')
             ->from('users')
             ->join('groups','users.role = groups.group_id', 'left')
             ->order_by('users.id', 'desc')
             ->get()
             ->result_array();
         return $query;
     }

     /*====== RESET PASSWORD ======*/
    public function reset_password($user_id)
    {
        //Hash String theideahosting321*
        $input = array(
            'password'  => 'ee4513854ef1929476a62666a5d44396'
        );
        $this->db->where('id', $user_id)->update('users', $input);
    }

    /*===== GET USER LOGIN LOGS =====*/
    public function get_user_login_logs($user_id)
    {
       $st = $this->db->select('*')->from('user_logs')->where('user_id', $user_id)->get()->result_array();
       return $st;
    }

    /*===== GET USER LOGIN LOG DETAIL =====*/
    public function get_user_log_detail($log_id)
    {
        $st = $this->db->select('*')
            ->from('user_logs as ul, users as u')
            ->WHERE('ul.user_id = u.user_id')
            ->WHERE('ul.log_id', $log_id)
            ->get()
            ->result_array();
        return $st[0];
    }

    /*===== ADD GROUP =====*/
    public function add_group($data)
    {
        $item =  array(
            'type'        => $data['name'],
            'created_by'   => $this->session->userdata['id']
        );
        $this->db->insert('groups', $item);
    }

    /*===== UPDATE GROUP =====*/
    public function update_group($data, $id)
    {
        $item = array(
            'type'       => $data['name'],
            'update_at'  => date("Y-m-d"),
			'update_by'  => $this->session->userdata['id']
        );
        $this->db->WHERE('group_id', $id)->UPDATE('groups', $item);
    }

    public function get_all_user_groups()
    {
        $query = $this->db->select('g.*, u.name')
            ->from('groups as g, users as u')
            ->where('g.created_by = u.id')
            ->get()->result_array();
        return $query;
    }

    
    /*=====  DELETE GROUP =====*/
    public function delete_group($id)
    {
        $st = $this->db->select('*')->from('user_permission')->where('group_id', $id)->get()->result_array();
        if(count($st) > 0) {
           return false;
            exit;
        }
        else {
          $this->db->query('DELETE FROM groups WHERE group_id='.$id);
          return true;
        }   
    }

    /*===== GET GROUP BY ID ======*/
    public function get_group_byId($group_id)
    {
        $st = $this->db->select('*')->from('groups')->where('group_id', $group_id)->get()->result_array();
        return $st[0];
    }


    /*===== CREATE USER ACCOUNT =====*/
    public function create_account($data)
    {
        $st = $this->db->select('*')->from('users')->WHERE('email', $data['email'])->get()->result_array();
        if (count($st) > 0) {
            echo json_encode(array("msg_type" => "error", "message" => "Email already exist in Database"));
            exit;
        }
        else
        {
            $item = array(
                'name'        => $data['name'],
                'email'       => $data['email'],
                'password'    => md5(sha1('theideahosting321*')),  //Default Password theideahosting321*
                'role'        => $data['group_id'],
                'instance_id' => $data['instance_id'],
                'hash'        => md5(sha1($data['email'])),
                'added_by'    => $this->session->userdata['id']
            );
            $this->db->insert('users', $item);
            $user_id = $this->db->insert_id();
            return $user_id;
        }
    }

    
    /*===== UPDATE USER GROUP ======*/
    public function update_user_group($data, $id)
    {
       $group = array(
           'name'       => $data['name'],
           'email'      => $data['email'],
           'update_by'  => $this->session->userdata['id'],
           'update_at'  => date('Y-m-d H:i:s')
       );
       $this->db->where('id', $id)->update('users', $group);
    }
   
    /*===== GET USER BY ID =====*/
    public  function get_user_by_id($id)
    {
        $st = $this->db->select('*')
            ->from('users')
            ->where('id',$id)
            ->get()
            ->result();
        return $st[0];
    }


    function get_group_permissions($sub_menu_id, $group_id)
    {
        return $this->db->where('sub_menu_id',$sub_menu_id)
            ->where('group_id', $group_id)
            ->from('user_permission')
            ->get()
            ->result();
    }

    /*===== ADD GROUP PERMISSION =====*/
    public function add_group_permission($data)
    {
        //$fuck = $data['permission'];
        $main_menu_id = $data['permission'][0]['main_menu_id'];
        $group_id = $data['permission'][0]['group_id'];
        $st = $this->db->select('*')
            ->from('user_permission')
            ->where('main_menu_id',$main_menu_id)
            ->where('group_id', $group_id)
            ->get()
            ->result_array();
        //echo '<pre>'; print_r($st); exit;
        if(count($st) > 0)
        {
            //echo "fuck you if"; exit;
            for ($i=0; $i <count($data['permission']); $i++)
            {
                $d=$this->db->select('*')->from('user_permission')
                    ->where('main_menu_id',$data['permission'][$i]['main_menu_id'])
                    ->where('sub_menu_id',$data['permission'][$i]['sub_menu_id'])
                    ->where('group_id', $data['permission'][$i]['group_id'])
                    ->get()
                    ->result_array();
                //echo '<pre>'; print_r($d); exit;
                if(count($d)>0)
                {
                    //echo "fuck you inner if";
                    $this->db->where('sub_menu_id',$data['permission'][$i]['sub_menu_id'])
                        ->where('group_id', $data['permission'][$i]['group_id'])
                        ->update('user_permission',array('permission' => $data['permission'][$i]['permission']));
                }
                else
                {   //echo "fuck you inner else";
                    $data['permission'][$i]['date_time'] = date('Y-m-d H:i:s');
                    $data['permission'][$i]['added_by'] = $this->session->userdata['name'];
                    $this->db->insert('user_permission',$data['permission'][$i]);
                }
            }
        }
        else {

            //echo "Fuck you else"; exit;
            for ($i=0; $i <count($data['permission']); $i++) :
                $data['permission'][$i]['date_time'] = date('Y-m-d H:i:s');
                $data['permission'][$i]['added_by'] = $this->session->userdata['name'];
                $this->db->insert('user_permission',$data['permission'][$i]);
            endfor;
        }
    }

    /*===== DENIED ALL CHILD AND CHILD PARENT =====*/
    public function denied($group_id, $main_menu_id)
    {
         $this->db->WHERE('group_id', $group_id)->WHERE('main_menu_id', $main_menu_id)->DELETE('user_permission');
    }

    /*====== GET ALL EMPLOYEE EMAILS =======*/
    public function get_all_emp_name_and_emails()
    {
        $st = $this->db->select('id, emp_name, emp_primary_email')->from('emp_info')->get()->result_array();
        return $st;
    }

    /*===== GET EMPLOYEE NAME AND EMAIL BY ID ======*/
    public function get_emp_name_and_email_by_id($emp_id)
    {
        $st =$this->db->select('emp_name, emp_primary_email')->from('emp_info')->where('id', $emp_id)->get()->result_array();
        return $st[0];
    }

    /*===== ACTIVE USER =====*/
    public function active_user($id)
    {
        $item = array(
            'status'               => 'Active',
            'mobile_login_attempt' => 0,
            'update_by'            => $this->session->userdata['user_id'],
            'update_at'            => date('Y-m-d H:i:s')
        );
        $this->db->where('user_id', $id)->update('users', $item);
    }

    /*===== SUSPEND USER ======*/
    public function suspend_user($id)
    {
       $item = array(
            'status'    => 'suspend',
            'update_by' => $this->session->userdata['user_id'],
            'update_at' => date('Y-m-d H:i:s')
        );
        $this->db->where('user_id', $id)->update('users', $item);
    }







}
