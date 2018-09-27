<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "exBean.studentVO" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<jsp:useBean id="item" scope="page" class="exBean.studentVO"/>
<jsp:useBean id="dao" scope="page" class="exBean.studentDAO"/>
<%
 request.setCharacterEncoding("UTF-8");
 List<studentVO> items = new ArrayList<studentVO>();
 items = dao.selectStudent();
%>

<body>

<%
 for(int i=0;i<items.size();i++) {
  item = items.get(i);  // item리스트에서 리스트 숫자만큼 불러온다.
%>
  <%=item.getNo()%> <!--  item에서 getNo보여준다 -->
  <%=item.getName()%><BR> <!-- item에서 getName보여준다 -->
 <%}%>
</body>
</html>

 