
<html>
	<head>
	<link type = "text/css" rel = "stylesheet" href = "style.css">
		<title>Login</title>
		<style>
		</style>
	</head>
	
	<body>
		<div class = "UpperBar">
			<form action="/MachineProject/Home.jsp" method="POST">
   				<input type="submit" value="Home" class ="Home" />
			</form>
			
			<form action="/MachineProject/Search" method="POST">
    			 <input type="text" name="Search" placeholder="Search tags" class = "Search"/>  
			</form>

			<form action="/MachineProject/Login.jsp" method="POST">
    			<input type="submit" value="Login" class = "Login"/>
			</form>
			
		</div>	
	
	
		<p> sign In </p>
	
		<form action="/MachineProject/Servlet" method="POST">
			
					<input type="text" name="Username" value = "username">
				
					<input type="password" name="Password" value = "password">
			
					
					<table>
					<tr>
					<td>Remember me?</td>
					<td> <input type="checkbox" name="Remember"></td>
					</tr>
					</table>
					<input type="submit" value="Login">
					
					
		</form>
	
		<p> Sign up </p>
		<form action="/MachineProject/Register" method="POST">
	
			
			
				<input type="text" name="Username" value = "username">
			
				<input type="password" name="Password" value = password>
				<input id = "Textbox" type="text" name="Description" value = "description about yourself">
				<br>
			<input type="submit" value="Register">
		
		</form>
			
	
		
	<br>
	<br>
	<br>
	
		
		<%if (request.getAttribute("error") != null){%>
			<%=request.getAttribute("error")%>
		<%} %>
		
	</body>
	
</html>