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
								<a href="<?= base_url('dashboard')?>" class="card-title"><span class="nav-icon fas fa-th"></span> Dashboard / Activity Logs</a>
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
					<div class="col-12">
						<div class="card animated fadeIn">
							<div class="card-header">
								<h3 class="card-title">Manage Activity logs</h3>
								<div class="float-right">
									<div class="actions" style="">
										<a href="<?= base_url('menus/add')?>" class="btn bg-gradient-primary btn-sm"><span class="fa fa-search"></span> &nbsp;Search</a>
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="user-grid" class="table table-bordered table-striped">
									<thead>
									<tr>
										<th>Sno.</th>
										<th>User</th>
										<th>Controller</th>
										<th>Method</th>
										<th>Date Time</th>
										<th>Action</th>
									</tr>
									</thead>
									<tbody>


									</tbody>
									<tfoot>
									<tr>
										<th>Sno.</th>
										<th>User</th>
										<th>Controller</th>
										<th>Method</th>
										<th>Date Time</th>
										<th>Action</th>
									</tr>
									</tfoot>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
					</div>
					<!-- /.col -->
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

<!-- SweetAlert -->
<script src="<?= base_url()?>backend_assets/plugins/sweetalert2/sweetalert2.all.min.js"></script>
<script src="<?= base_url()?>backend_assets/plugins/sweetalert2/sweetalert2.min.js"></script>
<script type="text/javascript" language="javascript" >
	$(document).ready(function() {
		getList();
	});
	function getList(){
		var dataTable = $('#user-grid').DataTable( {
			"paging": true,
			"lengthChange": true,
			"searching": true,
			"ordering": true,
			"info": true,
			"autoWidth": true,
			"responsive": true,
			"processing": true,
			"serverSide": true,
			"ajax":{
				url :"<?=base_url('activity_logs/get_logs')?>", // json datasource
				type: "post",  // method  , by default get
				error: function(){  // error handling
					$(".user-grid-error").html("");
					$("#user-grid").append('<tbody class="user-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
					$("#user-grid_processing").css("display","none");

				}
			},
			"oLanguage": {
				"sProcessing": '<img src="<?=base_url()?>uploads/loading.gif" width="50">'
			}
		} );
	}
</script>

</body>
</html>
