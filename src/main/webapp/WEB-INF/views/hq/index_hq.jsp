<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html>
<head>
<title>FMS</title>
<style>
body{
	width: 1280px; 
	margin:0 auto;
}
<style>
.searchgroup{
	text-align: right;
}
.input-group{
	float: left;
}
</style>
</head>
<body>
	<div style="diplay:block;">
		<iframe name="ifr" src="" frameborder="0" style="width : 100%; height : 82.6vh;" scrolling = "no" overflow-x:hidden; overflow-y:hidden;></iframe>
	</div>
<script type="text/javascript"> 
//페이지 출력 
function goPage(url, mCode){
	if (typeof(history.pushState) == 'function'){
		var renewURL = location.href;
		console.log('url : ' + url);
		renewURL = renewURL.substring(0, renewURL.indexOf('.do') + 3);
		console.log('mCode : '+mCode);
		if (mCode != 'MH00000') {
			renewURL += '?mCode=' + mCode;
		}
		
		history.pushState(mCode, null, renewURL);
	} else {
		location.hash = '#'+mCode;		
	}
	$('iframe[name="ifr"]').attr("src", "<%=request.getContextPath()%>"+url);
}

function userClick(){
	var user = 	document.getElementById("userDiv");
	user.style.display = (user.style.display != 'none')? "none":"block";
}

</script>
<script>
window.onload=function(){
	goPage('/hq/main.do','MH00000');
	var home = $('a.nav-link')[0];
	home.setAttribute('href', 'javascript:goPage("/hq/main.do")');
	var homeParentClassName = home.parentElement.classList;
	homeParentClassName.remove('dropdown');
}
</script>
</body>
</html>