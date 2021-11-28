<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDoAssist</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="assets/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="assets/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='assets/img/favicon.ico' />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
</head>
<body>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

			<%@include file="adminheader.jsp"%>

			<!-- Main Content -->
			<div class="main-content">

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">


								<h4>Today's Users</h4>
								<div class="card-header-action">
									<h4>
										<a href="adminhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ TodayUsers
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>


				<br>

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h4>Today's New Users</h4>
								<div class="card-header-form">
									<!-- <form>
										<div class="input-group">
											<input type="text" class="form-control" id="searchtask"
												placeholder="Search">
											<div class="input-group-btn">
												<button class="btn btn-primary">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</form> -->
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<div id="tableExport_wrapper"
										class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
										
										<table
											class="table table-striped table-hover dataTable no-footer"
											id="tableExport" style="width: 100%;" role="grid"
											aria-describedby="tableExport_info">
											<thead>
												<tr role="row">
													<th style="width: 114px;">Name</th>
													<th style="width: 114px;">Email</th>
													<th style="width: 114px;">DateofBirth</th>
													<th style="width: 114px;">Age</th>
													<th style="width: 114px;">Mobile Number</th>
											
													
												</tr>
											</thead>
											<tbody>


											
												<tr role="row">
													<td>Devesh Sheth</td>
													<td>deveshssheth2018@gmail.com</td>
													<td>16-09-2000</td>
													<td>21</td>
													<td>9856856985</td>
													
												</tr>
												<tr role="row">
													<td>Aryan Shah</td>
													<td>deveshssheth2018@gmail.com</td>
													<td>16-09-2000</td>
													<td>21</td>
													<td>9856856985</td>
													
												</tr>
												<tr role="row">
													<td>Devesh Sheth</td>
													<td>deveshssheth2018@gmail.com</td>
													<td>16-09-2000</td>
													<td>21</td>
													<td>9856856985</td>
													
												</tr>
												
											</tbody>
										</table>
										
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>




		</div>

	</div>
	</div>
	<script src="assets/bundles/datatables/datatables.min.js"></script>
	<script
		src="assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="assets/bundles/datatables/export-tables/dataTables.buttons.min.js"></script>
	<script
		src="assets/bundles/datatables/export-tables/buttons.flash.min.js"></script>
	<script src="assets/bundles/datatables/export-tables/jszip.min.js"></script>
	<script src="assets/bundles/datatables/export-tables/pdfmake.min.js"></script>
	<!-- <script src="assets/bundles/datatables/export-tables/vfs_fonts.js"></script> -->
	<script
		src="assets/bundles/datatables/export-tables/buttons.print.min.js"></script>
	<script src="assets/js/page/datatables.js"></script>
	<script>
		var $rows = $('#task tr');
		$('#searchtask').keyup(function() {
			var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

			$rows.show().filter(function() {
				var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
				return !~text.indexOf(val);
			}).hide();
		});
	</script>
</body>
</html>