<%@ page import="web.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<html>
	<head>
		<link type = "text/css" rel = "stylesheet" href = "style.css">
		<title>Home</title>
		
		<style>
		</style>
			
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
		$(document).ready(function(){
			$(".tr2").hide();
			$(".More_Images").click(function(){
				$(".tr2").show();
			})
		})
		</script>
	</head>
	<body>
	<div id = "box_UpperBar">
		<div class = "UpperBar">
			<form action="/MachineProject/Home" method="POST">
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
	</div>
		<br>
		
		<div id = "Image_Label">
			<div class ="Public_Images"> Public Images </div>
			<%if(session.getAttribute("user") != null){ %>
			<div class = "Shared_Images"> Shared Images </div>
			<%} %>
		</div>
		<%if(session.getAttribute("user") != null){ %>
		<div id = "Upload_Images_Outline">
			<div id = "Upload_Images">
				<form action="/MachineProject/Upload.jsp" method="POST">
    				<input type="submit" value="Upload a Image" class = "Upload"/>
				</form>
			</div>
		</div>
		<%} %>
		<br>
		<br>
		<br>
		
		<div id = "Public">
			<table class = "Public_Table" style="position:relative;">
			<%if(((String)request.getAttribute("Search")) == null) {%>
					<%for(int i = 0; i < ((ArrayList<Image>)session.getAttribute("images")).size();){ %>
						<tr class="t1">
							<%for(int j = i; i < j + 5;){ %>
								<%if(!(((ArrayList<Image>)session.getAttribute("images")).get(i).getPrivacy())){ %>
									<%session.setAttribute("Image", ((ArrayList<Image>)session.getAttribute("images")).get(i)); %>
									<td>
										
										<form action="/MachineProject/SearchImage" method="POST">
										  	<input type="hidden" name="id" value="<%=((ArrayList<Image>)session.getAttribute("images")).get(i).getID()%>">
											<input type="image" src="<%=((ArrayList<Image>)session.getAttribute("images")).get(i).getThumbnail()%>">
										</form>
									</td>
								<%} %>
								<%i++;%>
							<%} %>
						</tr>
					<%} %>
					<%for(int i = 0; i < ((ArrayList<Image>)session.getAttribute("images")).size();){ %>
						<tr class="tr2">
						<%for(int j = i; i < j + 5;){ %>
								<%if(!(((ArrayList<Image>)session.getAttribute("images")).get(i).getPrivacy())){ %>
									<%session.setAttribute("Image", ((ArrayList<Image>)session.getAttribute("images")).get(i)); %>
									<td>
										
										<form action="/MachineProject/SearchImage" method="POST">
										  	<input type="hidden" name="id" value="<%=((ArrayList<Image>)session.getAttribute("images")).get(i).getID()%>">
											<input type="image" src="<%=((ArrayList<Image>)session.getAttribute("images")).get(i).getThumbnail()%>">
										</form>
									</td>
								<%} %>
								<%i++;%>
							<%} %>
						</tr>
						<%session.setAttribute("ImageAmt", i); %>
					<%} %>
					
			<%} else{ %>
				<%
			    ArrayList<Image> search = new ArrayList<Image>();
				  for(int i = 0; i < ((ArrayList<Image>)session.getAttribute("images")).size(); i ++){
					  for(int j = 0; j < ((ArrayList<Image>)session.getAttribute("images")).get(i).getTags().length; j++){
						  if(((String)request.getAttribute("Search")).equals(((ArrayList<Image>)session.getAttribute("images")).get(i).getTags()[j]) && !((((ArrayList<Image>)session.getAttribute("images")).get(i).getPrivacy())|| ((ArrayList<Image>)session.getAttribute("images")).get(i).getUploader() == (String)session.getAttribute("user"))){
							  search.add(((ArrayList<Image>)session.getAttribute("images")).get(i));
						  }
					  }
				  }
				  System.out.println(search.size());
				%>
				<%for(int i = 0; i < search.size();){ %>
					<tr>
					<%if(search.size() > 4){%>
						<%for(int j = i; i < j + 5; i++){ %>
								<%System.out.println(search.size());
								session.setAttribute("Image", search.get(i)); 
								%>
								<td>
									<form action="/MachineProject/SearchImage" method="POST">
									  	<input type="hidden" name="id" value="<%=search.get(i).getID()%>">
										<input type="image" src="<%=search.get(i).getThumbnail()%>">
									</form>
								</td>

							
						<%} %>
					<%} else{%>
						
								<%System.out.println(search.size());
								session.setAttribute("Image", search.get(i)); 
								%>
								<td>
									<form action="/MachineProject/SearchImage" method="POST">
									  	<input type="hidden" name="id" value="<%=search.get(i).getID()%>">
									  	<%System.out.println("hi");%>
										<input type="image" src="<%=search.get(i).getThumbnail()%>">
									</form>
								</td>
								<%i++;%>		
					<%} %>
					</tr>
				<%} %>
			<%} %>
			</table>
		</div>
		
		
		<div id = Outline_More_Images>
   			<button value="More Images" class ="More_Images" onclick="load_more();">Load more</button>
		</div>
		
		<%if(session.getAttribute("user") != null){ %>
		<div id = "Shared">
			<table class = "Shared_Table">
			    <%
			    ArrayList<Image> Images = new ArrayList<Image>();
				  for(int i = 0; i < ((ArrayList<Image>)session.getAttribute("images")).size(); i ++){
					  for(int j = 0; j < ((ArrayList<Image>)session.getAttribute("images")).get(i).getSharedUsers().length; j++){
						  System.out.print(((ArrayList<Image>)session.getAttribute("images")).get(i).getPrivacy());
						  if(((String)session.getAttribute("user")).equals(((ArrayList<Image>)session.getAttribute("images")).get(i).getSharedUsers()[j])){
							  if(((ArrayList<Image>)session.getAttribute("images")).get(i).getPrivacy())
							  	Images.add(((ArrayList<Image>)session.getAttribute("images")).get(i));
						  }
					  }
				  }
				%>
				<%for(int i = 0; i < Images.size();){ %>
					<tr>
					<%if(Images.size() > 4){%>
						<%for(int j = i; i < j + 5;){ %>
							<%session.setAttribute("Image", Images.get(i)); 
							%>
							<td>
								<form action="/MachineProject/SearchImage" method="POST">
								  	<input type="hidden" name="id" value="<%=Images.get(i).getID()%>">
									<input type="image" src="<%=Images.get(i).getThumbnail()%>">
								</form>
							</td>
							<%i++;%>
						<%} %>
					<%} else {%>
						<td>
								<form action="/MachineProject/SearchImage" method="POST">
								  	<input type="hidden" name="id" value="<%=Images.get(i).getID()%>">
									<input type="image" src="<%=Images.get(i).getThumbnail()%>">
								</form>
							</td>
							<%i++;%>
					<%} %>
					</tr>
				<%} %>
			</table>
		</div>
		<%} %>
		<script>		
			check();
			function check(){

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
	
		
	</body>
</html>