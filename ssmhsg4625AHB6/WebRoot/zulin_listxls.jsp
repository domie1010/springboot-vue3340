<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="zulinhsgb" scope="page" class="com.bean.ZulinBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=zulin.xls");
%>
<html>
  <head>
    <title>����</title>
  </head>

  <body >
 <%
			String sql="select * from zulin  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>�������</td>    <td align='center'>��������</td>    <td align='center'>����</td>    <td align='center'>���ƺ�</td>    <td align='center'>�����</td>    <td align='center'>��������</td>    <td align='center'>�ܼ�</td>    <td align='center'>������</td>    <td  width='80' align='center'>�Ƿ�֧��</td>    <td  width='80' align='center'>�Ƿ����</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=zulinhsgb.getAllZulin(12);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.cheliangbianhao}</td>    <td>${u.cheliangmingcheng}</td>    <td>${u.leixing}</td>    <td>${u.chepaihao}</td>    <td>${u.rizujia}</td>    <td>${u.zulintianshu}</td>    <td>${u.zongjia}</td>    <td>${u.zulinren}</td>    <td align='center'>${u.zulinren}</td>    <td align='center'>${u.issh} <input type="button" value="���" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=zulin'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

