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
								<h3 class="card-title"><span class="fa fa-edit"></span> SMTP Configuration</h3>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form class="form-horizontal" method="POST" id="smtp_config">
								<div class="card-body">
									<div class="form-group row">
										<label for="Host" class="col-sm-3 col-form-label">Host</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="host" id="port" value="<?= $smtp_config->host; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Port" class="col-sm-3 col-form-label">Port</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="port" id="port" value="<?= $smtp_config->port; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Email" class="col-sm-3 col-form-label">Email</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="email" id="email" value="<?= $smtp_config->email ?>" >
										</div>
									</div>
									<div class="form-group row">
										<label for="Password" class="col-sm-3 col-form-label">Password</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="password" id="password" value="<?= $smtp_config->password; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Sender" class="col-sm-3 col-form-label">Sender</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="sent_title" id="sent_title" value="<?= $smtp_config->sent_title; ?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Sender Email" class="col-sm-3 col-form-label">Sender Email</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="sent_email" id="sent_email" value="<?= $smtp_config->sent_email; ?>">
										</div>
									</div>
								</div>
								<input type="hidden" name="id" value="<?= $smtp_config->id; ?>">
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
		$("#smtp_config").on('submit', (function (e) {
			toastr.info("Your Request processing...");
			e.preventDefault();
			var fd = new FormData(this);
			$.ajax({
				url: '<?php echo base_url("Settings/save_smtp_setting") ?>',
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
