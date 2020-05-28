<!DOCTYPE html>
<html lang="en">
<head>
  <title>Miblog</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style.css">
  <script src="<?php echo base_url(); ?>assets/ckeditor/ckeditor.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark">
  <ul class="navbar-nav mr-auto">
    <li class="nav-item">
      <a class="nav-link text-white font-weight-bold" href="<?php echo base_url(); ?>">Miblog</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="<?php echo base_url(); ?>">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="<?php echo base_url(); ?>posts">Posts Blog</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="<?php echo base_url(); ?>categories">Categories</a>
    </li>
  </ul>
  <ul class="navbar-nav">
	  <?php if(!$this->session->userdata('logged_in')) : ?>
	  <li class="nav-item">
	  		<a class="nav-link text-white" href="<?php echo base_url(); ?>users/login">Login</a>
			<!--<a class="nav-link btn btn-info btn-sm text-white mr-2" href="">
				<i class="fa fa-user-o" aria-hidden="true">&nbsp;&nbsp;Login</i>
			</a>-->
		</li>
	  <li class="nav-item">
	  		<a class="nav-link text-white" href="<?php echo base_url(); ?>users/register">Registration</a>
			<!--<a class="nav-link btn btn-primary btn-sm text-white mr-2" href="">
				<i class="fa fa-book" aria-hidden="true">&nbsp;&nbsp;Registration</i>
			</a>-->
		</li>
		<?php endif; ?>
		<?php if($this->session->userdata('logged_in')) : ?>
		<li class="nav-item">
			<a class="nav-link text-white" href="<?php echo base_url(); ?>posts/create">Create Blog</a>
		</li>
		<li class="nav-item">
			<a class="nav-link text-white" href="<?php echo base_url(); ?>categories/create">Create Category</a>
		</li>
		<li class="nav-item text-primary">
				<a class="nav-link font-weight-bold"><?php echo $_SESSION['username']; ?></a>
		</li>
		<li class="nav-item">
			<a class="nav-link text-white" href="<?php echo base_url(); ?>users/logout">Logout</a>
			<!--<a class="nav-link btn btn-primary btn-sm text-white" href="">
				<i class="fa fa-power-off" aria-hidden="true">&nbsp;&nbsp;Logout</i>
			</a>-->
		</li>
		<?php endif; ?>
  </ul>
</nav>
<header class="masthead bg-primary text-white text-center py-5">
     <div class="container d-flex align-items-center flex-column">
         <!--<img class="masthead-avatar mb-5" src="assets/img/banner1.png" alt="" />-->
         <h1 class="masthead-heading text-uppercase mb-0">Miblog Site</h1>
         <!-- Icon Divider-->
         <div class="divider-custom divider-light">
              <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                  	<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
              </div>
         <p class="masthead-subheading font-weight-light mb-0">Php Codignator - Web Designer - Illustrator</p>
     </div>
</header>

    <div class="container pt-4">
      <!-- Flash messages -->
      <?php if($this->session->flashdata('user_registered')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_created')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_updated')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('category_created')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_deleted')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('login_failed')): ?>
        <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('user_loggedin')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

       <?php if($this->session->flashdata('user_loggedout')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('category_deleted')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_deleted').'<button type="button" class="close" data-dismiss="alert">x</button></p>'; ?>
      <?php endif; ?>
	</div>
