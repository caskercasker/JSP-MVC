<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.temp.*,java.util.*"%>
<%
	SawonManager sm = new SawonManager();
	sm.sawonAllData(request);
	//object 를 제네릿 타입을 가진 것으로 casting 에러 
	
	List<Sawon> list = (List<Sawon>)request.getAttribute("list");
	
	//${list}

	//리퀘스트 타입을 typecasting
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<%
		for(Sawon s:list) {
	
	%>
		<li><%=s.getName() %>-<%=s.getDept() %></li>
	<%
		}
	%>	
	</ul>
</body>
</html>