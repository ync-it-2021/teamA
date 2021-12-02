<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript" src="../resources/demo/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<body>
<textarea name="sota" id="sota" rows="10" cols="100" style="width:766px; height:412px;"> </textarea>

					<script type="text/javascript">

					 var oEditors = [];

					 nhn.husky.EZCreator.createInIFrame({

					 oAppRef: oEditors,

					 elPlaceHolder: "sota", //textarea에서 지정한 id와 일치해야 합니다.

					 sSkinURI: "../resources/demo/SmartEditor2Skin.html",

					 fCreator: "createSEditor2"

					 });

				</script>
</body>
</html>