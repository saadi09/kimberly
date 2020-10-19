<!DOCTYPE html>
<html>

<!-- HEAD -->
<?php $this->load->view('backend/includes/head'); ?>
<!-- /HEAD-->

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

	<!-- Navbar -->
	<?php $this->load->view('backend/includes/header'); ?>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<?php $this->load->view('backend/includes/sidebar'); ?>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card-primary">
							<div class="card-header">
								<a href="<?= base_url('dashboard')?>" class="card-title"><span class="nav-icon fas fa-th"></span> Dashboard / Add Item</a>
							</div>
						</div>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-10  offset-md-1">
						<div class="card card-primary animated fadeIn">
							<div class="card-header">
								<h3 class="card-title"><span class="fa fa-plus-circle"></span> Add Item</h3>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form class="form-horizontal" method="POST" id="add_menu">
								<div class="card-body">
									<div class="form-group row">
										<label for="Parent" class="col-sm-2 col-form-label">Unit ID</label>
										<div class="col-sm-10">
											<input type="text" name="item_id" class="form-control" required> 
										</div>
									</div>
									<div class="form-group row">
										<label for="Name" class="col-sm-2 col-form-label">Type</label>
										<div class="col-sm-10">
											<select name="item_type" class="form-control">
                                                <option value="Container">Container</option>
                                                <option value="Chassis">Chassis</option>
                                                <option value="Refrigrated">Refrigrated</option>
                                            </select>
										</div>
									</div>
									<div class="form-group row">
										<label for="Parent" class="col-sm-2 col-form-label">Attachment ID</label>
										<div class="col-sm-10">
                                            <input type="text" name="attachment_id" class="form-control" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="Order" class="col-sm-2 col-form-label">Temperature</label>
										<div class="col-sm-10">
											<input type="number" class="form-control" name="temperature" id="display_order" placeholder="0'C" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="Route" class="col-sm-2 col-form-label">Loaded</label>
										<div class="col-sm-10">
											<select class="form-control "  name="loaded" id="url">
												<option value="Yes">Yes</option>
												<option value="No">No</option>
												<option value="N/A">N/A</option>
											</select>
										</div>
									</div>
                                    <div class="form-group row">
										<label for="Route" class="col-sm-2 col-form-label">Clean</label>
										<div class="col-sm-10">
											<select class="form-control " name="clean" id="url">
                                                <option value="Yes">Yes</option>
												<option value="No">No</option>
												<option value="N/A">N/A</option>
											</select>
										</div>
									</div>
                                    <div class="form-group row">
										<label for="Route" class="col-sm-2 col-form-label">Damage</label>
										<div class="col-sm-10">
											<select class="form-control "  name="damage" id="url">
                                                <option value="Yes">Yes</option>
												<option value="No">No</option>
												<option value="N/A">N/A</option>
											</select>
										</div>
									</div>
								</div>
								<!-- /.card-body -->
								<div class="card-footer" >
									<button type="submit" class="btn btn-primary btn-block"><span class="fa fa-save"> Save</button>
								</div>
								<!-- /.card-footer -->
							</form>
							<!-- /form end -->
						</div>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!-- FOOTER -->
	<?php $this->load->view('backend/includes/footer'); ?>
	<!-- /FOOTER-->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- SCRIPTS -->
<?php $this->load->view('backend/includes/scripts'); ?>
<!-- /SCRIPTS -->



</body>
</html>
