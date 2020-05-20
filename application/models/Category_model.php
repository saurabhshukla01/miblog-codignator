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
				'category_name' => $this->input->post('category_name'),
				'user_id' => $this->session->userdata('user_id'),
			);
			return $this->db->insert('categories',$data);
		}
		public function delete_category($category_id){
			$this->db->where('category_id',$category_id);
			$this->db->delete('categories');
			return true;
		}
	}
