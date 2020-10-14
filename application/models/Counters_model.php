<?php

class Counters_model extends CI_Model
{
    public function getCounters()
    {

        /*===== COUNT USERS ======*/
        $st = $this->db->query('SELECT COUNT(*) as count from users')->result_array();
        $data['users'] = $st[0]['count'];

        /*===== COUNT INSTANCES =====*/
        $st = $this->db->query('SELECT COUNT(*) as count from instances')->result_array();
        $data['instances'] = $st[0]['count'];


        /*===== COUNT SERVERS =====*/
        $st = $this->db->query('SELECT COUNT(*) as count from servers')->result_array();
        $data['servers'] = $st[0]['count'];

        /*==== COUNT MODULES ====*/
        $st = $this->db->query('SELECT COUNT(*) as count from modules')->result_array();
        $data['modules'] = $st[0]['count'];

        return $data;
    }

    public function get_my_counters($instance_id)
    {
        /*===== COUNT SERVERS =====*/
        $st = $this->db->query('SELECT COUNT(*) as count from servers where instance_id='.$instance_id)->result_array();
        $data['servers'] = $st[0]['count'];

        /*==== COUNT MODULES ====*/
        $st = $this->db->query('SELECT COUNT(*) as count from modules where instance_id='.$instance_id)->result_array();
        $data['modules'] = $st[0]['count'];

        return $data;
    }
}