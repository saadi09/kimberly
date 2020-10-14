<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: saadi
 * Date: 3/30/2018
 * Time: 4:38 AM
 * Author : Technologicx
 * Email  : admin@technologicx.com
 **/
class Admin_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library("geolib");
    }

    ///////////////////////////////////////
    ///                                 ///
    ///      Counter Section start      ///
    ///                                 ///
    ///////////////////////////////////////

    /*==== GET COUNTERS ====*/
    public function getCounters()
    {
        $st = $this->db->query('SELECT COUNT(*) as count from product_information')->result_array();
        $data['products'] = $st[0]['count'];
        $st = $this->db->query('SELECT COUNT(*) as count from customer_information')->result_array();
        $data['customers'] = $st[0]['count'];
        $st = $this->db->query('SELECT COUNT(*) as count from invoice WHERE paid_amount=\'0.00\'')->result_array();
        $data['unpaid_invoice'] = $st[0]['count'];
        $st = $this->db->query('SELECT COUNT(*) as count from invoice WHERE paid_amount = total_amount')->result_array();
        $data['paid_invoice'] = $st[0]['count'];
        $today = date('m');
        $st = $this->db->query("SELECT SUM(total_amount) AS total, SUM(paid_amount) AS paid FROM invoice WHERE total_amount = paid_amount
        AND MONTH(inv_date) = '$today'")->result_array();
        $data['income'] = $st[0]['total'];
        $st = $this->db->query("SELECT SUM(grand_total) as total from purchases WHERE MONTH(purchase_date) = '$today'")->result_array();
        $data['expense'] = $st[0]['total'];
        $today_date = date('d');
        $st = $this->db->query("SELECT SUM(total_amount) AS total, SUM(paid_amount) AS paid FROM invoice WHERE total_amount = paid_amount
        AND DAY(inv_date) = '$today_date'")->result_array();
        $data['today_sale'] = $st[0]['total'];
        $st = $this->db->query("SELECT SUM(grand_total) as total from purchases WHERE DAY(purchase_date) = '$today_date'")->result_array();
        $data['today_purchase'] = $st[0]['total'];
        return $data;
    }

    /*===== GET LAST 5 SALES ======*/
    public function get_last_sales()
    {
        return $this->db->select("i.*, c.name customer_name")
            ->join('customer_information c', "c.id = i.customer_id", 'left')
            ->order_by('inv_date', 'desc')
            ->limit(5)
            ->get("invoice i")->result();
    }

    /*===== GET CURRENT MONTH SALES =====*/
    public function get_current_month_sale()
    {
        $month = date('m');
        return $this->db->select("i.*, c.name customer_name")
            ->where('MONTH(inv_date)', $month)
            ->join('customer_information c', "c.id = i.customer_id", 'left')
            ->get("invoice i")->result();
    }

    /*===== GET CURRENT MONTH PURCHASES ======*/
    public function get_current_month_purchases()
    {
        $month = date('m');
        return $this->db->select("p.*, s.name supplier_name")
            ->where('MONTH(purchase_date)', $month)
            ->join('supplier_information s', "s.id = p.supplier_id", 'left')
            ->get("purchases p")
            ->result();
    }

    /*====== GET TODAY SALES REPORT ======*/
    public function get_today_sales()
    {
        $today_date = date('d');
        return $this->db->select("i.*, c.name customer_name")
            ->where('Day(inv_date)', $today_date)
            ->join('customer_information c', "c.id = i.customer_id", 'left')
            ->get("invoice i")->result();
    }

    /*====== GET TODAY PURCHASE REPORT ======*/
    public function get_today_purchases()
    {
        $today_date = date('d');
        return $this->db->select("p.*, s.name supplier_name")
            ->where('Day(purchase_date)', $today_date)
            ->join('supplier_information s', "s.id = p.supplier_id", 'left')
            ->get("purchases p")
            ->result();
    }

    /*====== GET SALE REPORT CUSTOM DATE WISE =======*/
    public function get_sale_report($data)
    {
        $from_date = $data['start_date'];
        $to_date = $data['end_date'];
        return $this->db->select("i.*, c.name customer_name")
            ->where(["inv_date >=" => $from_date, "inv_date <=" => $to_date])
            ->join('customer_information c', "c.id = i.customer_id", 'left')
            ->get("invoice i")->result();

    }

    /*===== GET SALE REPORT PRODUCT WISE =====*/
    public function get_sale_report_product_wise($data)
    {
        $product = $data['product_id'];
        return $this->db->select("i.*, c.name customer_name")
            ->where('product_id', $product)
            ->join('customer_information c', "c.id = i.customer_id", 'left')
            ->join('invoice_details ii', "ii.invoice_id = i.id", 'left')
            ->get("invoice i")->result();
    }

    /*====== GET PURCHASE REPORT CUSTOM DATE WISE ======*/
    public function get_purchase_report($data)
    {
        $from_date = $data['start_date'];
        $to_date = $data['end_date'];
        return $this->db->select("p.*, s.name supplier_name")
            ->where(["purchase_date >=" => $from_date, "purchase_date <=" => $to_date])
            ->join('supplier_information s', "s.id = p.supplier_id", 'left')
            ->get("purchases p")
            ->result();
    }

    /*===== LAST WEEK PURCHASE ======*/


    /*===== LAST WEEK SALE =====*/


    ///////////////////////////////////////
    ///                                 ///
    ///      Counter Section End        ///
    ///                                 ///
    ///////////////////////////////////////

    ///////////////////////////////////////
    ///                                 ///
    ///     Admin Menu Section Starts   ///
    ///                                 ///
    ///////////////////////////////////////

    /*==== GET MENU PARENTS ====*/
    public function getMenuParents($table)
    {
        return $this->db->select('*')->from($table)->where('parent', 0)->get()->result_array();
    }

    /*==== ADD ADMIN MENU ITEM ====*/
    public function addMenuItem($data, $table)
    {
        $item = array(
            'parent' => $data['parent'],
            'name' => $data['name'],
            'class' => $data['class'],
            'url' => $data['url']
        );

        $this->db->insert($table, $item);
    }

    /*===== ADD CITY/COUNTRY ======*/
    public function add_cc($data)
    {
        $item = array(
            'parent' => $data['parent'],
            'name' => $data['name'],
        );
        $this->db->insert('country_city', $item);
    }

    /*===== UPDATE COUNTRY / CITY =====*/
    public function update_cc($data, $id)
    {
        $item = array(
            'parent' => $data['parent'],
            'name' => $data['name'],
        );
        $this->db->WHERE('id', $id)->update('country_city', $item);
    }

    /*==== UPDATE ADMIN MENU ITEM =====*/
    public function updateMenuItem($data, $menuId, $table)
    {
        $item = array(
            'parent' => $data['parent'],
            'name' => $data['name'],
            'class' => $data['class'],
            'url' => $data['url']
        );

        $this->db->WHERE('id', $menuId)->update($table, $item);
    }

    /*==== GET ADMIN MENU ITEMS =====*/
    public function getMenuItems($table)
    {
        $st = $this->db->select('*')->from($table)->where('parent', 0)->get()->result_array();
        if (count($st) > 0) {
            for ($i = 0; $i < count($st); $i++) {
                $st[$i]['child'] = $this->db->select('*')->from($table)->where('parent', $st[$i]['id'])->get()->result_array();
            }
        } else {
            return false;
        }

        return $st;
    }

    public function get_child($table, $id)
    {
        return $st = $this->db->select('*')->from($table)->where('parent', $id)->get()->result();
    }

    /*==== GET ALL ADMIN MENU ITEMS ====*/
    public function getAllMenuItems($table)
    {
        return $this->db->query("SELECT " . $table . ".*, a.name as parent from " . $table . " left join " . $table . " a on a.id=$table.parent")->result_array();
    }

    /*==== GET MENU ITEM DETAIL ====*/
    public function getMenuItemDetail($table, $menuId)
    {
        $st = $this->db->select('*')->from($table)->WHERE('id', $menuId)->get()->result_array();
        return $st[0];
    }

    /*===== DEL ADMIN MENU =====*/
    public function delAdminMenu($id)
    {
        $this->db->query('DELETE from admin_menu WHERE id=' . $id);
    }

    public function delete_menu($table, $id)
    {
        $this->db->query("DELETE from $table WHERE id='$id'");
    }

    ///////////////////////////////////////
    ///                                 ///
    ///     Admin Menu Section Ends     ///
    ///                                 ///
    ///////////////////////////////////////

    ///////////////////////////////////////
    ///                                 ///
    ///     User CRUD Section Start     ///
    ///                                 ///
    ///////////////////////////////////////

    public function add_user($data)
    {
        $st = $this->db->select('*')->from('users')->WHERE('email', $data['email'])->get()->result_array();
        if (count($st) > 0) {
            return false;
            exit;
        } else {
            $item = array(
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => md5(sha1($data['password'])),
                'role' => $data['role'],
                'hash' => md5(sha1($data['email']))
            );
            $this->db->insert('users', $item);
            $row_id = $this->db->insert_id();
            $this->upload_img('users', $row_id);
            return $row_id;
        }
    }

    /*===== CREATE ADMIN ACCOUNT =====*/
    public function create_account($data)
    {
        $item = array(
            'name' => $data['username'],
            'email' => $data['email'],
            'password' => md5(sha1($data['password'])),
            'role' => $data['role'],
            'hash' => md5(sha1($data['email']))
        );
        $this->db->insert('users', $item);
    }

    ///////////////////////////////////////
    ///                                 ///
    ///     User CRUD Section Ends     ///
    ///                                 ///
    ///////////////////////////////////////

    /*==== FUNCTION GET ALL DATA ====*/
    public function getAll($table)
    {
        return $this->db->select('*')->from($table)->get()->result_array();
    }

    /*==== FUNCTION GET ACTIVE THEME ====*/
    public function getActiveTheme()
    {
        $st = $this->db->select('name')->from('theme')->where('status', 'Active')->get()->result_array();
        return $st[0]['name'];
    }

    /*==== SELECT ACTIVE THEME NAME =====*/
    public function select_active_theme_name()
    {
        $st = $this->db->select('title')->from('theme')->where('status', 'Active')->get()->result_array();
        return $st[0]['title'];
    }

    /*==== FUNCTION GET ACTIVE THEME ID ====*/
    public function getActiveThemeId()
    {
        $st = $this->db->select('*')->from('theme')->where('status', 'Active')->get()->result_array();
        return $st[0]['id'];
    }

    /*==== FUNCTION ACTIVATE THEME ====*/
    public function activateTheme($id)
    {
        $theme = $this->getActiveThemeId();
        $data = array(
            'status' => 'Inactive'
        );
        $this->db->WHERE('id', $theme)->update('theme', $data);

        $data = array(
            'status' => 'Active'
        );
        $this->db->WHERE('id', $id)->update('theme', $data);
    }

    /*==== CHECK OLD PASSWORD ====*/
    public function checkOldPass($email, $oldPass)
    {
        $array = array(
            'email' => $email,
            'password' => $oldPass
        );
        $st = $this->db->select('id')->from('users')->WHERE($array)->get()->result_array();
        return $this->db->affected_rows();
    }

    /*==== UPDATE PASSWORD ====*/
    public function updatePass($id, $pass)
    {
        $update = array(
            'password' => $pass
        );
        $this->db->WHERE('id', $id)->update('users', $update);
    }

    /*==== GET USER ID ====*/
    public function getUserId($email)
    {
        $st = $this->db->select('id')->from('users')->WHERE('email', $email)->get()->result_array();
        return $st[0];
    }

    /*==== GET EMAIL SETTINGS ====*/
    public function getEmailSettings()
    {
        return $this->db->select('*')->from('email_settings')->WHERE('id', 1)->get()->row();
    }

    public function getConfig_Byid($id)
    {
        $st = $this->db->query('SELECT * from email_settings where id=' . $id)->result_array();
        return $st[0];
    }

    /*==== UPDATE SMTP CONFIG ====*/
    public function update_smtp_config($data, $menuId)
    {
        $item = array(
            'host' => $data['host'],
            'port' => $data['port'],
            'email' => $data['email'],
            'password' => $data['password'],
            'sent_email' => $data['sent_email'],
            'sent_title' => $data['sent_title'],
            'reply_email' => $data['reply_email'],
            'reply_title' => $data['reply_title']
        );
        $this->db->WHERE('id', $menuId)->update('email_settings', $item);
    }

    /*===== ADD COMPANY INFO =====*/
    public function add_company_info($data)
    {
        $item = array(
            'name' => $data['name'],
            'email' => $data['email'],
            'contact' => $data['contact'],
            'address' => $data['address'],
            'website' => $data['website'],
        );
        $this->db->insert('company_information', $item);
    }

    /*===== UPDATE COMPANY INFO =====*/
    public function update_company($data, $id)
    {
        $item = array(
            'name' => $data['name'],
            'email' => $data['email'],
            'contact' => $data['contact'],
            'address' => $data['address'],
            'website' => $data['website'],
        );
        $this->db->WHERE('id', $id)->update('company_information', $item);
    }

    public function update_logo($row_id)
    {
        $configUpload['upload_path'] = './uploads/';
        $configUpload['allowed_types'] = 'jpg|png|jpeg';
        $configUpload['max_size'] = '0';
        $configUpload['max_width'] = '0';
        $configUpload['max_height'] = '0';
        $configUpload['encrypt_name'] = true;
        $this->load->library('upload', $configUpload);
        $this->upload->initialize($configUpload);
        if (!$this->upload->do_upload('image')) {
            $uploaddetails = $this->upload->display_errors();
            print_r($uploaddetails);
            exit;
        } else {
            $image_name = $this->upload->data('file_name');
            $this->db->update('company_information', ['logo' => $image_name], ['id' => $row_id]);

        }
    }

    public function get_company_info()
    {
        $st = $this->db->query('SELECT * from company_information where id= 1')->result_array();
        return $st[0];
    }

    /*===== ADD CATEGORY =====*/
    public function add_category($data)
    {
        $item = array(
            'name' => $data['name']
        );
        $this->db->insert('category', $item);
    }

    /*===== UPDATE CATEGORY =====*/
    public function update_category($data, $id)
    {
        $item = array(
            'name' => $data['name']
        );
        $this->db->WHERE('id', $id)->update('category', $item);
    }

    /*==== DELETE SINGLE DATA =====*/
    public function delete($table, $id)
    {
        $this->db->query("DELETE from $table WHERE id='$id'");
    }

    /*===== GET RECORD BY ID =====*/
    public function getById($table, $id)
    {
        $st = $this->db->select('*')->from($table)->WHERE('id', $id)->get()->result_array();
        return $st[0];
    }

    public function get_user_by_id($id)
    {
        $st = $this->db->select('*')->from('detection')
            ->WHERE('user_id', $id)
            ->where_in('status', array('Banned', 'Blocked'))
            ->get()
            ->row_array();
        //print_r($st);
        //echo $this->db->last_query();
        return $st;
    }

   /*===== ADD ADMIN =====*/
   public function add_admin($data)
   {
       $st = $this->db->select('*')->from('admin_info')->WHERE('email', $data['email'])->get()->result_array();
       if (count($st) > 0) {
           return false;
           exit;
       }
       else {
           $item = array(
               'name'       => $data['name'],
               'email'      => $data['email'],
               'mobile_no'  => $data['mobile_no'],
           );
           $this->db->insert('admin_info', $item);
           $row_id = $this->db->insert_id();
           $this->upload_img($row_id);
           $item1 = array(
               'name' => $data['name'],
               'email' => $data['email'],
               'password' => 'c6d8dfe35e80c73482dc2e8e4bcee8a8',
               'hash' => md5(sha1($data['email'])),
               'role' => $data['role'],
               'status' => "approved"
           );
           $this->db->insert('users', $item1);
           return $row_id;
       }
   }

    /*===== IMAGE UPLOAD =====*/
    public function upload_img($row_id)
    {
        $configUpload['upload_path'] = './uploads/Admin_images';
        $configUpload['allowed_types'] = 'jpg|png|jpeg';
        $configUpload['max_size'] = '100';
        $configUpload['max_width'] = '200';
        $configUpload['max_height'] = '200';
        $configUpload['encrypt_name'] = true;
        $this->load->library('upload', $configUpload);
        $this->upload->initialize($configUpload);
        if (!$this->upload->do_upload('image')) {
            $uploadedDetails = $this->upload->display_errors();
            $this->db->query("DELETE from admin_info where id=".$row_id);
            echo json_encode(array("msg_error" => "error", "message" => $uploadedDetails));
            exit;
        } else if (!$this->upload->do_upload('image')) {
            $uploaddetails = "Your Ip marked as Black listed due to illegal activity";
            $redirect_link = base_url() . 'Admin/logout';
            $json = array(
                "msg_type" => "warning",
                "message" => $uploaddetails,
                "redirect_link" => $redirect_link
            );
            header("application/json");
            echo json_encode($json);
            require(APPPATH . 'user_info.php');
            $c_info = new Users_info;
            $ip = $c_info->c_ip();
            $os = $c_info->c_OS();
            $b = $c_info->c_Browser();
            $d = $c_info->c_Device();
            $user_id = $this->session->userdata['id'];
            $user_data = $this->geolib->ip_info($ip);
            $data = array(
                'country' => $user_data['geoplugin_countryName'],
                'city' => $user_data['geoplugin_city'],
                'c_code' => $user_data['geoplugin_countryCode'],
                'latitude' => $user_data['geoplugin_latitude'],
                'longitude' => $user_data['geoplugin_longitude'],
                'regionName' => $user_data['geoplugin_regionName'],
                'user_id' => $user_id,
                'ip' => $ip,
                'browser' => $b,
                'os' => $os,
                'device' => $d,
                'date_time' => date('Y-m-d H:i:s'));
            $this->db->insert('detection', $data);
            exit;
        } else {
            $image_name = $this->upload->data('file_name');
            /*$item = array(
                'admin_id' => $row_id,
                'image' => $image_name,
            );*/
            //$this->db->insert('admin_', $item);
            //$this->db->WHERE('id', $row_id)->UPDATE(array('image' => $image_name));
            $this->db->update('admin_info', array('image' => $image_name), array('id' => $row_id));

        }
    }

    public function get_admin_ById($id)
    {
        $st = $this->db->select('*')->from('admin_info')->WHERE('id', $id)->get()->result_array();
        return $st[0];
    }

    /*===== GET ADMIN IMAGE =====*/
    public function get_admin_image($user_id)
    {
        $st = $this->db->select('image')->from('admin_info')->WHERE('id', $user_id)->get()->result_array();
        return $st[0];
    }
}