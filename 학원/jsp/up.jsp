<%@ page contentType="text/html;charset=euc-kr" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>���� ���ε�</title>
</head>
<body>

<form method="post" encType = "multipart/form-data" action="writeAction.jsp?keyValue=multipart">
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		<thead>
			<tr>
				<th style="background-color: #eeeee; text-align: center;">�Խ��� �۾��� ���</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" class="form-control" placeholder="�� ����" name="bbsTitle" maxlength="50"></td>
			</tr>
			<tr>
				<td><textarea class="form-control" placeholder="�� ����" name="bbsContent" maxlength="2048" style="height:350px;"></textarea></td>
			</tr>
			<tr>
				<td><input type="file" name="fileName"></td>
			</tr>
		</tbody>
		</table>
			<input type="submit" class="btn-primary pull-right" value="�۾���">
</form>




</body>
		    

    <script language="javascript">

	










        </script>




</html>