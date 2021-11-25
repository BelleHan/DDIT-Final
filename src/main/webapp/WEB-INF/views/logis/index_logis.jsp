<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html>
<head>
<title>FMS LOGIS</title>
<style>
body{
	width: 1280px; 
	height: 35vh;
	margin:0 auto;
}

</style>
</head>
<body>
	<div style="diplay:block;">
		<iframe name="ifr" src="" frameborder='0' scrolling="no" style="width: 1280px; height: 86.6vh; overflow-y:hidden;"></iframe>
		<!-- <iframe   height='200' width='600'  style="overflow-y:hidden"></iframe> -->
	</div>
<script type="text/javascript">

function goPage(url, mCode){
	if (typeof(history.pushState) == 'function'){
		var renewURL = location.href;
		console.log('url : ' + url);
		renewURL = renewURL.substring(0, renewURL.indexOf('.do') + 3);
		console.log('mCode : '+mCode);
		if (mCode != 'ML00000') {
			renewURL += '?mCode=' + mCode;
		}
		
		history.pushState(mCode, null, renewURL);
	} else {
		location.hash = '#'+mCode;		
	}
	$('iframe[name="ifr"]').attr("src", "<%=request.getContextPath()%>"+url);
}

//handelbars printElement (args : data Array, appent target, handlebar template, remove class)
function printData(dataArr,target,templateObject,removeClass){
	
	var template=Handlebars.compile(templateObject.html());
	
	var html = template(dataArr);
	
	$(removeClass).remove();
	target.append(html);
}

function userClick(){
// 	alert('클릭');
	var user = 	document.getElementById("userDiv");
	user.style.display = (user.style.display != 'none')? "none":"block";
// 	if(user.style.display=='none'){
// 		user.style.display = 'block';
// 	}else{
// 		user.style.display = 'none';
// 	}
}

function subMenu(mCode){
	//alert("function call sumMenu()"+mCode);	
	if(mCode!="ML00000"){
		$.getJSON("subMenu.do?mCode="+mCode,function(data){
			//console.log(data);
			printData(data,$('.subMenuList'),$('#subMenu-list-template'),'.subMenu');
			
		});
	}else{
		$('.subMenuList').html("");		
	}
}
</script> 


<script>
window.onload=function(){
	goPage('/logis/main.do','ML00000');
	var home = $('a.nav-link')[0];
	home.setAttribute('href', 'javascript:goPage("/logis/main.do")');
	var homeParentClassName = home.parentElement.classList;
	homeParentClassName.remove('dropdown');
	
	
}
</script>
</body>
</html>