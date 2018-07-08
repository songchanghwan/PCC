<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Login</title>
        <link rel="stylesheet" href="css/Login.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story|Source+Sans+Pro" rel="stylesheet">
    </head>
    <body>
        <!-- ��ü ���� -->
        <div id="wrap">
        <!-- ��� �κ� -->
            <div id="header">
                    <!-- ��� ��� �޴��� -->
                    <div class="h_menu">
                        <ul class="h_menu_sub">
                            <li><a href="Login.jsp">Login</a></li>
                            <li><a href="Join.jsp" target="_blank">Join</a></li>
                            <li class="bar"></li>
                            <li><a href="#"><img src="L_images/icon_kakao.png" alt="PPC īī���� ������" title="PPC īī����"></a></li>
                            <li><a href="#"><img src="L_images/icon_facebook.png" alt="PPC ���̽��� ������" title="PPC ���̽���"></a></li>
                            <li><a href="#"><img src="L_images/icon_instar.png" alt="PPC �ν�Ÿ�׷� ������" title="PPC �ν�Ÿ�׷�"></a></li>
                            <li><a href="#"><img src="L_images/icon_cafe.png" alt="PPC ���̹�ī�� ������" title="PPC ���̹�ī��"></a></li>
                        </ul>
                    </div>
                    <!-- ��� ���� -->
                    <h1><a href="Main.jsp">PCC</a></h1>
                    <h5>programmer community center</h5>
            </div>
            <!-- �α��� ȭ�� -->
            <form action="" method="post">
                <div id="login">
                    <div class="login_container">
                        <i class="fas fa-user"></i>
                        <input type="id" placeholder="���̵� �Է����ּ���.. ">
                    </div>
                    <div class="login_container">
                        <i class="fas fa-unlock-alt"></i>
                        <input type="password" placeholder="��й�ȣ�� �Է����ּ���.. ">
                    </div>
                    <!-- �α��� ��ư -->
                    <input type="submit" value="�α���">
                    <!-- �α��� ���� �޴� -->
                    <div class="login_sub">
                        <a href="#">���̵� ã��</a>
                        <a href="#">��й�ȣ ã��</a>
                        <a href="Join.jsp" target="_blank">ȸ������</a>
                    </div>
                </div>  
            </form>  
            <!-- Ǫ��(��) ���� -->
            <div id="footer">
                PCC(��) | ��⵵ ��õ�� �һ�� 78���� 70<br>
              	����ڵ�Ϲ�ȣ : 000-00-00000 | ������������å���� : ������<br>
               	 ��ȭ��ȣ : 032-345-5886 | �̸��� : kanghyeok93@naver.com
               <p>PCC�� �Խù��� ���� ����,���� & 2�� ���� �� ����� �̿��� �����մϴ�.</p>
               <p>copyright��2018 PCC. All rights reserved. </p>
            </div>
        </div>
    </body>
</html>