<?php
	class Category_model extends CI_Model{
		public function __construct(){
			$this->load->database();
		}
		public function get_categories(){
			$this->db->order_by('category_name');
			$query = $this->db->get('categories');
			return $query->result_array();
		}
		public function create_category(){
			$data = array(
				'category_name' => $this->input->post('category_name')
			);
			return $this->db->insert('categories',$data);
		}
	}
