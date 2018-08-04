<%@page import="kr.korea.pcc.service.BoardService"%>
<%@page import="kr.korea.pcc.vo.BoardVO"%>
<%@page import="kr.korea.pcc.vo.pagingVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include.jsp"%>
<%
	// 만약 HTMLCS면 board_idx = 1 JAVASCRIPT면 board_idx = 2
//	String path = application.getRealPath("/");
	String board_name = request.getRequestURL().substring(request.getRequestURL().lastIndexOf("/") +1);
	int board_idx = 2;
	pageContext.setAttribute("board_idx", board_idx);
	session.setAttribute("board_name", board_name);
	pagingVo<BoardVO> paging = BoardService.getInstance().selectList(currentPage, pageSize, blockSize, board_idx);
	request.setAttribute("paging", paging);
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="HeadTag.jsp" />
<script>
	function writeFun() {
		alert("로그인을 해주세요!");
		location.href="../Login.jsp";
	}
</script>
</head>

<body>
	<!-- 섹션(중간) 영역 -->
	<div id="section">
		<div class="article">
			<!--  게시판  Start  -->
			<table>
				<tr>
					<td colspan="5" align="center"
						style="font-size: 18pt; padding: 20px; border: none;">자유게시판
						-목록보기</td>
				</tr>
				<tr>
					<td colspan="5" align="right" style="border: none;">
						${paging.pageInfo }</td>
				</tr>
				<tr>
					<th>No</th>
					<th>제목</th>
					<th width="50%">내용</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:if test="${paging.totalCount==0 }">
					<tr>
						<td colspan="5" align="center">등록된 글이 없습니다.</td>
					</tr>
				</c:if>

				<c:if test="${paging.totalCount>0 }">
					<c:forEach var="vo" items="${paging.list }">
						<tr align="center">
							<td>${vo.board_idx_incre }</td>
							<td>${vo.subject }</td>
							<td>${vo.content }</td>
							<td>${vo.user }</td>
							<td>${vo.regdate }</td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
				<td colspan="5" align="center" style="border: none;">
					${paging.pageList }
				</td>
				<td>
					<c:url var="url" value="write.jsp">	
						<c:param name="board_idx" value="${board_idx}"></c:param>
					</c:url>
					<c:if test="${not empty sessionScope.id}">
					<button onclick="location.href='${url}'">글쓰기</button>
					</c:if>
					<c:if test="${empty sessionScope.id}">
						<button onclick="writeFun()">글쓰기</button>
					</c:if>
				</td>
			</tr>
			</table>

			<!--  게시판  End    -->
		</div>
	</div>
	<jsp:include page="FooterTag.jsp" />
</body>
</html>