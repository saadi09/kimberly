<?php
/**
 * Created by PhpStorm.
 * User: saadi
 * Date: 5/23/2018
 * Time: 4:42 PM
 */

class Items_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    
    public function getAllItems()
    {
        return $this->db->select('*')->from('items')->get()->result_array();
    }

    public function getItemById($id)
    {
        $st=$this->db->select('*')->from('items')->where('id', $id)->get()->result_array();
        return $st[0];
    }

    public function saveItem($data)
    {
        $this->db->insert('items', $data);
        return $this->db->insert_id();
    }

    public function updateQR($item_id, $qr_image)
    {
        $data=array(
            'qr_code'   => $qr_image
        );
        $this->db->where('id', $item_id)->update('items', $data);
        return true;
    }

}
