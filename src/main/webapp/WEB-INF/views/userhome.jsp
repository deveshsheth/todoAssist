<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<!-- Custom Font Icons CSS-->
<link rel="stylesheet" href="css/font.css">
<!-- Google fonts - Muli-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.ico">
<script type="text/javascript">
	var Today = new Date();
	var currentMonth = Today.getMonth();
	var currentDate = Today.getDate();
	var months = [ 'Janaury', 'Feburary', 'March', 'April', 'May', 'June',
			'July', 'August', 'September', 'October', 'November', 'December' ];
	var monthName = months[currentMonth];
</script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Righteous&display=swap"
	rel="stylesheet">
<style type="text/css">
/* A simple CSS calendar that uses a bit of 
   JavaScript to display the current date.
   Use the first variable to set the width. 
   The month and day font size will scale automatically. */
:root { -
	-calwidth: 80px; -
	-fontsize-month: calc(var(- -calwidth)/4); -
	-fontsize-day: calc(var(- -calwidth)/2); -
	-monthcolor: #ee4261;
}

.Calendar {
	margin-left: auto;
	margin-right: auto;
	width: var(- -calwidth);
	height: fit-content;
	background-color: #ffffff;
	border-radius: 8px;
	font-family: sans-serif;
}

.Month {
	background-color: var(- -monthcolor);
	color: #000;
	font-weight: bold;
	text-align: center;
	letter-spacing: 1px;
	border-radius: 8px 8px 0px 0px;
	margin-bottom: 0px;
}

