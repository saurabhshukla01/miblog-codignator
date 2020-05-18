<?php
	class Posts extends CI_Controller{
		public function index()
		{
			$data['title'] = "Latest Post Blog";

			$data['posts'] = $this->Post_model->get_posts();

			$this->load->view('templates/header');
			$this->load->view('posts/index' , $data);
			$this->load->view('templates/footer');

		}
		public function view($slug = NULL){
			$data['post'] = $this->Post_model->get_posts($slug);
			$data['categories'] = $this->Post_model->get_posts($slug);

			if(empty($data['post'])){
				show_404();
			}
			//print_r( $data['categories']);
			//die();
			$this->load->view('templates/header');
			$this->load->view('posts/view' , $data);
			$this->load->view('templates/footer');

		}
		public function create(){

			$data['title'] = 'Create Post';

			$data['categories'] = $this->Post_model->get_categories();

			$this->form_validation->set_rules('title','Title Post','required');
			$this->form_validation->set_rules('body','Body Post','required');
			$this->form_validation->set_rules('category_id','Select Category','required');
			$this->form_validation->set_rules('userfile','Upload Image','required');

			if($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('posts/create' , $data);
				$this->load->view('templates/footer');
			}
			else{
				// Upload Image
				$config['upload_path'] = './assets/images/posts';
				$config['allowed_types'] = 'gif|jpg|png|jpeg';
				$config['max_size'] = '2048';
				$config['max_width'] = '1000';
				$config['max_height'] = '800';

				$this->load->library('upload', $config);

				if(!$this->upload->do_upload()){
					$errors = array('error' => $this->upload->display_errors());
					$post_image = '';
				} else {
					$data = array('upload_data' => $this->upload->data());
					$post_image = $_FILES['userfile']['name'];
				}
				$this->Post_model->create_post($post_image);
				redirect('posts');
			}
		}
		public function delete($id){
			$this->Post_model->delete_post($id);
			redirect('posts');
		}
		public function edit($slug){
			$data['post'] = $this->Post_model->get_posts($slug);
			$data['categories'] = $this->Post_model->get_categories();

			if(empty($data['post'])){
				show_404();
			}
			//print_r($data);
			//die();
			$data['title'] = "Edit Blog";

			$this->load->view('templates/header');
			$this->load->view('posts/edit' , $data);
			$this->load->view('templates/footer');
		}
		public function update($id){
			$this->Post_model->update_post($id);
			redirect('posts');
		}

	}


?>
