<head>
 	<link href = "LoginPage_style.css" rel="stylesheet"/>
</head>

<body>
	<div id = "menuDiv">
    </div>
	<form action = "/WEBAPDE-MP2/RegisterServlet" method = "POST">
		<div id = "regDiv">
			<label>Username: </label>
			<input type = "text" name = "username"/>
			<br>
			<label>Password: </label>
			<input type = "password" name = "password"/>
			<br>
			<input type = "checkbox" name = "rememberMe">Remember Me   
			<button>Back</button>
			<input type = "submit" name = "submitForm" value = "Submit"/>
		</div>
	</form>
</body>