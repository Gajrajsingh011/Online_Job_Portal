<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
body {
	background: url("img/image.jpg");
	width: 100%;
	height: 621px;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Registration</h5>
						</div>

						<c:if test="${not empty succMsg }">
							<h4 class="text-center text-success ">${succMsg }<a
									href="login.jsp">Login here</a>
							</h4>
							<c:remove var="succMsg" />
						</c:if>

						<form action="add_user" method="post">
							<div class="form-group">
								<Label>Enter Full Name</Label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name">
							</div>
							<div class="form-group">
								<Label>Enter Qualification</Label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="qua">
							</div>

							<div class="form-group">
								<Label>Enter Email</Label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">
							</div>
							<div class="form-group">
								<Label for="exampleInputPassword1">Enter Password</Label> <input
									type="password" required="required" class="form-control"
									id="exampleInputPassword1" name="ps">
							</div>
							<button type="submit"
								class="btn btn-primary col-md-12 badge-pill btn-black">Register</button>

						</form>
					</div>
					<div class="card-footer text-center">
						<p class="fs-6">
							If' You already have an Account :-<a href="login.jsp"
								class="text-decoration-none">Login Here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>