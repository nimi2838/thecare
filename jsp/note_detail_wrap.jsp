<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/note_detail.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <title>사진 업로드</title>
</head>
<body>
<!-- 
  <input type="file" id="inputImage">
  
  <button id="sendButton">보내기</button>
  
  <img src="" class="uploadImage" style="width: 300px; whight: 300px;"> -->


  <form method="post" name="upload" enctype="multipart/form-data">
  <input type="file" id="inputImage" name="file">
<!-- <input type="file" id="inputImage" name="file" accept="image/*"> -->

  <!-- 
  <input type="submit" value="보내기"> -->
  <button id="sendButton" style="width: 80px; height: 80px; background: #ccc;">미리보기</button>
  <button onclick=" upload()">보내기</button>
 


</form>
  <img src="" class="uploadImage" style="width: 300px; whight: 300px;">
 


    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>

    <script>


document.querySelector("#sendButton").addEventListener('click',()=>{

      let selectFile = document.querySelector("#inputImage").files[0];

      const file = URL.createObjectURL(selectFile);

      document.querySelector(".uploadImage").src = file;

    });




        function upload()
            {
                var frm = document.upload;
                frm.action = "upload.jsp";
                frm.submit();
            }
    



        </script>

		


</body>

</html>