<!-- jQuery -->
<script src="<?= base_url()?>backend_assets/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?= base_url()?>backend_assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?= base_url()?>backend_assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- DataTables -->
<script src="<?= base_url()?>backend_assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url()?>backend_assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url()?>backend_assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url()?>backend_assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

<!-- Toastr -->
<script src="<?= base_url()?>backend_assets/plugins/toastr/toastr.min.js"></script>

<!-- Select2 -->
<script src="<?= base_url()?>backend_assets/plugins/select2/js/select2.full.min.js"></script>
<!-- ChartJS -->
<script src="<?= base_url()?>backend_assets/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="<?= base_url()?>backend_assets/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="<?= base_url()?>backend_assets/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="<?= base_url()?>backend_assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?= base_url()?>backend_assets/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?= base_url()?>backend_assets/plugins/moment/moment.min.js"></script>
<script src="<?= base_url()?>backend_assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?= base_url()?>backend_assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="<?= base_url()?>backend_assets/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url()?>backend_assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url()?>backend_assets/dist/js/adminlte.js"></script>

<!-- BOOTSTRAP SWITCH  -->
<script src="<?= base_url()?>backend_assets/bootstrap-switch_js_bootstrap-switch.min.js"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?= base_url()?>backend_assets/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url()?>backend_assets/dist/js/demo.js"></script>


<!-- INITIALIZE DATATABLE -->
<script type="text/javascript">
	$(function () {
		$("#example1").DataTable({
			"responsive": true,
			"autoWidth": false,
		});
		$('#example2').DataTable({
			"paging": true,
			"lengthChange": false,
			"searching": false,
			"ordering": true,
			"info": true,
			"autoWidth": false,
			"responsive": true,
		});
	});
</script>

<script>
	(function ($) {
		// custom css expression for a case-insensitive contains()
		jQuery.expr[':'].Contains = function(a,i,m){
			return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase())>=0;
		};

		function FilterMenu(list) {
			var input = $(".filtertxt");

			$(input).change( function () {
				var filter = $(this).val();
				//console.log(filter);
				//If search text box contains some text then apply filter list
				if(filter){
					//Add open class to parent li item
					$(list).parent().addClass('open');
					//Add class in and expand the ul item which is nested li of main ul
					$(list).addClass('in').prop('aria-expanded', 'true').slideDown();

					//Check if child list items contain the query text. Them make them active
					//$(list).find('li:Contains('+filter+')').addClass('active'); //Default is active
					//Check if any child list items doesn't contain query text. Remove the active class
					//So that they are not more highlighted
					$(list).find('li:not(:Contains('+filter+'))').removeClass('active');

					//Show any ul inside main ul which contains the text.
					$(list).find('li:Contains('+filter+')').show();
					//Hide any ul inside main ul which doesn't contains the text.
					$(list).find('li:not(:Contains('+filter+'))').hide();

					//Filter top level list items to show and hide them.
					$('#social-sidebar-menu').find('li:Contains('+filter+')').show();
					$('#social-sidebar-menu').find('li:not(:Contains('+filter+'))').hide();

				}else{
					//On query text = empty reset all classes and styles to default.
					$(list).parent().removeClass('open');
					$(list).removeClass('in').prop('aria-expanded', 'false').slideUp();
					$(list).find('li').removeClass('active');
					$('#social-sidebar-menu').find('li').show();
				}
			})
				.keyup( function () {
					$(this).change();
				});
		}

		//ondomready
		$(function () {
			FilterMenu($("#social-sidebar-menu ul"));
		});
	}(jQuery));
</script>
