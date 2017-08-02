<%@ page import="web.*"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<link type = "text/css" rel = "stylesheet" href = "style.css">
<title>Image</title>
</head>
<body>
	<div class = "UpperBar">
			<form action="/MachineProject/Home.jsp" method="POST">
   				<input type="submit" value="Home" class ="Home" />
			</form>

			<form action="/MachineProject/UserProfile.jsp" method="POST">
  				<input type="submit" value="Profile" class = "Profile" />
			</form>

			<form action="/MachineProject/Search" method="POST">
    			 <input type="text" name="Search" placeholder="Search tags" class = "Search"/>  
			</form>

			<form action="/MachineProject/Login.jsp" method="POST">
    			<input type="submit" value="Login" class = "Login"/>
			</form>
			
			<form action="/MachineProject/Logout" method="POST">
    			<input type="submit" value="Logout" class = "Logout"/>
			</form>
	</div>
	
	<br>
	<br>
	
	<div id = "Photo">
		<table id = "Photo_Table">
		
			<tr>
				
				<td>
					<img src="<%=((Image)session.getAttribute("photo")).geturl() %>"/>
				</td>
				<td> 
					
				</td>
			</tr>
		</table>
		<table id = "Photo_Table_Details">
						<tr><td> <%=((Image)session.getAttribute("photo")).getTitle() %> </td></tr>
						<tr><td> <%=((Image)session.getAttribute("photo")).getDescription() %> </td></tr>
						<tr>
							<td> Uploader </td>
							<td> <%=((Image)session.getAttribute("photo")).getUploader() %> </td>
						</tr>
						
						<tr> 
							<td > Tags: </td>
							<td> <%for(int i = 0; i < ((Image)session.getAttribute("photo")).getTags().length; i++){
									out.print(((Image)session.getAttribute("photo")).getTags()[i]);
									if(i != ((Image)session.getAttribute("photo")).getTags().length-1){
										out.print(", ");
									}
								} %> 
							</td>
						</tr>
					<%if(session.getAttribute("user")!=null){ %>
					<%if(session.getAttribute("user").equals(((Image)session.getAttribute("photo")).getUploader())){ %>
						<tr>
							<form action="/MachineProject/Edit" method="POST">
								<td> 
	    							<input type="text" name="Tags" placeholder="Add Tags Here..." class = "Add_Tag_Bar"/>
	    							<input type="text" name="SharedUsers" placeholder="Add Users Here.." class = "Add_Tag_Bar"/>  
								</td>
								<td>
										<input type="submit" value="Update" class = "Add_Tag" />
								</td>
							</form>
						</tr>
					<%}} %>
					</table>
	</div>
</body>

	<script>
			foo();
			function foo(){

			<%if (session.getAttribute("user") != null){%>
		
				document.getElementsByClassName('Logout')[0].style.visibility = 'visible';
				document.getElementsByClassName('Login')[0].style.visibility = 'hidden';	
				
			<%}else{%>
				document.getElementsByClassName('Logout')[0].style.visibility = 'hidden';
				document.getElementsByClassName('Login')[0].style.visibility = 'visible';
				document.getElementsByClassName('Profile')[0].style.visibility = 'hidden';
				
			<%}%>
		}
	</script>

</html>