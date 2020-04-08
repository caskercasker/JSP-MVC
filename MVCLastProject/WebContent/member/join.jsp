<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<script type="text/javascript">
Shadowbox.init({
	players:['iframe'] 	//inline frame  현재 문서 안에 다른 html 페이지를 삽입할때 구분
});
var i=0;
var p=0;
$(function(){
	// onclick = "함수명"
	/*
		태그로 제어 : CSS제어, 이벤트 발생 	
							====== 중심으로 설정
	*/
	$('#postBtn').click(function(){
		Shadowbox.open({
			content:'../member/postfind.do',
			title:'우편번호 검색',
			player: 'iframe',
			width:520,
			height:350
		})
		p=1;
	});
	$('#idcheckBtn').click(function(){
		Shadowbox.open({
			content:'../member/idcheck.do',
			title:'아이디 중복 체크',
			player:'iframe',
			width:400,
			height:250
		})
		i=1;
	})
	$('#sendBtn').click(function(){
		if(i==0){
			alert("아이디가 중복체크를 하세요");
		}
		else {
			if($('#pwd').val()!=('#pwd1').val()){
				alert("비밀번호가 틀립니다.!!")
			}
			else if(p==0){
				alert("우편번호를 입력하세요");
			}
		}
	})
})
</script>
<style type="text/css">
.row{
	margin:0px auto;
	width: 700px;
}
input,select {
	display: inline-block;
	}
.table,td {
	background-color:white;
}
</style>
</head>
<!--
ID       NOT NULL VARCHAR2(20)  
PWD      NOT NULL VARCHAR2(10)  
NAME     NOT NULL VARCHAR2(34)  
EMAIL             VARCHAR2(100) 
SEX               VARCHAR2(10)  
BIRTHDAY NOT NULL VARCHAR2(20)  
POST     NOT NULL VARCHAR2(7)   
ADDR1    NOT NULL VARCHAR2(200) 
ADDR2             VARCHAR2(200) 
TEL               VARCHAR2(20)  
CONTENT  NOT NULL CLOB          
REGDATE           DATE          
ADMIN             CHAR(1)
 -->
<body>
	<div class="container">
		<h1 class="text-center">회원가입</h1>
		<div class="row">
			<form name="frm" action="../member/join_ok.do" method="post" id="frm">
				<table class="table table-hover">
					<tr>
						<th width=15% class="danger text-right">ID</th>
						<td width=85%>
							<input type="text" name=id size=15 class="input-sm" readonly id="id">
							<input type="button" value="중복체크" class="btn btn-sm btn-warning" id="idcheckBtn">
						</td>
					</tr>
					<tr>
						<th width=15% class="danger text-right">비밀번호</th>
						<td width=85%>
							<input type="password" name=pwd size=15 class="input-sm" id="pwd" required>&nbsp;
							재입력:<input type="password" name=pwd1 size=15 class="input-sm" id="pwd1" required>
						</td>
					</tr>
					<tr>
						<th width=15% class="danger text-right">이름</th>
						<td width=85%>
							<input type="text" name=name size=15 class="input-sm" required>
						</td>
					</tr>
					<tr>
						<th width=15% class="danger text-right">이메일</th>
						<td width=85%>
							<input type="text" name=email size=50 class="input-sm">
						</td>
					</tr>
					<tr>
						<th width=15% class="danger text-right">성별</th>
						<td width=85%>
							<input type="radio" name=sex value="남자" checked>남자
							<input type="radio" name=sex value="여자" >여자
						</td>
					</tr>
					<tr>
						<th width=15% class="danger text-right">생일</th>
						<td width=85%>
							<input type=date name=birthday size=50 class="input-sm" required>
						</td>
					</tr>
					<tr>
						<th width=15% class="danger text-right">우편번호</th>
						<td width=85%>
							<input type="text" name=post1 size=5 class="input-sm" readonly required>-
							<input type="text" name=post2 size=5 class="input-sm" readonly required>
							<input type="button" class="btn btn-sm btn-primary" value="우편번호 검색" id="postBtn">
						</td>
					</tr>
					
					<tr>
						<th width=15% class="danger text-right">주소</th>
						<td width=85%>
							<input type="text" name=addr1 size=50 class="input-sm" readonly required>
						</td>
					</tr>
					
					<tr>
						<th width=15% class="danger text-right">상세주소</th>
						<td width=85%>
							<input type="text" name=addr2 size=50 class="input-sm">
						</td>
					</tr>
					
					<tr>
						<th width=15% class="danger text-right">전화</th>
						<td width=85%>
							<select class="input-sm" name="tel1">
								<option>010</option>
								<option>011</option>
								<option>017</option>
							</select>
							<input type="text" name=tel2 size=5 class="input-sm"> - 
							<input type="text" name=tel3 size=7 class="input-sm">						
						</td>
					</tr>
					
					<tr>
						<th width=15% class="danger text-right">소개</th>
						<td width=85%>
							<textarea rows="8" cols="60" name=content></textarea> 
						</td>
					</tr>
					
					<tr>
						<td colspan="2" class="text-center">
							<input type=submit value="회원가입" class="btn btn-sm btn-success" id="sendBtn"> 
							<input type=button value="취소" class="btn btn-sm btn-danger" onclick="javascript:history.back()"> 
						</td>
					</tr>
					
					
				</table>
			</form>
		</div>
	</div>
</body>
</html>