<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
<%@ include file="includes/allincludes.jsp"%>
</head>

<body class="login-body">
<div id="login-box">

		
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>


	</div>
	<!-- Main -->
	<div class="container">
 
			<form name='loginForm' 	action="<c:url value='/j_spring_security_check' />" method='POST'  class="form-signin">
                    <h2 class="form-signin-heading"><img src="resources/images/logo.png" alt="logo"></h2>
                    <div class="login-wrap">
                        	 
                        <input name="username" id="username" placeholder="Username" type="text" class="form-control" autofocus/>
                        <input id="password" name="password" placeholder="Password" type="password" class="form-control" />
						
			            <button class="btn btn-lg btn-login btn-block" type="submit" id="login">Sign in</button>
			            
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			            
                    </div>
                </form>
	</div>
	<!-- /Main -->

	<!-- Footer -->
	<footer class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="footer-login text-center">&copy; 2015, MyBank.</div>
			</div>
		</div>
	</footer>
	<!-- /Footer -->
</body>
</html>
