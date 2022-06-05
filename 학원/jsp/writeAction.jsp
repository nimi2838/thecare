<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>


<%

String realFolder="";
String saveFolder = "bbsUpload";		//������ ������ ���
String encType = "utf-8";				//��ȯ����
int maxSize=5*1024*1024;				//������ size
		
ServletContext context = this.getServletContext();		//�����θ� ��´�
realFolder = context.getRealPath(saveFolder);			//saveFolder�� �����θ� ����
		
MultipartRequest multi = null;

//���Ͼ��ε带 ���������� ���		
multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());

//form���� ���޹��� 3������ �����´�
String fileName = multi.getFilesystemName("fileName");
String bbsTitle = multi.getParameter("bbsTitle");
String bbsContent = multi.getParameter("bbsContent");

bbs.setBbsTitle(bbsTitle);
bbs.setBbsContent(bbsContent);



if(fileName != null){
	File oldFile = new File(realFolder+"\\"+fileName);
	File newFile = new File(realFolder+"\\"+(bbsID-1)+"����.jpg");
	oldFile.renameTo(newFile);
}

%>