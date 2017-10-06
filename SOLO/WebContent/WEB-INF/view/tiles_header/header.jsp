<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
<div class="container">
	<a class="navbar-brand" href="/">메인</a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		메뉴 <i class="fa fa-bars"></i>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="/">홈</a></li>
			<li class="nav-item"><a class="nav-link" href="/1">소개</a></li>
			<li class="nav-item"><a class="nav-link" href="/2">진행했던 프로젝트</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/">Contact</a></li>
			<li class="nav-item">
			
			
			<a class="nav-link " data-toggle="modal" data-target="#logModal" href="">로그인</a>
			</li>
			<li class="nav-item">
			
			<a class="nav-link " data-toggle="modal" data-target="#joinModal" href="">회원가입</a>
			</li>
			
			
			
		</ul>
	</div>
</div>
</nav>

<!-- Page Header -->
<header class="masthead"
	style="background-image: url('img/Cool Computer HD.jpg')">
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-10 mx-auto">
			<div class="site-heading">
				<!-- 
              <h1>내사이트만들기</h1>
              <span class="subheading">시작점</span>
              -->
			</div>
		</div>
	</div>
</div>
 <div class="modal fade" id="joinModal" role="dialog" style="font-family:HY고딕medium; line-height:2.2em;">
    <div class="modal-dialog">
    
      <!-- 회원가입 모달 -->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원가입</h4>
        </div>
        <div class="modal-body">
        <form class="form-inline" method="post">
       
         <div class="form-group">
         
  <font size="2.95" style="letter-spacing:1px"><label for="usr">아이디 :　</label></font>
  <div>
  

      <input class="form-control" id="joinnickname" type="text" style="height:30px">
      <input class="form-control" type="button" value="중복확인" onclick="joinidck()" style="height:30px">
  	<input type="hidden" id="idck" value="">

  
  </div>
</div>

<div class="form-group">
  <font size="2.95" style="letter-spacing:1px"><label for="name">이름 :　</label></font>
  <input type="text" class="form-control" id="joinname" style="height:30px">
</div>
<div class="form-group">
 <font size="2.95" style="letter-spacing:0px"> <label for="pwd">비밀번호 :　</label></font>
  <input type="password" class="form-control" id="joinpwd" style="height:30px" placeholder="8~15자리 영어+숫자">
</div>
<div class="form-group">
  <font size="2.95" style="letter-spacing:0px"><label for="pwd">비밀번호 확인 :　</label></font>
  <input type="password" class="form-control" id="joinpwdck" onclick="joinpwck()" style="height:30px">
</div>
<div class="form-group">
  <font size="2.95" style="letter-spacing:0px"><label for="phone">휴대폰번호 :　</label></font>
  
  <input type="text" class="form-control" name="cellPhone" id="cellPhone" placeholder="핸드폰 번호 입력" maxlength="13" style="height:30px"/>
</div>


<div class="form-group">
  <font size="2.95" style="letter-spacing:0px"><label for="birth">생년월일 :</label></font>
  <select id="toYear" onchange="updateSelectDate('toYear', 'toMonth', 'toDay');" style="height:30px"></select>년
<select id="toMonth" onchange="updateSelectDate('toYear', 'toMonth', 'toDay');" style="height:30px"></select>월
<select id="toDay" style="height:30px"></select>일
</div>
        </div>
        
        <div class="modal-footer">
          <button type="button" class="btn btn-default" onclick="join()">회원가입</button>
        </div>
      </div>
      
    </div>
  </div>
  <!-- 회원가입 모달 끝-->
  
  <!-- 로그인 모달 -->
  <div class="modal fade" id="logModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">로그인</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <!-- 로그인 모달 끝 -->
</header>
<script src="js/B_1.js"></script>
</html>