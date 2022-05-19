<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/manager_reservations.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>������</title>
</head>
<body>
    
    
<div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">
            <div class="logo-box ">
                <div class="img-box">
                    <a href="manager_main.jsp">
                        <img src="img/logo.png" alt="" width="150px" height="69px">
                    </a>
                </div>
            </div>
        </div>
        <div class="line"></div>

    </div>



	
<%



		

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");



%>




    <section id="content" >
        <div class="inner">
            <h1 class="title">�������</h1>

            <div class="wrap">

                <div class="titleArea">
                    <h2>��ü ���� ��ȸ</h2>
                </div>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>�����ȣ</th>
						<th>������̵�</th>
                        <th>������</th>
						<th>����ó</th>
                        <th>��������</th>
                        <th>�ü�����</th>
                        <th>��û����</th>
						<th>����</th>
						<th>����</th>
                    </tr>
                </thead>
                
                
              <tbody>
			  <%
	String jsql = "select * from rezinfo";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {

			String rezNo =  rs.getString("rezNo");	
			String uId =  rs.getString("uId");
			String ordDate =  rs.getString("ordDate");	
			String ordCustomer =  rs.getString("ordCustomer");	
			String ordPhone =  rs.getString("ordPhone");	
			String ordPay =  rs.getString("ordPay");	
			String ordSex =  rs.getString("ordSex");	
			String ordBank =  rs.getString("ordBank");
			String ordMemo =  rs.getString("ordMemo");

			String jsql1 = "select * from rez";   
			PreparedStatement pstmt1 = con.prepareStatement(jsql1);

			ResultSet rs1 = pstmt1.executeQuery();
			rs1.next();

			String rezNo1 =  rs1.getString("rezNo");	
	//		String prdNo =  rs1.getString("prdNo");	
	//		String rezDate =  rs1.getString("rezDate");	


				  %>
                    <tr>
                        <td><%=rezNo%></td>
						<td><%=uId%></td>
                        <td><%=ordCustomer%></td>
                        <td><%=ordPhone%></td>
						<%
				String jsql2= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt2 = con.prepareStatement(jsql2);
						pstmt2.setString(1, rezNo);

						ResultSet rs2 = pstmt2.executeQuery();	
						rs2.next();

						Timestamp rezDate = rs2.getTimestamp("rezDate");
						String prdNo = rs2.getString("prdNo");

						String curDate = rezDate.toLocaleString();

						
						String jsql7= "SELECT * FROM surgery WHERE prdNo=?";
						PreparedStatement pstmt7 = con.prepareStatement(jsql7);
						pstmt7.setString(1, prdNo);

						ResultSet rs7 = pstmt7.executeQuery();	
						rs7.next();

						String prdName = rs7.getString("prdName");
				  %>
						<td><%=curDate%></td>
                        <td class="opname">
						<%
					  String jsql6= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt6 = con.prepareStatement(jsql6);
						pstmt6.setString(1, rezNo);

						ResultSet rs6 = pstmt6.executeQuery();	
						while(rs6.next()) {
							String opNo = rs6.getString("opNo");


						String jsql8= "SELECT * FROM soption WHERE opNo=?";
						PreparedStatement pstmt8 = con.prepareStatement(jsql8);
						pstmt8.setString(1, opNo);

						ResultSet rs8 = pstmt8.executeQuery();	
						rs8.next();

						String opName = rs8.getString("opName");

							
					  %>
					  <%=prdName%>(<%=opName%>) <br>
					  <%
						  }
					  %></td>
                        <td><%=ordMemo%></td>
						<td><a style = "color:blue;" href="update_ManagerRez.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                        <td><a style = "color:red;" onclick="real()">Yes</a></td>
                    </tr>

					<script>
					var rez = <%=rezNo%>;
					var prd = <%=prdNo%>;
					
							function real(){
							 if(confirm("���� ������ ����Ͻðڽ��ϱ�?"))
							 {
								 localStorage.setItem('rezNo','rez');
								  localStorage.setItem('prdNo','prd');
							  document.location.href="delete_ManagerRez.jsp"
							 }
							 else
							 {
							 alert('������ �����մϴ�.');
							 return false;
							 }
							}
					</script>
					<%
	}
				  %>
                </tbody>
            </table>

            <a href="manager_main.jsp">
                <div class="btn">����</div>
            </a> 


        </div>
    </section>

	





    


	<%
    } 
catch(Exception e) {
		out.println(e);
}
%>







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



    







    <!-- ž�� -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>





    <script>


        AOS.init();

				function _submit(f)
				{
					//���� ���� �� ����
					if (typeof(f.elements['chk[]'].length) == 'undefined') //����
					{
						if (f.elements['chk[]'].checked==false)
						{
							f.elements['field_a[]'].disabled=true;
							f.elements['field_b[]'].disabled=true;
						}
					} else { //����
						for (i=0; i<f.elements['chk[]'].length; i++)
						{
							if (f.elements['chk[]'][i].checked==false)
							{
								f.elements['field_a[]'][i].disabled=true;
								f.elements['field_b[]'][i].disabled=true;
							}
						}
					}
					return true;
				}

        let = 0

        $(function () {
            $(".plz li").on("click", function () {
                no = $(this).index() + 1;
                $(".plz li ").show();
                $('.plz li ').removeClass('on');
                $(this).addClass('on');

                $(".ne").hide();
                if ($('.ne').css('display') == 'none') {
                    $(".ne" + no).show();
                } else {
                    $(".ne").hide();
                }



            });
        });


const $topBtn = document.querySelector(".moveTopBtn");

// ��ư Ŭ�� �� �� ���� �̵�
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
}


		
     gsap.to('.top-wrap > .top-box2', {
            scrollTrigger: {
                trigger: '.top-wrap',
                start: 'top -98px',
                scrub: true
            },
            height: '61px',
            textalign: 'center',
            top: '0',
            position: 'fixed',
            background: '#fff',
            borderBottom: '1px solid #ccc'
        });


 function keyword_check(){

			  if(document.search.keyword.value==''){ 

			  alert('�˻�� �Է��ϼ���');

			  document.search.keyword.focus(); 

			  return false; 

			  }

			  else return true;

			 }




		function search_form()
		{
			var frm = document.search;
			frm.action = "search.jsp";
			frm.submit();
		}


		function inCart1()              //  "��ٱ��ϴ��" ��ư�� Ŭ���� ȣ��
		{

		var checked = $('.chk').is(':checked');

		if(checked) {

			var frm1 = document.form;

			frm1.action = "incart1.jsp"
			document.getElementById('button').click();
		} else {
			alert("�ɼ��� �������ּ��� !");
		}
			
		}

		function rez()              //  "��ٱ��ϴ��" ��ư�� Ŭ���� ȣ��
		{

		var checked = $('.chk').is(':checked');

		if(checked) {

			var frm1 = document.form;
			frm1.action = "rezResult.jsp"
			document.getElementById('button').click();

		} else {
			alert("�ɼ��� �������ּ��� !");
		}
			


		}


		function cart1()
		{
			alert('��ٱ��Ͽ� �ش� �ü��� �ֽ��ϴ�.');
		}

		function login()
		{
			alert('�α��� �� �̿� ������ �������Դϴ�.');
			document.location.href="login.jsp";
		}


		

		






    </script>


    


</body>
</html>