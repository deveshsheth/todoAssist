<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
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
<style>
.example {
	height: 250px;
	overflow-y: scroll; /* Add the ability to scroll */
}

/* Hide scrollbar for Chrome, Safari and Opera */
.example::-webkit-scrollbar {
	display: none;
}

/* Hide scrollbar for IE, Edge and Firefox */
.example {
	-ms-overflow-style: none; /* IE and Edge */
	scrollbar-width: none; /* Firefox */
}

.overlay {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.10);
	transition: opacity 500ms;
	visibility: hidden;
	opacity: 0;
}

.overlay:target {
	visibility: visible;
	opacity: 1;
}

.popup {
	margin: 100px auto;
	padding: 20px;
	background: #fff;
	border-radius: 5px;
	width: 50%;
	position: relative;
	transition: all 2s ease-in-out;
}

.popup .close {
	position: absolute;
	top: 20px;
	right: 30px;
	transition: all 200ms;
	font-size: 30px;
	font-weight: bold;
	text-decoration: none;
	color: #333;
}

.popup .content {
	max-height: 30%;
	overflow: auto;
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


								<h4>Notes</h4>
								<div class="card-header-action">
									<h4>
										<a href="userhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ Notes
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>

				<a href="addnotes" class="btn btn-icon icon-left btn-primary"
					style="float: right"> Add Notes</a><br>
				<br> <br>
				<div class="card">
					<div class="card-header">
						<h4>Title</h4>
						<div class="card-header-action">
							<div class="dropdown">
								<a href="#" data-toggle="dropdown"
									class="btn btn-primary dropdown-toggle" aria-expanded="false">Options</a>
								<div class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; transform: translate3d(0px, 26px, 0px); top: 0px; left: 0px; will-change: transform;">
									<a href="#popup1" class="dropdown-item has-icon"><i
										class="fas fa-eye"></i> View</a> <a href="#"
										class="dropdown-item has-icon"><i class="far fa-edit"></i>
										Edit</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item has-icon text-danger"><i
										class="far fa-trash-alt"></i> Delete</a>
								</div>
							</div>
						</div>
					</div>
					<div class="collapse show" id="mycard-collapse" style="">
						<div class="card-body">
							Created At : 05-02-2022<br>

						</div>

					</div>
				</div>

				<!-- Notes View Popoup -->
 				<div id="popup1" class="overlay">
					<div class="popup">
						<h2>Note Title</h2>
						<hr>
						<a class="close" href="#">&times;</a>
						<div class="content example">Thank to pop me out of that
							button, but now i'm done so you can close this window.</div>
					</div>
				</div>


			</div>
		</div>
	</div>


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
</body>
</html>