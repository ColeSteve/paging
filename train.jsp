<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>铁行网——郑州火车站</title>
<style>
body {
	margin: 0px;
	padding: 0px;
}

a, a:link, a:visited {
	text-decoration: none;
	color: #000;
}

a:hover {
	text-decoration: underline;
	color: #cc0000;
}

#container_admin {
	width: 615px;
	margin: 0px auto;
	background-image: url(images/right.jpg);
	background-repeat: no-repeat;
}

.bulletin {
	width: 600px;
	margin: 0px auto;
	font-size: 12px;
}

.id {
	list-style-type: none;
	width: 40px;
	text-align: center;
	float: left
}

.number {
	list-style: none;
	width: 60px;
	text-align: center;
	float: left
}

.startstation {
	list-style: none;
	width: 60px;
	text-align: center;
	float: left
}

.starttime {
	list-style: none;
	width: 60px;
	text-align: center;
	float: left
}

.arrivestation {
	list-style: none;
	text-align: center;
	float: left;
	width: 60px;
}

.arrivetime {
	list-style: none;
	width: 60px;
	text-align: center;
	float: left
}

.entirejourney {
	list-style: none;
	text-align: center;
	float: left;
	width: 80px;
}

.entiretime {
	list-style: none;
	width: 80px;
	text-align: center;
	float: left
}

.oper {
	float: left;
}

li {
	float: left;
	list-style: none;
}
</style>
<script>
	function doHidden(id){
		var obj=document.getElementById(id);
		obj.style.display=obj.style.display=='none'?'block':'none';
	}
	
	function goPage(){
		var a=document.getElementById("goPage").value;
		var num=parseInt(a);
		if( num < 1 || num > "${pageInfo.pageCount}" ||isNaN(num))
			return;
		document.getElementById("btn-jump").setAttribute("href", "${pageInfo.action}?pageInfo.currentPage="+num);
	}
</script>
</head>
<body>

	<div id="container_admin">

		<div
			style="height: 60px; line-height: 50px; font-family: '幼圆'; padding-left: 50px; font-size: 13px; color: #2a569d; background-image: url(images/head.gif); background-repeat: no-repeat">
			列车信息管理 <a style="color: #2a569d" href='train_add.jsp'>添加</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单击【车次】查看详细信息
		</div>
		<div id="bulletin_admin" style="border-right: 1px solid #9cb2d7;">
			<div class="bulletin" style="border-bottom: 1px solid #CCC">
				<li class="id">ID</li>
				<li class="number">车次</li>
				<li class="startstation">始发站</li>
				<li class="starttime">发车时间</li>
				<li class="arrivestation">终点站</li>
				<li class="arrivetime">到站时间</li>
				<li class="entirejourney">全程</li>
				<li class="entiretime">运行时间</li>
				<li class="oper">操作</li>
				
			</div>
			<s:iterator id="t" value="pageInfo.list" var="t">
			    
				<div onclick="doHidden(<s:property value="#t.id"/>)"
					class="bulletin"
					style="height: 30px; border-bottom: 2px dashed #063; line-height: 20px; float: left;">
					<li class="id"><s:property value="#t.id" /></li>
					<li class="number"><s:property value="#t.number" /></li>
					<li class="startstation"><s:property value="#t.startStation" /></li>
					<li class="starttime"><s:property value="#t.startTime" /></li>
					<li class="arrivestation"><s:property value="#t.arriveStation" /></li>
					<li class="arrivetime"><s:property value="#t.arriveTime" /></li>
					<li class="entirejourney"><s:property value="#t.entireJourney" />公里</li>
					<li class="entiretime"><s:property value="#t.entireTime" /></li>
					<li class="oper"><a
						href="train_edit.jsp?id=<s:property value="#t.id"/>">修改</a> | <a
						href="trainDelete?id=<s:property value="#t.id"/>">删除</a></li>
				</div>
				<div id="<s:property value="#t.id"/>"
					style="border: 1px solid #339900; display: none; font-size: 12px; padding: 1px; margin: 1px auto; width: 600px;">
					<div>
						<span style="width: 120px; float: left"><font color="green">硬座：</font><font
							color="#FF0000"><s:property value="#t.hardPrice" /></font> 元</span> <span
							style="width: 120px; float: left"><font color="green">硬卧上铺：</font><font
							color="#FF0000"><s:property value="#t.hardAbove" /></font> 元</span> <span
							style="width: 120px; float: left"><font color="green">硬卧中铺：</font><font
							color="#FF0000"><s:property value="#t.hardMiddle" /></font> 元</span> <span
							style="width: 120px; float: left"><font color="green">硬卧下铺：</font><font
							color="#FF0000"><s:property value="#t.hardBelow" /></font> 元</span>
					</div>
					<div style="width: 120px; float: left;">
						<span style="width: 120px; float: left"><font color="green">软卧上铺：</font><font
							color="#FF0000"><s:property value="#t.softAbove" /></font> 元</span> <span
							style="width: 120px;"><font color="green">软卧下铺：</font><font
							color="#FF0000"><s:property value="#t.softBelow" /></font> 元</span>
					</div>
				</div>
			</s:iterator>
		</div>

		<div
			style="text-align: center; font-size: 12px; height: 30px; margin: 10px;">
			</br>
			<tr>
				<td colspan="4">共${pageInfo.recordCount }条记录，共${pageInfo.pageCount }页，当前是第${pageInfo.currentPage }页
					&nbsp <a href="${pageInfo.action}?currentPage=1">首页</a> <c:if
						test="${pageInfo.currentPage!=1}">
						<a href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.currentPage-1}">上一页</a>
					</c:if> <c:if test="${pageInfo.currentPage!=pageInfo.pageCount}">
						<a href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.currentPage+1}">下一页</a>
					</c:if> <a href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.pageCount}">末页</a>
					&nbsp<input size="2" id="goPage"> <a
						href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.currentPage }"
						onclick="goPage();" id="btn-jump">
						<button>go</button> </a>
				</td>
			</tr>
		</div>


	</div>
</body>
</html>

