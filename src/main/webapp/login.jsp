<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Page</title>
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
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Login Page</h5>
						</div>
						<c:if test="${not empty succMsg }">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if>
						<form action="login" method="post">
							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									required="required" type="password" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>
							<button type="submit"
								class="btn btn-primary col-md-12 badge-pill btn-black">Login</button>
						</form>
					</div>
					<div class="card-footer text-center">
						<p class="fs-6">
							Don't have an Account :-<a href="signup.jsp"
								class="text-decoration-none">Signup Here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>