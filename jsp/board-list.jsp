<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Namo WebEditor(Trial)">
    <link rel="stylesheet" href="css/biuda-qna.css">
    <title>���ֹ�������</title>
</head>
<%
	String myid = (String)session.getAttribute("sid");  
                          
%>
<style>
table {
font-size: 18px;
}
td {
padding:15px 0px ;
}
</style>
<body>


<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");
	%>


	       <div class="qna-box">
    <div class="qna-top flex">
            <h1>������</h1>
            <p>1:1����</p>
        </div>



   <%


		String group_index;
		int list_index;

		group_index = request.getParameter("group_index");
		   
		if (group_index != null) 	
				list_index = Integer.parseInt(group_index);  
		else 
				list_index = 0;    

		String jsql = "select count(*) from board";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();	

		cntRs.next();
		int cnt = cntRs.getInt(1);

		int cntList = cnt/20; 
		int remainder = cnt%20; 
		int cntList_1;
			
		if (cntList != 0) 
		{
			   if (remainder == 0)		
				  cntList_1 = cntList;          
			   else                  
				   cntList_1 = cntList + 1;		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1;
			   
		cntRs.close();
			
		String jsql2 = "select * from board order by masterid desc, replynum, step, no";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		ResultSet rs = pstmt2.executeQuery();
   %>
  

     <div align="center">
        <br><br>
        <table width=80% border="0" cellspacing="0" cellpadding="5" style="margin-top:15px;">
           <tr>
		   <td style="padding:0; font-size:25px;">
 	         <div align="left">���� ����</div>
 	      </td>
              <td colspan="5" style="padding:0;">
                 <div align="right"><font size=2 color=red>���� ������ / �� ������ &nbsp(<%= list_index + 1 %> / <%= cntList_1 %>)</div>
              </td>
           </tr>
		   </table>

   	<table border='0' width=80% cellpadding='0' cellspacing='0'>
	<tr>
		<td style="padding:0;"><hr size='1'>
		</td>
 	</tr>
   </table>  

      <table width=80% border="0" cellspacing="2" cellpadding="3">
 	   <tr  bgcolor='cccccc'>
 	      <td width=10% height="20">
 	         <div align="center"><b>�� ȣ</b></div>
 	      </td>
 	      <td width=40%  height="20">
 	         <div align="center"><b>�� ��</b></div>
 	      </td> 	      
 	      <td width=10% height="20">
 	         <div align="center"><b>�� �� ��</b></div>
 	      </td>
 	      <td width=20% height="20">
 	         <div align="center"><b>�� ¥</b></div>
 	      </td>
 	      <td width=10%  height="20">
 	         <div align="center"><b>��ȸ��</b></div>
 	      </td>
 	   </tr>
 	   
    <%
	if (!rs.wasNull()) 
	{
	   for(int i = 0; i < list_index * 20; i++) 
	      rs.next();

       int cursor = 0;
       while (rs.next()) 
	   {
              int idx = rs.getInt("idx");
              int no = rs.getInt("no");
              String subject = rs.getString("subject");
			  String name = rs.getString("name");
              String email = rs.getString("email");
              String ymd = rs.getString("ymd");
              int readcount = rs.getInt("readcount");
              int step = rs.getInt("step");
    %> 	   
   
 	   <tr bgcolor='ffffff'>
 	      <td>
 	         <div align="center"><%=no%></div>
 	      </td>
 	      <td>
    <%
             if (step > 0) 
		   {
                    for(int vacant=0; vacant < step; vacant++) 
					{
    %>
    		 &nbsp;&nbsp;
    		 
    <%
    		        }
           }
    %>
 	         <a href="board-view.jsp?idx=<%=idx%>" style="margin:0 15px;"><%=subject%></a>
 	      </td> 	      
 	      <td>
 	         <div align="center"><a href="mailto:<%=email%>"><%=name%></a></div>
 	      </td>

 	      <td>
 	         <div align="center"><font size="2"><%=ymd%></div>
 	      </td> 	      
 	      <td>
 	         <div align="center"><%=readcount%></div>
 	      </td>
 	   </tr>  	   

   <%
		 cursor ++;
         if (cursor >= 20) break; 
        }   
    }  
   %>
   
   	<table border='0' width=80% cellpadding='0' cellspacing='0' >
	<tr>
		<td style="padding:0;"><hr size='1'>
		</td>
 	</tr>
</table>  


     <div align="center">
        <table width="700" border="0" cellspacing="0" cellpadding="5" style="font-size:20px;">
          <tr>&nbsp;</tr><tr>
             <td colspan="5">        
                <div align="center" >
		<%
		%>
        <%= "["%><a href="board-list.jsp?group_index=0">start</a><%="]" %>
        &nbsp;&nbsp;&nbsp;
                
   <% 
       int startpage=1;
       int maxpage = cntList_1;
       int endpage = startpage + maxpage -1;

       for (int j=startpage; j<=endpage; j++) 
	   {
           if(j == list_index+1) 
		   {
   %>
               <%= j %>
   <%
            } 
            else 
			{
   %>
        <a  href="board_list.jsp?group_index=<%= j - 1 %>"><%= j %></a>
   <%
            }
       }
   %>
    
      &nbsp;&nbsp;&nbsp;
      <%= "["%><a href="board-list.jsp?group_index=<%= cntList_1 - 1 %>">end</a><%="]" %>
    
             </td>
          </tr>                
          <tr>
             <td colspan="5">
                <div align="center">  
        <center>
        <a href="board-write.jsp"><div style="width:100px; border:1px solid black; padding:5px 0;">�۾���</div></a>
		<br><br>
        </center> 
	 </div>
        </td>
      </tr>
    </table>

   </div>
</form>

</div>
		</div>

		


  <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width="150" alt="" style="margin-bottom: 20px;">
            <p class="text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
            </p>
            <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ǥ�� : ������
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ȭ��ȣ : 02-517-0912
            </p>
            <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
    </div>


<%

		 } 
catch(Exception e) {
		out.println(e);
}
   %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
 function search_form()
	{
					
		var frm = document.product;
		frm.action = "NextFile.jsp";
		frm.submit();
	}

	function keyword_check(){

		if(document.search.keyword.value==''){  

		alert('�˻�� �Է��ϼ���'); 

		document.search.keyword.focus(); 

		return false; 

		}

		else return true;

	}

	var no;

	$(function() {
				   
		$(".icon-search").on("click", function() {
		$(".art").css("display","block");
		no=$(this).index()+1;
		$(".art1_big").fadeIn({
			});

		})

		$(".art1_big_close").on("click", function() {
			$(".art").css("display","none");
		$(".art1_big").fadeOut();
			})
		})

		  function maingo(){
               location.href="main.jsp";
             }

function maintogo(){
               history.go(-1);
             }

     </script>	
</body>
</html>
