<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>. : Intranet Magnabyte - <decorator:title default="Main" /> : .</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/magna-style.css">
<script
	src="${pageContext.request.contextPath}/js/jquery/jquery-1.10.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/vendor/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/datatable/datatable.js"></script>
<script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		function stripTrailingSlash(str) {
			if (str.substr(-1) == '/') {
				return str.substr(0, str.length - 1);
			}
			return str;
		}

		var url = window.location.pathname;
		var activePage = stripTrailingSlash(url);

		$('.nav li a').each(function() {
			var currentPage = stripTrailingSlash($(this).attr('href'));

			if (activePage == currentPage) {
				$(this).parent().addClass('active');
			}
		});
	});
</script>
<decorator:head />
</head>
<body>
	<div class="wrap">
		<!-- HEADER -->
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<div class="row-fluid">
						<div class="span3">
							<button type="button" class="btn btn-navbar"
								data-toggle="collapse" data-target=".nav-collapse">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="brand"
								href="${pageContext.request.contextPath}/intranet/welcome">
								<img id="computerIcon"
								src="${pageContext.request.contextPath}/img/computer-icon-white.png"
								alt="Logo"> Intranet Corporativa <span class="badge badge-info">@</span></a>
							
						</div>
						<div class="nav-collapse collapse pull-right">
							<ul class="nav">
								<li><a
									href="${pageContext.request.contextPath}/intranet/welcome">Inicio</a></li>
								<li><a
									href="${pageContext.request.contextPath}/intranet/directorio/showDirectorio">Directorio</a></li>
								<li><a href="#about">Acerca de</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="logo-header">
			<div class="container">
				<div class="row-fluid">
					<div class="span3">
						<div class="logo">
							<a href="#"><img id="logoImg"
								src="${pageContext.request.contextPath}/img/magnabyte_logo1.png"
								alt="Logo"></a>
						</div>
					</div>
					<div class="span1 pull-right">
						<div class="logo-net">
							<img id="folderNet"
									src="${pageContext.request.contextPath}/img/folders-internet-icon-white.png"
									alt="Logo" style="height: 45px; width: 45px;">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT -->
		<div class="content">
			<decorator:body />
		</div>
		<div id="push"></div>
	</div>
	
	<!-- FOOTER -->
	<footer id="footer" class="footer">
		<div class="container">
			<p class="credit">&copy; 2013 Magnabyte S.A de C.V.</p>
			<p class="credit">
				<a href="#">Acerca de &middot;</a><a href="#"> Ir arriba</a>
			</p>
		</div>
	</footer>
</body>
</html>