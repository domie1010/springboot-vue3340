﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改租赁</TITLE>
	    
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
       
	</head>
<%
  String id="";
 
   %>
<script language="javascript">

function gows()
{
	document.location.href="zulin_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>
	<body>
			<form action="updateZulin.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改租赁<input type="hidden" name="id" value="${zulin.id}" /></td>
						</tr>
						<tr ><td width="200">车辆编号：</td><td><input name='cheliangbianhao' type='text' id='cheliangbianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">车辆名称：</td><td><input name='cheliangmingcheng' type='text' id='cheliangmingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">类型：</td><td><input name='leixing' type='text' id='leixing' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">车牌号：</td><td><input name='chepaihao' type='text' id='chepaihao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">日租价：</td><td><input name='rizujia' type='text' id='rizujia' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">租赁天数：</td><td><input name='zulintianshu' type='text' id='zulintianshu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelzulintianshu' />必需数字型</td></tr>		<tr ><td width="200">总价：</td><td><input name='zongjia' type='text' id='zongjia' value='' onblur='' style='border:solid 1px #000000; color:#666666' readonly='readonly' /> 此项不必填写，系统自动计算</td></tr>		<tr ><td width="200">租赁人：</td><td><input name='zulinren' type='text' id='zulinren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.cheliangbianhao.value='${zulin.cheliangbianhao}';</script>	<script language="javascript">document.form1.cheliangmingcheng.value='${zulin.cheliangmingcheng}';</script>	<script language="javascript">document.form1.leixing.value='${zulin.leixing}';</script>	<script language="javascript">document.form1.chepaihao.value='${zulin.chepaihao}';</script>	<script language="javascript">document.form1.rizujia.value='${zulin.rizujia}';</script>	<script language="javascript">document.form1.zulintianshu.value='${zulin.zulintianshu}';</script>	<script language="javascript">document.form1.zongjia.value='${zulin.zongjia}';</script>	<script language="javascript">document.form1.zulinren.value='${zulin.zulinren}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	    var zongjiaj=1;if(document.getElementById("rizujia").value!=""){zongjiaj=zongjiaj*parseFloat(document.getElementById("rizujia").value);}if(document.getElementById("zulintianshu").value!=""){zongjiaj=zongjiaj*parseFloat(document.getElementById("zulintianshu").value);}document.getElementById("zongjia").value=zongjiaj;	


return true;   
}   
popheight=450;
</script>  
