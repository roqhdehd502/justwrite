<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/header.css" />
</head>
<body>
     <!-- 헤더 부분 -->
  
   
       <div class="header">
        <div class="header_con">
            <div class="blanker"></div>
         <a href="http://localhost:8080/justwrites/firstPage"><span class="headerMenu homeFont" style="font-weight: bold;"><p>홈</p></span></a>
         <a href="http://localhost:8080/justwrites/makeNovel">
        	 <span class="headerMenu"><p>글쓰기</p></span>
        	</a>
         
         <span class="headerMenu"><p>아웃라인</p></span>
         <span class="serachNovel">
             <img src="/resources/img/search.png">
             <input type="text" class="serachNovel" style="right: 1%;float: right;font-size: 15px;border-radius: 10px;padding: 5px; width: 35%;" placeholder="검색어를 입력해주세요">
         </span>

         <span class="myinfo">내정보</span>
         <div class="dropBox">
             <h4 class="dropBoxText" style="font-weight: 560; color: #0e0e0e; background-color: #B5E7ED;">${sessionScope.nick }</h4>
             <h4 class="dropBoxText">홈</h4>
             <h4 class="dropBoxText">설정</h4>
             <a href="http://localhost:8080/justwrites/bookList"><h4 class="dropBoxText">내가 쓰고 있는 글</h4></a>
             <h4 class="dropBoxText">소설 설정</h4>
             <a href="http://localhost:8080/justwrites/logout"><h4 class="dropBoxText">로그아웃</h4></a>
         </div> 
     </div>    
</div>      
<!-- 헤더 부분 끝-->
</body>

<script>
$(document).ready(function(){
    info();
    infoHide();


})

function info(){
    $(".myinfo").click(function(){
        $(".dropBox").show();
    })
}


function infoHide(){
    $('html').click(function(e) { 
        if(!$(e.target).hasClass("myinfo")){
            
            $(".dropBox").hide();
            } 
        });
}


</script>
</html>