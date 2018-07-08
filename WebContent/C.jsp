<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>PCC</title>
        <link rel="stylesheet" href="Main.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro|Abril+Fatface|Poor+Story" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <!-- ��ü ���� -->
        <div id="wrap">
        <!-- ��� �κ� -->
            <div id="header">
                    <!-- ��� ��� �޴��� -->
                    <div class="h_menu">
                        <ul class="h_menu_sub">
                            <li><a href="Login.jsp" target="_blank">Login</a></li>
                            <li><a href="Join.jsp" target="_blank">Join</a></li>
                            <li class="bar"></li>
                            <li><a href="#"><img src="M_images/icon_kakao.png" alt="PPC īī���� ������" title="PPC īī����"></a></li>
                            <li><a href="#"><img src="M_images/icon_facebook.png" alt="PPC ���̽��� ������" title="PPC ���̽���"></a></li>
                            <li><a href="#"><img src="M_images/icon_instar.png" alt="PPC �ν�Ÿ�׷� ������" title="PPC �ν�Ÿ�׷�"></a></li>
                            <li><a href="#"><img src="M_images/icon_cafe.png" alt="PPC ���̹�ī�� ������" title="PPC ���̹�ī��"></a></li>
                        </ul>
                    </div>
                    <!-- ��� ���� -->
                    <h1><a href="Main.jsp">PCC</a></h1>
                    <h5>programmer community center</h5>
            </div>
            <!-- ���� ���� -->
            <div id="main">
                <!-- ���� �޴��� -->
                <div id="nav">
                    <div class="user">
                        
                    </div>
                    <!-- ���� �޴� �۾� -1 -->
                    <a href="Notice.jsp">�ڰ������ס�</a>
                    <div id="q_a_box">
                    <ul>
                        <li class="m_menu">
                            <span>WEB Q & A</span>
                            <ul class="hide">
                                <li><a href="HTMLCSS.jsp">HTML/CSS</a></li>
                                <li><a href="Javascript.jsp">Javascript</a></li>
                                <li><a href="JQuery.jsp">JQuery</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>Language Q & A</span>
                            <ul class="hide">
                                <li><a href="CC++.jsp">C/C++</a></li>
                                <li><a href="C��.jsp">C#</a></li>
                                <li><a href="JAVA.jsp">JAVA</a></li>
                                <li><a href="Python.jsp">Python</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>Server Q & A</span>
                            <ul class="hide">
                                <li><a href="PJA.jsp">PHP/JSP/ASP</a></li>
                                <li><a href="Node.jsp">Node.js</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>��Ÿ Q & A</span>
                            <ul class="hide">
                                <li><a href="suggest.jsp">���ǻ���</a></li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                    <!-- Ŀ�´�Ƽ �޴��� -->
                    <div id="c_box">
                    <ul>
                        <li class="m_menu">
                            <span>PCC ����</span>
                            <ul class="hide">
                                <li><a href="free.jsp">�����Խ���</a></li>
                                <li><a href="worry.jsp">��γ�����</a></li>
                                <li><a href="humor.jsp">���ӰԽ���</a></li>
                                <li><a href="study.jsp">���ν��͵� ����</a></li>
                                <li><a href="developer.jsp">������ ����</a></li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                </div>
                <!-- ����(�߰�) ���� -->
                <div id="section">
                    <div class="article">
                      <style>
                        .article { width:90%; height:70%; border:3px solid #00007c; margin:0 auto; margin-top:50px; }
                      </style>
                        C#�Դϴ�.
                    </div>
                </div>
            </div>
            <!-- Ǫ��(��) ���� -->
            <div id="footer">
                PCC(��) | ��⵵ ��õ�� �һ�� 78���� 70<br>
               	����ڵ�Ϲ�ȣ : 000-00-00000 | ������������å���� : ������<br>
               	��ȭ��ȣ : 032-345-5886 | �̸��� : kanghyeok93@naver.com
               <p>PCC�� �Խù��� ���� ����,���� & 2�� ���� �� ����� �̿��� �����մϴ�.</p>
               <p>copyright��2018 PCC. All rights reserved. </p>
            </div>
        </div>
        <script src="js/Main.js"></script>
    </body>
</html>