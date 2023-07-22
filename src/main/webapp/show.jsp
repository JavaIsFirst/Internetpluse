<%@page import="domain.Doctor"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.User"%>
<%@page import="view.userServletList"%>
<%@page import="view.Select"%>

<!DOCTYPE html>
<html>
	
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="搜索框.css">
<link rel="stylesheet" href="表格.css">
<title>就医</title>
	<!-- JS -->
        <script language="javascript">
            function init()
            {//先隐藏二级菜单
            	document.getElementById("sub_menu1").hidden=true;
            	document.getElementById("sub_menu2").hidden=true;
            	document.getElementById("sub_menu3").hidden=true;
            	document.getElementById("sub_menu4").hidden=true;
            	document.getElementById("sub_menu5").hidden=true;
            	document.getElementById("sub_menu6").hidden=true;
            	document.getElementById("sub_menu7").hidden=true;
            	document.getElementById("sub_menu8").hidden=true;
            	document.getElementById("sub_menu9").hidden=true;
            	document.getElementById("sub_menu10").hidden=true;
            	document.getElementById("sub_menu11").hidden=true;
            	document.getElementById("sub_menu12").hidden=true;
            	document.getElementById("sub_menu13").hidden=true;
            	document.getElementById("sub_menu14").hidden=true;
            	document.getElementById("sub_menu15").hidden=true;
            	document.getElementById("sub_menu16").hidden=true;
            	document.getElementById("sub_menu17").hidden=true;
            	document.getElementById("sub_menu18").hidden=true;
            	document.getElementById("sub_menu19").hidden=true;
            	document.getElementById("sub_menu20").hidden=true;
            	document.getElementById("sub_menu21").hidden=true;
            	document.getElementById("sub_menu22").hidden=true;
            	document.getElementById("sub_menu23").hidden=true;
            	document.getElementById("sub_menu24").hidden=true;
            	document.getElementById("sub_menu25").hidden=true;
            	document.getElementById("sub_menu26").hidden=true;
            	document.getElementById("sub_menu27").hidden=true;
            	document.getElementById("sub_menu28").hidden=true;
            	
            }
            function f(str)
            {//点击展开折叠效果
                var sub_menu = document.getElementById(str);
                var dis_v = sub_menu.style.display;
                
                if(dis_v == "block")
                    sub_menu.style.display = "none";
                else
                    sub_menu.style.display = "block";
            }
        </script>
</head>
<body onload="init()">

	<div >
		<h2 align="center">查询医院</h2>
	</div>
	<form action="Select">
		<div class="div1">
			<%
			//先把数据取出来，通过request对象（内置对象，不需要我们去创建，其实是httpservletRequest对象的实例）

			String diseaseName = (String)request.getAttribute("diseaseName");
			String address = (String)request.getAttribute("address");
			if(diseaseName==null){	%>	
			<input name="address" type="text" placeholder="请输入省份"> 
			<% } else{%>
				<input name="address" type="text" placeholder="请输入省份" value = "<%=address%>"> 
			<% } %>
			<% if(address==null){%>
			<input name="diseaseName" type="text" placeholder="请输入疾病名">
			<% } else { %>
				<input name="diseaseName" type="text" placeholder="请输入疾病名" value = "<%=diseaseName%>">
			<!--placeholder是文本框中的提示文字-->
			<% }%>
			<input type="submit" value="搜索" class="search" onclick="就医_.jsp">
			
		</div>
	</form>
	
	
	
	<div class="div2" onload = "init()">
		<table border="1" class = "table1">
			<tr>
				<th height=40 width = 500>医院</th>
				<th wigth = 100>地址</th>
				<th>擅长治疗疾病</th>
			</tr>
			<%
			//先把数据取出来，通过request对象（内置对象，不需要我们去创建，其实是httpservletRequest对象的实例）
			int count = 0;
			List<User> userList = (List<User>) request.getAttribute("list");
			List<Doctor> docList = (List<Doctor>) request.getAttribute("doclist");
			for (User us : userList) {		
				String sub_menu = "sub_menu";
				count++;
				sub_menu = sub_menu+count;
			%>
			<tr onclick="f('<%=sub_menu%>')">
				<td height=50 ><%=us.getH_name()%></td>
				<td >
					<%if (us.getH_province().equals(us.getH_city()))
					out.print(us.getH_province());
					else{
						out.print(us.getH_province()+us.getH_city());
					}%>
				</td>
				<td><%=us.getH_disease()%></td>
			</tr>
			<tr id="<%=sub_menu%>" >
				<td>
				<table border="1" class = "table2">
					<%for(Doctor doc:docList){
						if(doc.getHospital().equals(us.getH_name())){
					%>
					
					<tr>
						<td height = 20 width = 100><%=doc.getName() %></td>
						<td ><%=doc.getDisease() %></td>
					</tr>
					<%
						}
					} %>
				</table>
				</td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>