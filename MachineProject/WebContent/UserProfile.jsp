<%@ page import="web.*"%>
<%@ page import="java.util.ArrayList"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
		$(".tr2").hide();
		$(".More_Photos").click(function(){
			$(".tr2").show();
		})
	})
	</script>
	<head>

		
		<title>Profile</title>
		<link type= "text/css" rel="stylesheet" href="style.css">
		
		
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
			
			

			<form action="/MachineProject/Logout" method="POST">
    			<input type="submit" value="Logout" class = "Login"/>
			</form>

	

			
		</div>
		<div class = "UserProfile">

			<div class = "UserName" style="text-align:center;">
				<%=((Person)session.getAttribute("userInfo")).getUsername() %>
			</div>
		</div>

		<div class = "UserDescription" style="text-align:center;">	
			<%=((Person)session.getAttribute("userInfo")).getDescription() %>
		</div>

		<div class = "UserPictureContainer">
			<div class= "UserPicture">
			<table class = "Shared_Table">
			    <%
			    ArrayList<Image> photos = new ArrayList<Image>();
				  for(int i = 0; i < ((ArrayList<Image>)session.getAttribute("images")).size(); i ++){
					 if(((Person)session.getAttribute("userInfo")).getUsername().equals(((ArrayList<Image>)session.getAttribute("images")).get(i).getUploader())){
						  photos.add(((ArrayList<Image>)session.getAttribute("images")).get(i));
						}
				  }
				%>
				<%for(int i = 0; i < photos.size();){ %>
					<tr>
					<%for(int j = i; i < j + 5;){ %>
						<%session.setAttribute("photo", photos.get(i)); 
						%>
						<td>
							<form action="/MachineProject/SearchImage" method="POST">
							  	<input type="hidden" name="id" value="<%=photos.get(i).getID()%>">
								<input type="image" src="<%=photos.get(i).getThumbnail()%>">
							</form>
						</td>
						<%i++;%>
					<%} %>
					</tr>
				<%} %>
				<%for(int i = 0; i < photos.size();){ %>
					<tr class="tr2">
					<%for(int j = i; i < j + 5;){ %>
						<%session.setAttribute("photo", photos.get(i)); 
						%>
						<td>
							<form action="/MachineProject/SearchImage" method="POST">
							  	<input type="hidden" name="id" value="<%=photos.get(i).getID()%>">
								<input type="image" src="<%=photos.get(i).getThumbnail()%>">
							</form>
						</td>
						<%i++;%>
					<%} %>
					</tr>
				<%} %>
			</table>
		</div>
	</div>
	

		<div>
   				<button class ="More_Photos"> Load More </button>
		</div>
		
	</body>
</html>