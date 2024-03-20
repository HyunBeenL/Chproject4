<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR:wght@100..900&family=Poor+Story&display=swap" rel="stylesheet">
		
	<link type="text/css" rel="stylesheet" href="./css/main.css"/>
	<link type="text/css" rel="stylesheet" href="./css/header.css"/>
	
	<title>메인페이지 | K-MOOC</title>
	<script 
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous">
	$('.carousel-inner').carousel({ interval:1000 });
</script>
</head>
<body>
		<jsp:include page="/header/header.jsp"></jsp:include>

		<main>
		<div class="carousel_class">
			<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active"><img class="d-block w-100" src="./mainImg/3.png" alt="..." /></div>
					<div class="carousel-item"><img class="d-block w-100" src="./mainImg/4.png" alt="..." /></div>
				</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span> </button> <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span> </button>
			</div>
		</div>
		<div>
			<div id="categoryBox" class="categoryBox">
				<div id="alram" class="alram">
					<div id="alram_img" class="alram_img">공지</div>
					<div id="alram_text "class="alram_text"><a href="">2024년 산업맞춤 단기직무능력인증과정 매치업(Match業) 사업 공고</a></div>
				</div>
			</div>
		</div>
		<div>
			<div id="searchBox" class="searchBox">
				<div id="searchBox_search" class="searchBox_search">검색</div>
				<div id="searchBox_text" class="searchBox_text">
					<input type="text">
					<input type="button" value=" 🔍">
				</div>
				
			</div>
		</div>


		<div id="recommend_box" class="recommend_box">
			<div id="recommend_box_text" class="recommend_box_text"><p>K-MOOC</p>에서 추천하는 강좌 리스트</div>
			<div id="recommend_box_lecture" class="recommend_box_lecture">
				<div id="recommend_box_All" class="recommend_box_All">
					<div id="recommend_box_img" class="recommend_box_img">
						<a href="#"><img src="./mainImg/enlicasTest.jpg" alt=""></a>
					</div>
					<div id="recommend_box_content" class="recommend_box_content">
						<a href="#"><p>(MOOC) 위대한 수업3(GREAT MINDS) : 초근접 미래를 위한 안내서</p></a>
						<p>후안 엔리케스</p>
						<p>EBS</p>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="recommend_box_All" class="recommend_box_All">
					<div id="recommend_box_img" class="recommend_box_img">
						<a href="#"><img src="./mainImg/enlicasTest.jpg" alt=""></a>
					</div>
					<div  id="recommend_box_content" class="recommend_box_content">
						<a href="#"><p>(MOOC) 위대한 수업3(GREAT MINDS) : 초근접 미래를 위한 안내서</p></a>
						<p>후안 엔리케스</p>
						<p>EBS</p>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="recommend_box_All" class="recommend_box_All">
					<div id="recommend_box_img" class="recommend_box_img">
						<a href="#"><img src="./mainImg/enlicasTest.jpg" alt=""></a>
					</div>
					<div  id="recommend_box_content" class="recommend_box_content">
						<a href="#"><p>(MOOC) 위대한 수업3(GREAT MINDS) : 초근접 미래를 위한 안내서</p></a>
						<p>후안 엔리케스</p>
						<p>EBS</p>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="recommend_box_All" class="recommend_box_All">
					<div id="recommend_box_img" class="recommend_box_img">
						<a href="#"><img src="./mainImg/enlicasTest.jpg" alt=""></a>
					</div>
					<div  id="recommend_box_content" class="recommend_box_content">
						<a href="#"><p>(MOOC) 위대한 수업3(GREAT MINDS) : 초근접 미래를 위한 안내서</p></a>
						<p>후안 엔리케스</p>
						<p>EBS</p>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
			</div>
		</div>


		<div id="button_group" class="button_group">
			<div id="button_group_class" class="button_group_class">
				<button id="button_group_btn" class="button_group_btn"><a href="">인문</a> <img src="./mainImg/btn1.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">사회</a> <img src="./mainImg/btn2.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">교육</a> <img src="./mainImg/btn3.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">공학</a> <img src="./mainImg/btn4.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">자연</a> <img src="./mainImg/btn5.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">의약</a> <img src="./mainImg/btn6.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">예체능</a> <img src="./mainImg/btn7.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">융합</a> <img src="./mainImg/btn8.png" alt=""></button>
				<button id="button_group_btn" class="button_group_btn"><a href="">기타</a> <img src="./mainImg/btn9.png" alt=""></button>
			</div>
		</div>

		<div id="best_box" class="best_box">
			<div id="best_box_text" class="best_box_text">서두르세요! 인기 강좌가 곧 시작합니다.</div>
			<div id="best_box_lecture" class="best_box_lecture">
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
				<div id="best_box_All" class="best_box_All">
					<div id="best_box_img" class="best_box_img">
						<a href="#"><img src="summmm.png" alt=""></a>
					</div>
					<div id="best_box_content" class="best_box_content">
						<a href=""><p>외국인을 위한 다문화 한국 가정</p></a>
						<p>2023.12.01 ~ 2034.12.03</p>
					</div>
				</div>
			</div>
		</div>
    </main>
	<jsp:include page="/footer/footer.jsp"></jsp:include>
</body>
</html>