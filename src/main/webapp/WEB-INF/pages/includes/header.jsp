<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.amy.banking.util.AppConstants"%>
<header class="header">
	<!--logo start-->
	<h1>MyBank Ltd</h1>
	<!--logo end-->
</header>
<script>
	function formSubmit() {
		alert(document.getElementById("logoutForm").action)
		document.getElementById("logoutForm").submit();
	}
</script>
<nav class="navbar navbar-default navbar-static-top navbar-strip">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<span class="navbar-brand ">${param.pagetitle}</span>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<span class="k-textbox k-space-right"> <input type="text"
							id="menu" name="menu" class="form-group"
							placeholder="Menu Shortcut"> <a href="#" id="searchmenu"
							name="searchmenu" class="k-icon k-i-search">&nbsp;</a>
						</span>
					</div>
				</form>
				<%
					java.text.DateFormat df = new java.text.SimpleDateFormat(
							"dd/MM/yyyy");
				%>
				<li class="topDate">java.text.DateFormat df = new
					java.text.SimpleDateFormat("dd/MM/yyyy")</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"> <c:if
							test="${pageContext.request.userPrincipal.name != null}">
 						User : ${pageContext.request.userPrincipal.name} 
					</c:if> <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<c:url value="/j_spring_security_logout" var="logoutUrl" />
						<form action="${logoutUrl}" method="post" id="logoutForm">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
						<li><a href="javascript:formSubmit()"><i class="fa fa-key"></i> Log Out</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>