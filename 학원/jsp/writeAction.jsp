<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>


<%

String realFolder="";
String saveFolder = "bbsUpload";		//사진을 저장할 경로
String encType = "utf-8";				//변환형식
int maxSize=5*1024*1024;				//사진의 size
		
ServletContext context = this.getServletContext();		//절대경로를 얻는다
realFolder = context.getRealPath(saveFolder);			//saveFolder의 절대경로를 얻음
		
MultipartRequest multi = null;

//파일업로드를 직접적으로 담당		
multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());

//form으로 전달받은 3가지를 가져온다
String fileName = multi.getFilesystemName("fileName");
String bbsTitle = multi.getParameter("bbsTitle");
String bbsContent = multi.getParameter("bbsContent");

bbs.setBbsTitle(bbsTitle);
bbs.setBbsContent(bbsContent);



if(fileName != null){
	File oldFile = new File(realFolder+"\\"+fileName);
	File newFile = new File(realFolder+"\\"+(bbsID-1)+"사진.jpg");
	oldFile.renameTo(newFile);
}

%>