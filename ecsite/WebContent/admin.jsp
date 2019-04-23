<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<title>ADMIN画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

.product {
	display: inline-block;
	padding: 10px;
}

.s:submit {
	display: inline-block;
}

.user {
	display: inline-block;
	padding: 10px;
}

.user s:submit {
	display: inline-block;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}
</style>
</head>
<body>

	<div id="header">
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<p>admin</p>
		</div>
		<div>
			<h3>管理者画面</h3>
				<div class=product>
				<s:form action="ItemCreateAction">
					<p>商品</p>
					<s:submit value="新規登録" />
					</s:form>
					<s:form action="ItemListAction">
					<s:submit value="一覧" />
					</s:form>
					</div>
				</div>
				<div class=user>
					<p>ユーザー</p>

					<s:submit value="新規登録" />
					<s:form action="UserListAction">
					<s:submit value="一覧" />
					</s:form>
				</div>
		</div>
		<div>
		<a href='<s:url action="GoHomeAction" />'>home画面へ</a>
		</div>
	<div id="footer">
		<div id="pr"></div>
	</div>


</body>
</html>