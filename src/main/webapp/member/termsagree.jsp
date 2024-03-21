<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/Project4/css/popup.css">
    <style>
        *{
            margin:0px;
            padding:0px;
        }
        .main{
            margin:200px auto;
            width: 1100px;
            margin-bottom:100px;
        }
        .border{
            width:800px;
            margin: 100px auto;
            background-color: skyblue;
            padding: 60px 30px;
        }
        .contact{
            width:600px;
            margin:0px auto;
            background-color: white;
            padding: 20px 40px;
        }
        
        .contact label{
            width: 120px;
            height: 72px;
            float: left;
            text-align: center;
            line-height: 75px;
        }
        .contents{
            margin:10px;
        }
        .contact li{
            list-style-type: none;
        }
        .btn{
           	width: 120px;
            height: 50px;
        	font-size:16px;
        	border:1px solid white;
        	border-radius:3px;
        	margin:10px;
        }
        
        .submitbtn input:hover,.submitbtn button:hover{
            background-color: black;
            color:white;
            border:1px solid gray;
        }
        
        .submitbtn{
            text-align: center;
        }
        /* li button{
            float:right;
            width: 90px;
            height: 30px;
            margin :10px;
            background-color:#ebebeb;
        	font-size:16px;
        	border:1px solid white;
        	border-radius:3px;
        } */
        #findid{
        	background-color:#0036ce;
            color:white;
        }
        
        input[type=checkbox]{
            width:20px;
            margin:10px;
        }
        #nextbtn{
        	background-color:blue;
        	Color:white;
        }
    </style>
</head>
<body>
	<jsp:include page="/header/header.jsp" />
    <main>
        <div class="main">
            <h1 style="text-align: center; margin-bottom:50px;"> 약관동의</h1>
            <h2 style="text-align: center; margin:50px 0px;"> </h2>
            <form action="join.do" method="post">
                <div class="border">
                    <div style="width:680px; display:block; margin:0px auto; font-size:20px; height:30px;">
                        <input type="checkbox">전체 약관에 동의합니다.
                    </div>
                    <fieldset class="contact">
                        <ul>
                            <li>
                                <input type="checkbox">이용약관 동의<button type="button" onclick="openPop()">자세히 보기</button>
                            </li>
                            <li>
                                <input type="checkbox">개인정보 필수항목 수집 이용 및 동의<button type="button" class="agreebtn" onclick="openPop()">자세히 보기</button>
                            </li>
                            <li>
                                <input type="checkbox">개인정보 선택항목 수집 및 이용 동의<button type="button" class="agreebtn" onclick="openPop()">자세히 보기</button>
                            </li>
                            <li>
                                <input type="checkbox">홍보 설문 관련 정보 수신 동의<button type="button" class="agreebtn" onclick="openPop()">자세히 보기</button>
                            </li>
                        </ul>
                        
                    </fieldset>
                </div>
                <div class="submitbtn">
                    <button type="button" class="btn" onclick="window.location.href='login.do'">취소</button>
                    <input class="btn" id="nextbtn" type="submit" value="다음">
                </div>
            </form>
        </div>
        
        <div class="popup_layer" id="popup_layer" style="display: none;">
          <div class="popup_box">
              <div style="height: 10px; width: 800px; float:right;">
                <a href="javascript:closePop();"><img src="/Project4/img/close.png" class="m_header-banner-close" width="30px" height="30px" style="float:right;"></a>
              </div>
              <!--팝업 컨텐츠 영역-->
              <div class="popup_cont">
        		  <object width="800px" height="700px" data="/Project4/img/테스트.pdf"></object>
              </div>
              <!--팝업 버튼 영역-->
              <div class="popup_btn" style="float: bottom; margin-top: 200px;">
                  <a href="javascript:closePop();">닫기</a>
              </div>
          </div>
          </div>
    </main>
    <jsp:include page="/footer/footer.jsp"></jsp:include>
    <script>
	    let findid = document.querySelector("#findid");
		findid.style.backgroundColor="blue";
		findid.style.Color="white";
		function openPop() {
	        document.getElementById("popup_layer").style.display = "block";

	    }

	    //팝업 닫기
	    function closePop() {
	        document.getElementById("popup_layer").style.display = "none";
	    }
    </script>
</body>
</html>