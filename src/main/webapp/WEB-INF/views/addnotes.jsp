<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<style>
textarea {
	min-height: 500px;
}

</style>
</head>
<body>
	
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			
			<%@include file="userheader.jsp"%>
			<!-- Main Content -->
			<div class="main-content">

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">


								<h4>Add Notes</h4>
								<div class="card-header-action">
									<h4>
										<a href="userhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ AddNotes
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>

				<div class="row">

					<div class="col">
						<div class="card">
							<form action="#" method="post">
								<div class="card-header">
									<h4>Notes</h4>
								</div>
								
								<div class="card-body">
									<div class="form-group">
										<label>Notes Title</label> <input type="text" placeholder="Enter the Notes Title"
											class="form-control" name="notesTitle"
											required>
										
									</div>
									
									<div class="form-group">
										<label>Notepad</label> 
										<textarea id="mytextarea"></textarea>
										
									</div>
									
									
									
								</div>
								<div class="card-footer text-right">
									<button class="btn btn-primary" id="toastr-2">Submit</button>
								</div>
								
								
								
							</form>
						</div>
						
					</div>

				</div>
				
			</div>
			
		</div>
	</div>
	
</body>
<script
		src="https://cdn.tiny.cloud/1/nklzzr80nbh42fu5eby0d4ipfkv57tp61il9if12c53ie9le/tinymce/5/tinymce.min.js"
		referrerpolicy="origin"></script>

	<script>
		var $rows = $('#task h5');
		$('#searchtask').keyup(function() {
			var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

			$rows.show().filter(function() {
				var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
				return !~text.indexOf(val);
			}).hide();
		});
	</script>
	<script type="text/javascript">
		tinymce.init({
			selector : "#mytextarea"
		});

		function myFunc() {
			console.log(document.getElementById("mytextarea").value);
		}
	</script>
</html>