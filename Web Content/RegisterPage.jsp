<head>
 	<link href = "RegisterPage_style.css" rel="stylesheet"/>
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
			<br>
			<label>Description:</label>
			<br>
			<textarea name = "description" rows = "4" cols = "50"></textarea>
			<br>
			<button>Back</button>
			<input type = "submit" name = "submitForm" value = "Submit"/>
		</div>
	</form>
</body>
