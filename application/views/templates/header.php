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
      <a class="nav-link text-white" href="<?php echo base_url(); ?>about">About Us</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="<?php echo base_url(); ?>posts">Posts Blog</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="<?php echo base_url(); ?>categories">Categories</a>
    </li>
  </ul>
  <ul class="navbar-nav">
	<li class="nav-item">
		<a class="nav-link text-white" href="<?php echo base_url(); ?>posts/create">Create Blog</a>
	</li>
	<li class="nav-item">
		<a class="nav-link text-white" href="<?php echo base_url(); ?>categories/create">Create Category</a>
	</li>
	<li class="nav-item">
		<a class="nav-link btn btn-primary btn-sm text-white mr-2" href="">
			<i class="fa fa-book" aria-hidden="true">&nbsp;&nbsp;Registration</i>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link btn btn-info btn-sm text-white mr-2" href="">
			<i class="fa fa-user-o" aria-hidden="true">&nbsp;&nbsp;Login</i>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link btn btn-primary btn-sm text-white" href="">
			<i class="fa fa-power-off" aria-hidden="true">&nbsp;&nbsp;Logout</i>
		</a>
	</li>
  </ul>
</nav>
