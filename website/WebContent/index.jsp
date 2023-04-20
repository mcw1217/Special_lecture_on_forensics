<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PC LAB 로그인/회원가입</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css"
	integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"
	integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD"
	crossorigin="anonymous"></script>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
<link rel="stylesheet" href="css/style1.css">

</head>
<body>
	<!-- partial:index.partial.html -->

	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3">
						</h6> <label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">
											</h4>
											<form method="POST" action="loginProc.jsp" >
												<div class="form-group">
													<input type="text" name="id" class="form-style"
														placeholder="아이디" id="id" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>
												<div class="form-group mt-2">
													<input type="password" name="pw" class="form-style"
														placeholder="비밀번호" id="pw" autocomplete="off"
														pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{8,20}$">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												<input type="submit" class="btn mt-4" value="로그인">
												<p class="mb-0 mt-4 text-center">
												</p>
											</form>
										</div>
									</div>
								</div>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- partial -->

</body>

</html>