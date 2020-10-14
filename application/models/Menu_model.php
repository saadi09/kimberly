<?php
/**
 * Created by PhpStorm.
 * User: saadi
 * Date: 5/23/2018
 * Time: 4:42 PM
 */

class Menu_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
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
            'parent'          => $data['parent'],
            'name'            => $data['name'],
            'class'           => $data['class'],
            'display_order'   => $data['display_order'],
            'url'             => $data['url']
        );
        $this->db->insert($table, $item);
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
    /*public function getMenuItems($table)
    {
        $st = $this->db->select('*')->from($table)->where('parent', 0)->get()->result_array();
        //echo '<pre>'; print_r($st); exit;
        if (count($st) > 0) {
            for ($i = 0; $i < count($st); $i++) {
                $st[$i]['child'] = $this->db->select('*')->from($table)->where('parent', $st[$i]['id'])->get()->result_array();
            }
        } else {
            return false;
        }

        return $st;
    }*/


    /*==== GET MENU ITEMS  ====*/
    public function getMenuItems($group_id)
    {
        $st = $this->db->select('*')
            ->from('user_permission as up, menus as m, groups as g')
            ->where('up.group_id', $group_id)
            ->where('up.main_menu_id = m.id')
            ->where('m.parent', 0)
            ->group_by('up.main_menu_id')
            ->get()
            ->result_array();
        //echo '<pre>';print_r($st);exit;
        if (count($st) > 0) {
            for ($i = 0; $i < count($st); $i++) {
                $st[$i]['child'] = $this->db->query('Select * from menus 
                inner join user_permission on user_permission.sub_menu_id=menus.id
                WHERE menus.parent='.$st[$i]['main_menu_id'].'
                AND user_permission.permission=\'YES\'
                AND user_permission.group_id=
                '.$group_id)->result_array();
            }
            
        } else {
            return array();
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

    /*==== DELETE MENU =====*/
    public function delete_menu($id)
    {
        $st = $this->db->select('parent')->from('menus')->where('parent', $id)->get()->result_array();
        if(count($st) > 0)
        {
            return false;
            exit;
        }
        else {
            $this->db->query("DELETE FROM user_permission WHERE sub_menu_id=".$id);
            $this->db->query("DELETE from menus WHERE id=".$id);
            return true;
        }
    }

    /*======= ADD MENUS ROUTE =======*/
	public function add_route($data)
	{
		$route = array(
			'label' => $data['label'],
			'route' => $data['route']
		);
		$this->db->insert('menus_routes', $route);
	}

	/*====== EDIT MENU ROUTE =======*/
	public function edit_menu_route($data, $route_id)
	{
		$route = array(
			'label' => $data['label'],
			'route' => $data['route']
		);
		$this->db->where('route_id', $route_id)->update('menus_routes', $route);
	}

	/*======= GET ALL ROUTES =========*/
	public function get_all_routes()
	{
		return $this->db->select('*')->from('menus_routes')->get()->result_array();
	}

	/*====== GET ROUTE BY ID ======*/
	public function get_route_by_id($route_id)
	{
		$query = $this->db->select('*')->from('menus_routes')->where('route_id', $route_id)->get()->result_array();
		return $query[0];
	}

	///////////////////////////////////////
    ///                                 ///
    ///     Admin Menu Section Ends     ///
    ///                                 ///
    ///////////////////////////////////////
}
