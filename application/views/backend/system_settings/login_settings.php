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
								<h3 class="card-title"><span class="fa fa-edit"></span> Auth Settings</h3>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form class="form-horizontal" method="POST" id="update_settings">
								<div class="card-body">
									<div class="form-group row">
										<label for="Host" class="col-sm-4 col-form-label">2Factor Auth</label>
										<div class="col-sm-8" style="margin-top: 8px;">
											<input type="checkbox" name="my-checkbox"  value="<?= $login_settings['two_factor_auth'];?>" <?php if($login_settings['two_factor_auth'] == '1') { echo 'checked'; } ?> data-bootstrap-switch >
										</div>
									</div>
									<div class="form-group row">
										<label for="Port" class="col-sm-4 col-form-label">Failed Login Limit</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" name="failed_login_limit" id="failed_login_limit" value="<?= $login_settings['failed_login_limit']; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Email" class="col-sm-4 col-form-label">OTP Expire Time</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" name="failed_otp_limit" id="failed_otp_limit" value="<?= $login_settings['otp_expire_time']; ?>" >
										</div>
									</div>
									<div class="form-group row">
										<label for="Password" class="col-sm-4 col-form-label">Failed Otp Limit</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" name="otp_expire_time" id="otp_expire_time" value="<?= $login_settings['failed_otp_limit']; ?>">
										</div>
									</div>
								</div>
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
	$("input[data-bootstrap-switch]").each(function(){
		$(this).bootstrapSwitch('state', $(this).prop('checked'));
	});
</script>

<script type="text/javascript">
	$(document).ready(function () {
		$("#update_settings").on('submit', (function (e) {
			toastr.info("Your Request processing...");
			e.preventDefault();
			var fd = new FormData(this);
			$.ajax({
				url: '<?php echo base_url("Settings/update_login_settings") ?>',
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
