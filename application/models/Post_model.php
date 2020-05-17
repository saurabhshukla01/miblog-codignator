<?php
	class Post_model extends CI_Model{
		public function __construct(){
			$this->load->database();
		}
		public function get_posts($slug = FALSE){
			if($slug === FALSE){
				$this->db->order_by('posts.id','DESC');
				$this->db->join('categories','categories.category_id = posts.category_id');
				$query = $this->db->get('posts');

				return $query->result_array();
			}
			$this->db->order_by('posts.id','DESC');
			$this->db->join('categories','categories.category_id = posts.category_id');
			$query = $this->db->get_where('posts',array('slug' => $slug));
			//print_r($this->db->last_query());
			//die();
			return $query->row_array();
		}
		public function create_post(){
			$slug = url_title($this->input->post('title'));

			$data = array(
				'title' => $this->input->post('title'),
				'slug' => $slug,
				'body' => $this->input->post('body'),
				'category_id' => $this->input->post('category_id'),
			);
			return $this->db->insert('posts',$data);
		}
		public function delete_post($id){
			$this->db->where('id',$id);
			$this->db->delete('posts');
			return true;
		}
		public function update_post($id){
			$slug = url_title($this->input->post('title'));

			$data = array(
				'title' => $this->input->post('title'),
				'slug' => $slug,
				'body' => $this->input->post('body'),
				'category_id' => $this->input->post('category_id'),
			);
			//print_r($data);
			//die();
			$this->db->where('id', $id);
			//print_r($this->db->update('posts',$data));
			//die();
			return $this->db->update('posts',$data);
		}
		public function get_categories(){
			$this->db->order_by('category_name');
			$query = $this->db->get('categories');
			return $query->result_array();
		}
	}

?>
