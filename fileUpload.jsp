<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="fileUploadForm.jsp" method="post" enctype="multipart/form-data"">
<table border=1>
	<tr>
		<td colspan=2 align="center"><h3>파일 업로드 폼</h3></td>
	</tr>
	<tr>
		<td>올린 사람 :</td><td><input type="text" name="name"></td><br>
	</tr>
	<tr>
		<td>제목 :</td><td><input type="text" name="subject"></td><br>
	</tr>
	<tr>
		<td>파일명1 :</td><td><input type="file" name="fileeName1"></td><br>
	</tr>
	<tr>
		<td>파일명2 :</td><td><input type="file" name="fileName"></td><br>
	</tr>
	<tr>
		<td colspan=2 align="center"><input type="submit" value="전송"></td>
	</tr>
</table>
</form>
</body>
</html>