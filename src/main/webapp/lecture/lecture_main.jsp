<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.BbsPage"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture_main</title>
    <style>
        .container {
            width: 1100px;
            margin: auto;
        }
        #id0 {
            height: 76px;
        }
        #id1 a{
            text-decoration: none;
            color: black;
        }
        #id2 {
            background-color: navy;
            width: 100%;
            height: 200px;
        }
        #id3 {
            display: flex;
        }
        #id4 {
            display: block;
        }
        #id4_1 {
    		display: flex;
    		justify-content: space-between;
        }
        #id4_1 span {
        }
        #id4_2 {
            display: grid;
            width: 100%;
            grid-template-columns: repeat(4, minmax(150px,1fr));
            grid-template-rows: repeat(5, 300px);
            grid-gap: 20px;
        }
        #id4_2 div {
            background-color: rgb(200, 200, 200);
            border: 1px solid red;
            height: 100%;
            overflow: hidden;	/*넘치지 않게..ㅜㅠclip이랑 뭐가 다른지*/
        }
        #id4_2 a{
            text-decoration: none;
            color: black;
        }
        #id5 {
            text-align: center;
        }
        #frm1 {
            width: 100%;
            height: 30px;
        }
        #frm1 input[type=search]{
            width: 70%;
            height: 40px;
        }
        #frm3 {
            display: flex;
        }
    </style>
</head>


<body>
	<jsp:include page="/header/header.jsp"></jsp:include>
<main>
	<div id="id0"></div>
    <div id="id1" class="container">
        <a href="/Project4/main.jsp">Home</a>
        &gt
        <a href="/Project4/lecture/lecture_main.jsp">강좌</a>
       	
        <c:if test="${param.search_category != '' && param.search_category != null}">
        	&gt
		        <a href="/Project4/lecture/lecture_main.jsp">${param.search_category }</a>
		</c:if>
		<c:if test="${param.search_category_detail != '' && param.search_category_detail != null}">
		        &gt
		        	<a href="/Project4/lecture/lecture_main.jsp">${param.search_category_detail }</a>
		</c:if>
        
    </div>
    
    <div id="id2">
    <div class="container">
        <h1 style="color: white; padding: 60px 0px 20px; ">강좌 검색</h1>

        <form name="frm1" id="frm1">
            <select name="search_option" id="search">
                <option value="search_title" selected>강좌제목</option>
                <option value="search_teacher">강사명</option>
            </select>
            <input type="search" name="search_word" id="search_word">
            <input type="submit" value="검색">
        </form>
    </div>
    </div>
    
    <div id="id3" class="container">
        <form name="frm2" id="frm2">
            <select name="search_state" id="search_state">
                <option value="" selected hidden>개강상태</option>
                <option value="" >전체</option>
                <option value="state_ing" >진행중</option>
                <option value="state_before" >개강예정</option>
                <option value="state_after" >종료</option>
            </select>
            <select name="search_category" id="search_category">
                <option value="" selected hidden>주제</option>
                <option value="" >전체</option>
                <option value="10000" >인문</option>
                <option value="20000" >사회</option>
                <option value="30000" >교육</option>
                <option value="40000" >공학</option>
                <option value="50000" >자연</option>
                <option value="60000" >의약</option>
                <option value="70000" >예체능</option>
                <option value="80000" >융합</option>
            </select>
            <select name="search_category_detail" id="search_category_detail">
                <option value="" selected hidden>중분류</option>
                <option value="" >전체</option>
                <option value="10100" >언어문학</option>
                <option value="10200" >인문과학</option>
                <option value="20100" >경영·경제</option>
                <option value="20200" >법률</option>
                <option value="20300" >사회과학</option>
                <option value="30100" >교육일반</option>
                <option value="30200" >유아교육</option>
                <option value="30300" >초등교육</option>
                <option value="30400" >중등교육</option>
                <option value="30500" >고등교육</option>
                <option value="40100" >건축</option>
                <option value="40200" >전기</option>
                <option value="40300" >전자</option>
                <option value="40400" >컴퓨터</option>
                <option value="50100" >농림</option>
                <option value="50200" >화학</option>
                <option value="50300" >생명</option>
                <option value="60100" >의료</option>
                <option value="60200" >간호</option>
                <option value="70100" >디자인</option>
                <option value="70200" >영화</option>
                <option value="70300" >미술</option>
                <option value="80100" >융합</option>
                
            </select>
            <select name="search_period" id="search_period">
                <option value="" selected hidden>학습기간</option>
                <option value="" >전체</option>
                <option value="period_short" >단기(1~2주)</option>
                <option value="period_mid" >중기(3~4주)</option>
                <option value="period_long" >장기(5주~)</option>
            </select>
            <input type="button" value="새로고침" />
            <input type="submit" value="필터 검색" />
        </form>
    </div>
    
    <div id="id4" class="container">
        <div id="id4_1" >
        
            <span>${params.search_word } 총 ${params.total_count} 강좌수</span>
            
            <form name="frm3" id="frm3">
                <input type="radio" name="order_by" id="order_by_1" checked><label for="order_by_1">최신등록순</label>
                <input type="radio" name="order_by" id="order_by_2"><label for="order_by_2">가나다순</label>
            </form>
        </div>
    
        <div id="id4_2" class="container">
        
        <c:choose>
        	<c:when test="${not empty lectureList }">
        		<c:forEach var="list" items="${lectureList }" varStatus="loop">
        			<a href="Project4/lecutre/lecture_detail.do?idx=${list.lecture_idx }">
					<div>
						<img src="..${list.lecture_img}" style="background-color: grey; height: 150px; width: 200px;" />
						<p style="font-weight: 700;">${list.lecture_title }</p>
						<p>${list.member_name }</p>
						<p style="color: grey;">${list.member_company }</p>
						<p style="color: grey;">${list.lecture_start_date } ~ ${list.lecture_end_date }</p>
					</div>
					</a>
		</c:forEach>
			</c:when>
			<c:otherwise>
				<p>일치하는 검색결과가 없습니다.<p>
			</c:otherwise>
		</c:choose>

        </div>
    </div>
    
    </main>
<script>
    
</script>

</body>
</html>