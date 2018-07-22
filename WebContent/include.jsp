<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%
 	request.setCharacterEncoding("UTF-8");
 %>
 <%
	// 페이지 번호
	int currentPage = 1;
	try {
		currentPage = Integer.parseInt(request.getParameter("p"));
	}catch(Exception e) {
		;
	}
	
	// 페이지당 글수
	int pageSize = 4;
	try {
		pageSize = Integer.parseInt(request.getParameter("s"));
	}catch(Exception e) {
		;
	}
	
	// 페이지리스트 개수
	int blockSize = 5;
	try {
		blockSize = Integer.parseInt(request.getParameter("b"));
	}catch(Exception e) {
		;
	}
	
	// 글번호 ( 수정할 때 )
	int idx = 0;
	try {
		idx = Integer.parseInt(request.getParameter("idx"));
	}catch(Exception e) {
		;
	}
	
	// 조회수 증가여부(0은 조회수 증가, 1은 조회수 증가 안함)
// 	int mode = 0;
// 	try {
// 		mode = Integer.parseInt(request.getParameter("mode"));
// 	}catch(Exception e) {
// 		;
// 	}
	
	request.setAttribute("currentPage", currentPage);
	request.setAttribute("pageSize", pageSize);
	request.setAttribute("blockSize", blockSize);
	request.setAttribute("idx", idx);
//	request.setAttribute("mode", mode);
	
	//EL로 사용하기 위해서 request 영역에 저장한다.
	
	// 줄바꿈 처리시 사용
	request.setAttribute("newLine", "\n");
	request.setAttribute("br", "<br>");
	
	

%>
    