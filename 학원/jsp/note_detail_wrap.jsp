<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/note_detail.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <title>사진 업로드</title>
</head>
<body>



<form method="post" name="upload" action="upload.jsp" enctype="multipart/form-data">
  <input type="file" id="inputImage" name="file" accept="image/*">

  <button id="sendButton" style="width: 80px; height: 80px; background: #ccc;">전송</button>
 



</form>



 <div>
  <img src="" class="uploadImage" style="width: 300px; whight: 300px;">
 </div>









</body>
		    

    <script language="javascript">

	
document.querySelector("#inputImage").addEventListener('change',()=>{

      let selectFile = document.querySelector("#inputImage").files[0];

      const file = URL.createObjectURL(selectFile);

      document.querySelector(".uploadImage").src = file;

    });











        </script>




</html>