<%@page import="kr.korea.pcc.vo.BoardVO"%>
<%@page import="kr.korea.pcc.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro|Abril+Fatface|Poor+Story" rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../include.jsp"%>
<%
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);

%>
<!doctype html>
<html lang="ko">
<head>
	<jsp:include page="HeadTag.jsp" />
	<style>
		table {
			margin: auto;
			padding: 20px;
			border: 1px solid black;
		}
	</style>
	
	<script>
		function formCheck(obj) {
			if (!obj.subject.value) {
				alert("제목을 입력해 주세요!!");
				obj.subject.focus();
				return false;
			}
			if (!obj.content.value) {
				alert("내용을 입력해 주세요!!");
				obj.content.focus();
				return false;
			}
			
			return true;
		}
	</script>

</head>

<%
	

%>
<body>
	<!-- 섹션(중간) 영역 -->
	<div id="section">
		<div class="article">
			<form action="../modifyOk.jsp?board_idx=${board_idx}&board_idx_incre=${board_idx_incre}" method="POST" onsubmit="return formCheck(this);">
				<table style="border-collapse:separate; border-spacing:0 20px;">
					<tr>
						<td
							style="text-align: center; font-size: 17pt; padding:10px; border-radius:30px; box-shadow:0px 0px 15px coral; font-family:'Poor Story', cursive; font-weight:700; letter-spacing:5px;" 
							colspan="2" >글 수정
						</td>
					</tr>
					<tr>
						<td style="">제목</td>
						<td><input type="text" name="subject" width="100" value="${vo.subject}"/></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" cols="100" rows="25">${vo.content}</textarea></td>
					</tr>
					<tr>
						<td style="text-align: right;" colspan="2">
							<input type="submit" value="수정하기" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="FooterTag.jsp" />
</body>

</html>