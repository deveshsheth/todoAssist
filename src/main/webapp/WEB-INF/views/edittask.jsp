<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDoAssist</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="/assets/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='/assets/img/favicon.ico' />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
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


								<h4>Edit Task</h4>
								<div class="card-header-action">
									<h4>
										<a href="userhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ EditTask
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>

				<div class="row">

					<div class="col">
						<div class="card">
							<form action="../updateTask" method="post">
								<div class="card-header">
									<h4>Upload Task</h4>
								</div>
								<input type="hidden" name="taskId" value="${task.taskId }"/>
								<div class="card-body">
									<div class="form-group">
										<label>Task Name</label> <input type="text" placeholder="Enter the Task Name"
											class="form-control" value="${task.taskName }" name="taskName"
											required>
										
									</div>
									<div class="form-group">
										<label>Description</label> <input type="text" placeholder="Enter the Task Description"
											class="form-control" value="${task.description }" name="description"
											required>
										
									</div>
									<div class="form-group">
										<label>Start Date</label> <input type="date" placeholder="Enter the Start Date"
											class="form-control" value="${task.startDate }" name="startDate"
											required>
										
									</div>
									<div class="form-group">
										<label>End Date</label> <input type="date" placeholder="Enter the End date"
											class="form-control" value="${task.endDate }" name="endDate"
											required>
										
									</div>
									<div class="form-group">
										<label>Time</label> <input type="time" placeholder="Enter the Task Time"
											class="form-control" value="${task.taskTime }" name="taskTime"
											required>
										
									</div>
								</div>
								<div class="card-footer text-right">
									<button class="btn btn-primary">Save Changes</button>
								</div>
							</form>
						</div>
						
					</div>

				</div>

			</div>
			
		</div>
	</div>
	
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
</body>
</html>