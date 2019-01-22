<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//숫자라도 String으로 받음
	String row = request.getParameter("r");
	String col = request.getParameter("c");
	
	int nRow = 1;
	if(row != null){
		nRow = Integer.parseInt(row);
	}
	
	int nCol = 1;
	if(col != null){
		nCol = Integer.parseInt(col);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border= "1px" cellspacing="0" cellpadding="5px">
		<%
			for(int i=0; i<nRow; i++){
		%>
		<tr>
			<%
				for(int j=0; j<nCol; j++){
			%>
				<td>cell(<%=i %>,<%=j %>)</td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>