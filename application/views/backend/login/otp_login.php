<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?= $title; ?></title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?= base_url()?>backend_assets/plugins/fontawesome-free/css/all.min.css">

	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

	<!-- icheck bootstrap -->
	<link rel="stylesheet" href="<?= base_url()?>backend_assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">

	<!-- Theme style -->
	<link rel="stylesheet" href="<?= base_url()?>backend_assets/dist/css/adminlte.min.css">

	<!-- Toastr -->
	<link rel="stylesheet" href="<?= base_url()?>backend_assets/plugins/toastr/toastr.min.css">

	<!-- Animate CSS -->
	<link rel="stylesheet" href="<?= base_url()?>backend_assets/plugins/animate/animate.css">

	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page" id="particles-js">
<style>
	body { overflow:hidden; background-color:  !important; }
	.login-box{
		position: absolute;
		left: 0;
		right: 0;
		margin-left: auto;
		margin-right: auto;
	}
	#errmsg
	{
		color: red;
	}
</style>
<div class="login-box">
	<div class="login-logo">
		<img src="<?= base_url()?>/uploads/logo.png " alt="<?= $company_info['name']; ?>">
	</div>
	<!-- /.login-logo -->
	<div class="card animated zoomIn">
		<div class="card-body login-card-body">
			<p class="login-box-msg">Enter your 6 digit OTP.</p>
			<form action="" method="POST" id="authenticate_otp">
				<div class="input-group mb-3">
					<input type="password" maxlength="6" class="form-control" placeholder="xxxxxx" name="otp" id="otp">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-key"></span>
						</div>
					</div>
				</div>
				<span id="errmsg"></span>
				<div class="row">
					<div class="col-12">
						<button type="submit" class="btn btn-primary btn-block">Verify OTP</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
		</div>
		<!-- /.login-card-body -->
	</div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?= base_url()?>backend_assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= base_url()?>backend_assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url()?>backend_assets/dist/js/adminlte.min.js"></script>
<!-- Toastr -->
<script src="<?= base_url()?>backend_assets/plugins/toastr/toastr.min.js"></script>
<!-- Particles JS -->
<script src="<?=  base_url()?>backend_assets/particles.min.js"></script>
<script type="text/javascript">
	particlesJS.load('particles-js', '<?=  base_url()?>backend_assets/particlesjs-config.json', function() {
		console.log('callback - particles.js config loaded');
	});

	$(document).ready(function () {
		$("#authenticate_otp").on('submit', (function (e) {
			e.preventDefault();
			toastr.info("Your Request processing...")
			var fd = new FormData(this);
			$.ajax({
				url: '<?php echo base_url("Login/authenticate_otp") ?>',
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

		$("#otp").keypress(function (e) {
			//if the letter is not digit then display error and don't type anything
			if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
				//display error message
				$("#errmsg").html("Digits Only").show().fadeOut("slow");
				return false;
			}
		});
	});

</script>

</body>
</html>
