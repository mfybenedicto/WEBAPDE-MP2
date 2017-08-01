<html>
<head>
 	<link href = "PhotoViewer_style.css" rel="stylesheet"/>
 	
 	<script src="jquery-3.2.1.min.js">
 	
 	</script>
 	
 	<!-- 
 	<script>
 		function InitialLoad(){
 			//
 			
 			$('#menuDiv').html("HEllo");
 		}
 	</script>
 	-->
</head>

<body onload="InitialLoad();">
<body>
	<div id = "menuDiv">
	<!--  <% String user = (String)request.getAttribute("username"); %> 
	<%= user%>
	-->
	${sessionScope.username}
    </div>
    
    <div id = "picDummy" >
    </div>
    <br>
    
   	<label>Title: Insert Title here!!!</label>
   	<br>
   	<p>Description: Put le Description here blah lbah blah</p>
   	<label>Uploader: name of le uploader</label>
   	<br>
   	<br>
   	<label>Tags: Di ko alam kung paano gagawin ito</label>
   	<br>
   	<br>
   	<button onclick="history.back();")>Back</button>
   	<br>
   	<br>
   	<br>
   	<div>
   		<label>Allowed List: </label>
   		<br>
   		<br>
   		<button>Share</button>
   	</div>
   	<br>
   	<br>
   	<br>
   	<div>
   		<label>Tags: </label>
   		<button>Blue</button>
   		<button>Green</button>
   		<button>Yellow</button>
   		<br>
   		<br>
   		<button>Add Tags</button>
   	</div>
</body>
</html>