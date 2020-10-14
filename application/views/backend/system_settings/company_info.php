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
								<a href="<?= base_url('dashboard')?>" class="card-title"><span class="nav-icon fas fa-th"></span> Dashboard | System Settings</a>
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
					<div class="col-md-6  offset-md-3">
						<div class="card card-primary animated fadeIn">
							<div class="card-header">
								<h3 class="card-title"><span class="fa fa-edit"></span> Company Information</h3>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form class="form-horizontal" method="POST" id="company_info">
								<div class="card-body">
									<div class="form-group row">
										<label for="Name" class="col-sm-3 col-form-label">Name</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="name" id="name" value="<?= $company_info['name']; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Class" class="col-sm-3 col-form-label">Email</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" name="email" id="email" value="<?= $company_info['email']; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Order" class="col-sm-3 col-form-label">Contact No.</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="contact" id="contact" value="<?= $company_info['contact']; ?>" >
										</div>
									</div>
									<div class="form-group row">
										<label for="Url" class="col-sm-3 col-form-label">Website</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="website" id="website" value="<?= $company_info['website']; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Url" class="col-sm-3 col-form-label">Address</label>
										<div class="col-sm-9">
											<textarea name="address" style="width: 100%" rows="2"><?= $company_info['address']; ?></textarea>
										</div>
									</div>
								</div>
								<input type="hidden" name="id" value="<?= $company_info['id']; ?>">
								<!-- /.card-body -->
								<div class="card-footer" align="center">
									<button type="submit" class="btn btn-primary"><span class="fa fa-save"> Update</button>
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

<script type="text/javascript">
	$(document).ready(function () {
		$("#company_info").on('submit', (function (e) {
			toastr.info("Your Request processing...");
			e.preventDefault();
			var fd = new FormData(this);
			$.ajax({
				url: '<?php echo base_url("Settings/update_company_info") ?>',
				data: fd,
				type: "POST",
				contentType: false,
				processData: false,
				cache: false,
				success: function (res) {
					var res = $.parseJSON(res);
					if (res.msg_type === 'success') {
						toastr.success(res.message);
						setTimeout(function(){
							window.location = res.redirect_link;
						}, 2000);

					} else {
						$("#msg").html(res);
						toastr.error(res.message);
					}
				},
				error: function (xhr) {
					$("#msg").html("Error: - " + xhr.status + " " + xhr.statusText);
				}
			});
		}));
	});
</script>

</body>
</html>
