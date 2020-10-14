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
								<a href="<?= base_url('dashboard')?>" class="card-title"><span class="nav-icon fas fa-th"></span> Dashboard / Groups & Permission</a>
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
								<h3 class="card-title">Manage Groups</h3>
								<div class="float-right">
									<div class="actions" style="">
										<a href="<?= base_url('Users/add_group')?>" class="btn bg-gradient-primary btn-sm"><span class="fa fa-plus-circle"></span> &nbsp;Add</a>
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
									<tr>
										<th>Sno#</th>
										<th>Group Name</th>
										<th>Added By</th>
										<th>Added At</th>
										<th>Permission</th>
										<th>Action</th>
									</tr>
									</thead>
									<tbody>
                                       <?php for($i=0; $i<count($groups); $i++): ?>
									   <tr>
										   <td><?= $i+1; ?></td>
										   <td><?= $groups[$i]['type']; ?></td>
										   <td><?= $groups[$i]['name']; ?></td>
										   <td><?= $groups[$i]['created_at']; ?></td>
										   <td>
											   <a href="#" class="btn bg-gradient-primary btn-sm"><span class="fa fa-cog"></span> Permission</a>
										   </td>
										   <td>
											   <a href="<?= base_url('Users/edit_group/'.$groups[$i]['group_id'])?>"  class="btn bg-gradient-info btn-sm"><span class="fa fa-edit"></span></a>
											   <button type="button" onclick="" value="" class="btn bg-gradient-danger btn-sm"><span class="fa fa-trash"></span></button>
										   </td>
									   </tr>
									   <?php endfor; ?>
									</tbody>
									<tfoot>
									<tr>
										<th>Sno#</th>
										<th>Group Name</th>
										<th>Added By</th>
										<th>Added At</th>
										<th>Permission</th>
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
<script type="text/javascript">
	function validate(a)
	{
		var id= a.value;
		swal.fire({
			title: 'Are you sure?',
			text: "You want to delete this menu!",
			animation: false,
			customClass: 'animated pulse',
			type: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, delete it!',
			cancelButtonText: 'No, cancel!',
			confirmButtonClass: 'btn btn-success',
			cancelButtonClass: 'btn btn-danger',
			buttonsStyling: true,
			reverseButtons: true
		}).then( function(result) {
			if (result.value) {

				$.ajax({
					type: 'POST',
					url: 'http://localhost/tcm/Menus/del_menus/',
					data: {'id': id}
				}).then(function(res){
					var res = $.parseJSON(res);
					if(res.msg_type === 'success') {
						$(a).closest('tr').remove();
						swal.fire('Deleted!', 'Menu has been Deleted.', 'success');
					}else{
						swal.fire('Error','Ops something went wrong','error');
					}
				}, function(err){
					swal.fire('Error', err.statusText, 'error');
				});

			} else if (result.dismiss === 'cancel') {
				swal.fire(
					'Cancelled',
					'Your imaginary file is safe :)',
					'error'
				)
			}
		})
	}
</script>

</body>
</html>
