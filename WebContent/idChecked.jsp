<%@page import="kr.korea.pcc.service.JoinService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		int id_result = 0 ;
		String referer = request.getHeader("referer");
		id_result = JoinService.getInstance().idChecked(id);
		// 있으면 1 없으면 0
		if(id_result == 1) {
			out.println("<script>");
			out.println("alert('아이디 중복');");
			out.println("location.href = '"+referer+"';");
			out.println("</script>"); 
		}else {
			Cookie cookie = new Cookie("id",id);
			response.addCookie(cookie);
			out.println("<script>");
			out.println("alert('아이디 사용가능');");
			out.println("location.href = '"+referer+"';");
			out.println("</script>");
		}
		
	
	%>

</body>
</html>