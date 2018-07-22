<%@page import="kr.korea.pcc.service.BoardService"%>
<%@page import="kr.korea.pcc.vo.BoardVO"%>
<%@page import="kr.korea.pcc.vo.pagingVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include.jsp"%>
<%
	pagingVo<BoardVO> paging = BoardService.getInstance().selectList(currentPage, pageSize, blockSize);
	request.setAttribute("paging", paging);
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="HeadTag.jsp" />
</head>

<body>
	<!-- 섹션(중간) 영역 -->
	<div id="section">
		<div class="article">
			<!--  게시판  Start  -->
			<table>
				<tr>
					<td colspan="4" align="center"
						style="font-size: 18pt; padding: 20px; border: none;">자유게시판
						-목록보기</td>
				</tr>
				<tr>
					<td colspan="4" align="right" style="border: none;">
						${paging.pageInfo }</td>
				</tr>
				<tr>
					<th>No</th>
					<th width="60%">내용</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:if test="${paging.totalCount==0 }">
					<tr>
						<td colspan="4" align="center">등록된 글이 없습니다.</td>
					</tr>
				</c:if>

				<c:if test="${paging.totalCount>0 }">
					<c:forEach var="vo" items="${paging.list }">
						<tr align="center">
							<td>${vo.idx }</td>
							<td>${vo.content }</td>
							<td>${vo.user }</td>
							<td>${vo.regdate }</td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
				<td colspan="4" align="center" style="border: none;">
					${paging.pageList }
				</td>
			</tr>
			</table>

			<!--  게시판  End    -->
		</div>
	</div>
	<jsp:include page="FooterTag.jsp" />
</body>
</html>