.Day {
	background-color: #ffffff;
	color: #000000;
	font-size: var(- -fontsize-day);
	font-weight: bold;
	text-align: center;
	letter-spacing: 1px;
	border-radius: 0px 0px 8px 8px;
	margin-top: 0px;
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

				<section class="section">

					<div class="card">

						<div class="row">

							<div class="col">
								<div id="location"
									style="font-size: 10px; margin-top: 10px; margin-left: 20px;"></div>

								<p>
									<!-- <span id="currentTime" style="font-size: 25px; font-weight: bold; margin-top: 10px; margin-left: 20px; color: #000"></span> -->
								<span id="display" style="font-size:15px;font-weight: bold; margin-left: 20px;"></span>
									</p>

								
							</div>
							<div class="col"></div>
							<div class="col"></div>
							<div class="col"></div>
							<div class="col">
								<div id="icon" style="margin-top: 8%"></div>
							</div>
							<div class="col">
								<div id="temp" style="margin-top: 12%;"></div>

							</div>
						</div>
					</div>


				</section>

				<section class="section">

					<div class="row ">
						<div class="col">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Today's Task</h5>
													<h2 class="mb-3 font-18">${todaysCount}</h2>
													<p class="mb-0">
														<span class="col-green"></span>
													</p>
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/TodayTask.jpg" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Important Task</h5>
													<h2 class="mb-3 font-18">${Important}</h2>
													<!-- <p class="mb-0"><span class="col-orange">09%</span> Decrease</p> -->
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/ImportantTask.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">My Tasks</h5>
													<h2 class="mb-3 font-18">${UserTasks}</h2>
													<!--  <p class="mb-0"><span class="col-green">18%</span>
                            Increase</p> -->
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/MyTask.jpg" alt="">

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-6">
							<div class="card">
								<div class="card-header">
									<h4>Pie Chart</h4>
								</div>
								<div class="card-body">

									<canvas id="pieChart"
										style="display: block; height: 187px; width: 366px;"></canvas>

								</div>
							</div>
						</div>
						<div class="col-6">
							<div class="card">
								<div class="card-header">
									<h4>Line Chart</h4>
								</div>
								<div class="card-body">
									<canvas id="lineChart"></canvas>
								</div>
							</div>
						</div>

					</div>

					<div class="row">

						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h4>Today's Task</h4>
									<div class="card-header-form">
										<form>
											<div class="input-group">
												<input type="text" class="form-control" id="searchtask"
													placeholder="Search">
												<div class="input-group-btn">
													<button class="btn btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table table-striped">
											<tr>
												<th class="text-center">
													<div
														class="custom-checkbox custom-checkbox-table custom-control">
														<input type="checkbox" data-checkboxes="mygroup"
															data-checkbox-role="dad" class="custom-control-input"
															id="checkbox-all"> <label for="checkbox-all"
															class="custom-control-label">&nbsp;</label>
													</div>
												</th>
												<th>Task Name</th>
												<th>Description</th>
												<th>Assign Date</th>
												<th>Due Date</th> 
												<th>Time</th>
												<th>Action</th>
											</tr>
											 <c:forEach items="${listtask}" var="task">
											<tbody id="task">
												<tr>
													<td class="p-0 text-center">
														<div class="custom-checkbox custom-control">
															<input type="checkbox" data-checkboxes="mygroup"
																class="custom-control-input" id="checkbox-1"> <label
																for="checkbox-1" class="custom-control-label"
																data-toggle="tooltip" title="Complete Task"></label>
														</div>
													</td>
													<td>${task.taskName}</td>
													<td>${task.description}</td>
													<td>${task.startDate}</td>
													<td>${task.endDate}</td>
													<td>${task.taskTime}</td>
													<td><a href="getTask/${task.taskId}" class="btn btn-icon btn-primary"><i
															class="far fa-edit" data-toggle="tooltip"
															title="Edit Task"></i></a>&nbsp;&nbsp; <a href="/deleteTask/${task.taskId}"
														class="btn btn-icon btn-danger"><i
															class="fas fa-trash-alt" data-toggle="tooltip"
															title="Delete Task"></i></a>&nbsp;&nbsp; <a href="/impTask/${task.taskId}"
														class="btn btn-icon btn-light" data-toggle="tooltip"
														title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
													</td>
												</tr>
												
											</tbody>
											</c:forEach> 
											<tr>
												<td colspan="7" style="text-align: center;"><a
													href="myday"
													class="card-footer card-link text-center small">View
														All</a></td>
											</tr>
											<br>
										</table>

									</div>

								</div>
							</div>
						</div>
					</div>

				</section>
			</div>
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
	<script type="text/javascript">
		var myDate = new Date();

		var myMonths = [ "January ", "February ", "March ", "April ", "May ",
				"June ", "July ", "August ", "September ", "October ",
				"November ", "December " ];

		document.getElementById("display").innerHTML = myMonths[myDate
				.getMonth()]
				+ myDate.getDate() + "th, " + myDate.getFullYear();

		//this uses the number 4 because it's currently april, then finds the 4th string in the array.

		// date.toDateString()
	</script>

	<script type="text/javascript">
		function updateTime() {
			var dateInfo = new Date();

			// time - make 24hr
			var hr, _min = (dateInfo.getMinutes() < 10) ? "0"
					+ dateInfo.getMinutes() : dateInfo.getMinutes(), sec = (dateInfo
					.getSeconds() < 10) ? "0" + dateInfo.getSeconds()
					: dateInfo.getSeconds(), hrs = (dateInfo.getHours() < 10) ? "0"
					+ dateInfo.getHours()
					: dateInfo.getHours();

			var currentTime = hrs + ":" + _min + ":" + sec;

			// print time
			document.getElementsByClassName("time")[0].innerHTML = currentTime;

			// date 
			var dow = [ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
					"Friday", "Saturday" ], month = [ "January", "February",
					"March", "April", "May", "June", "July", "August",
					"September", "October", "November", "December" ], day = dateInfo
					.getDate();

			// store date
			var currentDate = dow[dateInfo.getDay()] + ", " + " " + day
					+ numberSuffix(day) + " " + month[dateInfo.getMonth()]
					+ " " + dateInfo.getFullYear()

			document.getElementsByClassName("date")[0].innerHTML = currentDate;
		};

		// print time and date once, then update every second
		updateTime();
		setInterval(function() {
			updateTime()
		}, 1000);

		// add number suffix
		function numberSuffix(theNumber) {

			var suffix;

			if (theNumber == 1 || theNumber == 21 || theNumber == 31) {
				suffix = "st";
			} else if (theNumber == 2 || theNumber == 22) {
				suffix = "nd";
			} else if (theNumber == 3 || theNumber == 23) {
				suffix = "rd";
			} else {
				suffix = "th";
			}

			return suffix;
		}
	</script>

	<script type="text/javascript">
		//pie
		var ctxP = document.getElementById("pieChart").getContext('2d');
		var myPieChart = new Chart(ctxP, {
			type : 'pie',
			data : {
				labels : [ "TodayTask", "ImportantTask", "MyTasks", ],
				datasets : [ {
					data : [ 50, 80, 100 ],
					backgroundColor : [ "#6610f2", "#7c4dff", "#b388ff" ],
					hoverBackgroundColor : [ "#6610f2", "#7c4dff", "#b388ff" ]
				} ]
			},
			options : {
				responsive : true
			}
		});
	</script>

	<script type="text/javascript">
		window.onload = function() {
			clock();
			function clock() {
				var now = new Date();
				var TwentyFourHour = now.getHours();
				var hour = now.getHours();
				var min = now.getMinutes();
				var sec = now.getSeconds();
				var mid = 'PM';
				if (min < 10) {
					min = "0" + min;
				}
				if (hour > 12) {
					hour = hour - 12;
				}
				if (hour == 0) {
					hour = 12;
				}
				if (TwentyFourHour < 12) {
					mid = 'AM';
				}
				document.getElementById('currentTime').innerHTML = hour + ':'
						+ min + ' ' + mid;
				setTimeout(clock, 1000);
			}
		}
	</script>

	<script type="text/javascript">
		//line
		var ctxL = document.getElementById("lineChart").getContext('2d');
		var myLineChart = new Chart(ctxL, {
			type : 'line',
			data : {
				labels : [ "January", "February", "March", "April", "May",
						"June", "July", "August", "September", "October",
						"November", "December" ],
				datasets : [ /* {
																																																					label : "Tasks",
																																																					data : [ 65, 59, 80, 81, 56, 55, 40, 80, 81, 56, 55, 40 ],
																																																					backgroundColor : [ 'rgba(105, 0, 132, .2)', ],
																																																					borderColor : [ 'rgba(200, 99, 132, .7)', ],
																																																					borderWidth : 2
																																																				}, */{
					label : "Tasks",
					data : [ 28, 48, 40, 19, 86, 27, 90, 40, 19, 86, 27, 90 ],
					backgroundColor : [ 'rgba(0, 137, 132, .2)', ],
					borderColor : [ 'rgba(0, 10, 130, .7)', ],
					borderWidth : 2
				} ]
			},
			options : {
				responsive : true
			}
		});
	</script>
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
	<script type="text/javascript">
		var weatherData = {};

		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showWeather);
			} else {
				alert("Geolocation is not supported in your browser");
			}
		}

		function showWeather(position) {
			var lat = position.coords.latitude.toString().substr(0,
					position.coords.latitude.toString().indexOf(".") + 4);
			var lon = position.coords.longitude.toString().substr(0,
					position.coords.longitude.toString().indexOf(".") + 4);

			searchString = "https://fcc-weather-api.glitch.me//api/current?lon="
					+ lon + "&lat=" + lat;

			$.getJSON(searchString, function(json) {
				var location = json.name;
				var country = json.sys.country;
				var tempDegC = json.main.temp;
				var tempDegF = (tempDegC * 1.8) + 32;
				var icon = json.weather[0]['icon'];
				if (typeof icon == undefined) {
					showWeather(position);
				}
				var contentLocation = '<h5>' + location + ', ' + country
						+ '</h5>';
				var contentTemp = '<h2>' + tempDegC + '&#8451;</h2>';
				var contentIcon = '<img src="' + icon + '"></i>';
				$('#location').html(contentLocation);
				$('#temp').html(contentTemp);
				$('#icon').html(contentIcon);
			});
		}

		getLocation();
	</script>

</body>
</html>