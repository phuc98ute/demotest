<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18110284</title>
<style type="text/css">
.processor {
	width: 500px;
}

table {
	width: 100%;
	border: 1px solid black;
}

th {
	text-align: left;
	border: 1px solid black;
}
}
</style>
</head>
<body>
	<%
		String processor = request.getParameter("radio");
		String checkbox = request.getParameter("checkbox");
		String select[] = request.getParameterValues("select");
	%>
	<h2>Order summary</h2>
	<div class="processor">
		<table>
			<tr>
				<th>Processor:</th>
				<th> 
					<%
						if(processor != null){
							if (processor.equals("Celeron D")){
							%>
								<span>Celeron D</span>
							<%
							}
							%>
							<%
							if (processor.equals("Pentium IV")){
							%>
								<span>Pentium IV</span>
							<%
							}
							%>
							<%
							if (processor.equals("Pentium D")){
							%>
								<span>Pentium D</span>
							<%
							}
							%>
					<%
						}
						else {
							%>
							<span>You not chose Processor</span>
					<% 
						}
					%>
				</th>
			</tr>
			<tr>
				<th>Accessories: </th>
				<th>
					<%
						if (checkbox != null){
					%>	
						<span>Moniter</span>
						<br>
					<% 
						}
					%>
					<%
						if (select != null){
							for(int i=0; i < select.length ;i++){
								String temp =select[i].toString();
					%>
								<span><%=temp %></span>
								<br>
					<% 
							}
					%>
							
					<% 
						}
					%>
				</th>
			</tr>
		</table>
	</div>
</body>
</html>