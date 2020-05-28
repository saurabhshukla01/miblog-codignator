<?php
	class Categories extends CI_Controller{
		public function index(){
			$data['title'] = 'Categories';

			$data['categories'] = $this->Category_model->get_categories();
			$this->load->view('templates/header');
			$this->load->view('categories/index' , $data);
			$this->load->view('templates/footer');
		}
		public function Create(){

			// Check login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$data['title'] = 'Create Category';

			$this->form_validation->set_rules('category_name','Category Name','required');

			if($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('categories/create' , $data);
				$this->load->view('templates/footer');
			}
			else{
				$this->Category_model->create_category();

				// Set message
				$this->session->set_flashdata('category_created', 'Your category has been created');

				redirect('categories');
			}
		}
		public function posts($category_id){
			$data['title'] = $this->Category_model->get_categories($category_id);

			$data['posts'] = $this->Post_model->get_posts_by_category($category_id);

			$this->load->view('templates/header');
			$this->load->view('posts/index' , $data);
			$this->load->view('templates/footer');

		}
		public function delete($category_id){
			// Check login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$this->Category_model->delete_category($category_id);

			// Set message
			$this->session->set_flashdata('category_deleted', 'Your category has been deleted');

			redirect('categories');
		}
	}
