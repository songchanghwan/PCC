<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Join</title>
<link rel="stylesheet" href="css/Join.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Poor+Story|Source+Sans+Pro"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function idChecked() {
		//		var id = document.getElementById("text_id").value; 
		var id = $('#text_id').val();
		location.href = "idChecked.jsp?id=" + id;
	}

	function formCheck(obj) {

		if (!obj.id.value) {
			alert("아이디을 반드시 입력해 주세요!!");
			obj.id.focus();
			return false;
		}

		if (!obj.nicname.value) {
			alert("닉네임을 반드시 입력해 주세요!!");
			obj.nicname.focus();
			return false;
		}

		if (!obj.password.value) {
			alert("비밀번호를 반드시 입력해 주세요!!");
			obj.password.focus();
			return false;
		}

		if (obj.password.value != obj.re_password.value) {
			alert("비밀번호가 같지 않습니다.");
			obj.password.focus();
			return false;
		}

		if (!obj.email.value) {
			alert("이메일를 반드시 입력해 주세요!!");
			obj.email.focus();
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<!-- 전체 영역 -->
	<div id="wrap">
		<!-- 헤더 부분 -->
		<div id="header">
			<!-- 헤더 상단 메뉴얼 -->
			<div class="h_menu">
				<ul class="h_menu_sub">
					<li><a href="Login.jsp" target="_blank">Login</a></li>
					<li><a href="Join.jsp">Join</a></li>
					<li class="bar"></li>
					<li><a href="#"><img src="L_images/icon_kakao.png"
							alt="PPC 카카오톡 아이콘" title="PPC 카카오톡"></a></li>
					<li><a href="#"><img src="L_images/icon_facebook.png"
							alt="PPC 페이스북 아이콘" title="PPC 페이스북"></a></li>
					<li><a href="#"><img src="L_images/icon_instar.png"
							alt="PPC 인스타그램 아이콘" title="PPC 인스타그램"></a></li>
					<li><a href="#"><img src="L_images/icon_cafe.png"
							alt="PPC 네이버카페 아이콘" title="PPC 네이버카페"></a></li>
				</ul>
			</div>
			<!-- 헤더 제목 -->
			<h1>
				<a href="pcc_board/Main.jsp">PCC</a>
			</h1>
			<h5>programmer community center</h5>
		</div>
		<!-- 우측 바 -->
		<div id="rbar">
			<div class="rbar_txt">Welcome To PCC</div>
		</div>
		<!-- 회원가입 화면 -->
		<form action="joinOk.jsp" method="post" onsubmit="return formCheck(this);">
			<div id="Join">
				<p>
					<span>아이디</span><input type="text" name="id" id="text_id" value ="${cookie['id'].value }">
					<input type="button" class="Join_ch" value="아이디확인" onclick="idChecked()">
				</p>
				<p>
					<span>닉네임</span><input type="text" name="nicname"><input
						type="button" class="Join_ch" value="닉네임확인" style="margin-left:14px;">
				</p>
				<p>
					<span>비밀번호</span><input type="password" name="password">
				</p>
				<p>
					<span>비밀번호확인</span><input type="password" name="re_password">
				</p>
				<p>
					<span>이메일</span><input type="email" name="email">
				</p>
				<div class="Join_btn">
					<input type="submit" value="가입"> <input type="reset"
						value="취소">
				</div>
			</div>
		</form>
		<!-- 푸터(끝) 영역 -->
		<div id="footer">
			PCC(주) | 경기도 부천시 소사로 78번길 70<br> 사업자등록번호 : 000-00-00000 |
			개인정보관리책임자 : 서강혁<br> 전화번호 : 032-345-5886 | 이메일 :
			kanghyeok93@naver.com
			<p>PCC는 게시물의 무단 도용,복제 & 2차 가공 및 상업적 이용을 금지합니다.</p>
			<p>copyrightⓒ2018 PCC. All rights reserved.</p>
		</div>
	</div>
</body>
</html>