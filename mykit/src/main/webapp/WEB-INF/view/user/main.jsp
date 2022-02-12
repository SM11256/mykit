<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트는 마이키트</title>
<link href="../css/styleMain.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function() {
	var current=0;
	var slide_length = $('.cycle-slide-sub>li').length;//이미지의 갯수를 변수로
	var btn_ul = '<ul class="cycle-slide_btn"></ul>';//버튼 LIST 작성할 UL
	$('.cycle-slide-sub>li').hide();//이미지 안보이게
	$('.cycle-slide-sub>li').first().show();//이미지 하나만 보이게
	$(btn_ul).prependTo($('.cycle-slide'))//cycle-slide 클래스위에 생성
	for (var i = 0 ; i < slide_length; i++){//동그라미 버튼 생성 이미지 li 개수 만큼
		var child = '<li><a href="#none">'+i+'</a></li>';
		$(child).appendTo($('.cycle-slide_btn'));
	}
	$('.cycle-slide_btn > li > a').first().addClass('active');	
	$('.cycle-slide_btn > li > a').on('click' , slide_stop);
//자동 슬라이드 함수
function autoplay(){
	if(current == slide_length-1){
	current = 0;
}else{
	current++;
}
	$('.cycle-slide-sub>li').stop().fadeOut(1000);
	$('.cycle-slide-sub>li').eq(current).stop().fadeIn(1000);
	$('.cycle-slide_btn > li > a').removeClass('active');	
	$('.cycle-slide_btn > li > a').eq(current).addClass('active');	
}
setInterval(autoplay,4000);//반복
//버튼 클릭시 호출되는 함수
function slide_stop(){
		var fade_idx = $(this).parent().index(); 
		current = $(this).parent().index();//클릭한 버튼의 Index 를 받아서 그 다음 이미지부터 슬라이드 재생.
		if($('.cycle-slide-sub > li:animated').length >= 1) return false; //버튼 반복 클릭시 딜레이 방지
		$('.cycle-slide-sub > li').fadeOut(400);
		$('.cycle-slide-sub > li').eq(fade_idx).fadeIn(400);
		$('.cycle-slide-sub > li > a').removeClass('active');	
		$(this).addClass('active');
	}	
});
</script>
</head>
<body>
<br>
<header class="hd2">
		<div class="cycle-slide">
			<ul class="cycle-slide-sub">
				<li><a href="../board/evdetail?num=5"><img src="../imgmain/sd-img1.jpg" alt="sc-1"></a></li>
				<li><a href="../board/evdetail?num=6"><img src="../imgmain/sd-img2.jpg" alt="sc-2"></a></li>
				<li><a href="../board/evdetail?num=7"><img src="../imgmain/sd-img3.jpg" alt="sc-3"></a></li>
				<li><a href="../board/evdetail?num=8"><img src="../imgmain/sd-img4.jpg" alt="sc-4"></a></li>
			</ul>
		</div>
</header>
<br><br><br>
<section class="sc1"><!-- -----section1 시작----- -->
		<div class="p1">기다리는 이 시간,&nbsp;<span>마이키트딜!</span></div>
		<div id="sale">
			<a href="#">
			<img class="back" src="../imgmain/mango2.png" alt="man2">
			<img class="front" src="../imgmain/mango1.png" alt="man1">
			</a>
			<ul>
				<li>[냉동망고] 아이스망고 다이스1kg x 3봉</li>
				<li class="l1">달콤하고 맛있는 망고!</li>
				<li class="l2">12,900원 ➾ 9,900원!</li>
			</ul>
		</div>
		<div id="sale">
			<a href="#">
			<img class="back" src="../imgmain/berry2.png" alt="be2">
			<img class="front" src="../imgmain/berry1.png" alt="be1">
			</a>
			<ul>
				<li>[슈퍼마트] 유기동 딸기1kg x 1박스</li>
				<li class="l1">재구매 제일 많은 인기상품 딸기 할인 중!</li>
				<li class="l2">30,000원 ➾ 16,800원!</li>
			</ul>
		</div>
		<div id="sale">
			<a href="#">
			<img class="back" src="../imgmain/greek2.png" alt="gre2">
			<img class="front" src="../imgmain/greek1.png" alt="gre1">
			</a>
			<ul>
				<li>[후디스] 그릭요거트 플레인 80g x 4개</li>
				<li class="l1">타 요거트보다 꾸덕함 2배!</li>
				<li class="l2">25,000원 ➾ 10,900원!</li>
			</ul>
		</div>
		<div id="sale">
			<a href="#">
			<img class="back" src="../imgmain/egg2.png" alt="eg2">
			<img class="front" src="../imgmain/egg1.png" alt="eg1">
			</a>
			<ul>
				<li>[무료배송] 국내산 무항생제 반숙란 20구</li>
				<li class="l1">노른자까지 간이 베인 새하얀 반숙란!</li>
				<li class="l2">10,700원 ➾ 8,900원!</li>
			</ul>
		</div>
		<input type="image" src="../imgmain/more.png" onmouseover='this.src="../imgmain/more.gif"' onmouseout='this.src="../imgmain/more.png"'>
	</section>
	<section class="sc3"><!-- -----section3 시작----- -->
		<div class="p3">11월 행사, 할인 이벤트!<p><span>마이키트 </span>할인 제품으로 알뜰 쇼핑!</p></div>
		<div class="wrap-sale">
			<div id="sale1">
				<a href="#"> 
					<img class="back" src="../imgmain/sale1-2.jpg">
					<img class="front" src="../imgmain/sale1-1.jpg">
				</a>
				<a href="#">
					<img class="back" src="../imgmain/sale3-2.jpg">
					<img class="front" src="../imgmain/sale3-1.jpg">
				</a>
			</div>
			<div id="sale2">
				<a href="#">
					<img class="back" src="../imgmain/sale2-2.jpg">
					<img class="front" src="../imgmain/sale2-1.jpg">
				</a>
				<a href="#">
					<img class="back" src="../imgmain/sale4-2.jpg">
					<img class="front" src="../imgmain/sale4-1.jpg">
				</a>
			</div>
		</div>
		<input type="image" src="../imgmain/more.png" onmouseover='this.src="../imgmain/more.gif"' onmouseout='this.src="../imgmain/more.png"'>
	</section><!-- -----section3 끝----- -->
	<section class="sc4"><!-- -----section4 시작----- -->
		<div>
			<div class="p4">2022년 5월 26일 드디어!<p><span>뉴 냠냠 냉장고</span>앱 출시!</p></div>
			<video src="../imgmain/app.mp4" autoplay controls loop muted></video>
			<img src="../imgmain/app.png">
		</div>
	</section>
</body>
</html>