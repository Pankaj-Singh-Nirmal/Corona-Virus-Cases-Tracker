<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Corona Virus Cases Tracker</title>
		
		<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/readable/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
		<link type="text/css" rel="stylesheet" href="/css/custom.css"/>
	</head>

	<body class="bg">
		<div class="center">
			<div class="container margin-top-20">
				<span class="main_headline font-size-80">Corona Virus Cases Tracker</span>
				<br><br>
				<form:form action="data" method="get">
					<select name="countryName" class="selectpicker countrypicker" data-live-search="true" data-flag="true"></select>
			    	<input type="submit" class="btn btn-outline" value="Submit"/>
				</form:form>
				
				<c:if test="${select != null}">
					<br>
					<span class="card-text error">${select}</span>
				</c:if>
			</div>
			
			<c:if test="${coronaCasesList != null}">
				<div class="container margin-top-30 font-family-Trebuchet-MS">
					<div class="container">
						<span class="info-message font-size-60">${coronaCasesList[0]}</span>
					</div>
					<br>
					<div class="container">
						<span class="card-text font-bold font-size-50">${coronaCasesList[1]} 
							<span class="card-text font-300 color-orange">${coronaCasesList[2]}</span>
						</span>
					</div>
					<br>
					<div class="container">
						<span class="card-text font-bold font-size-50">${coronaCasesList[3]} 
							<span class="card-text font-300 color-red">${coronaCasesList[4]}</span>
						</span>
					</div>
					<br>
					<div class="container">
						<span class="card-text font-bold font-size-50">${coronaCasesList[5]} 
							<span class="card-text font-300 color-lime">${coronaCasesList[6]}</span>
						</span>
					</div>
				</div>
			</c:if>
			
			<c:if test="${dataUnknown != null}">
				<span class="card-text font-bold font-size-50 color-red">${dataUnknown}</span>
			</c:if>
		</div>
		
		<div class="marquee">
			<span>
				Disclaimer: All the data has been taken from www.worldometers.info and we take no responsibility for the accuracy of the data.
			</span>
		</div>
		
		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
	
		<script src="js/countrypicker.js"></script>
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-36251023-1']);
			_gaq.push(['_setDomainName', 'jqueryscript.net']);
			_gaq.push(['_trackPageview']);
			
			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		</script>
	</body>
</html>