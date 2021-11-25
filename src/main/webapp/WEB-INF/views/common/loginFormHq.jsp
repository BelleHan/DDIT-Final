<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<!DOCTYPE html>
<html>
<title>FMS</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<style>
html { height: 100%; }
body {  
      min-height: 100%; 
      font-family: '맑은 고딕','Malgun Gothic','돋움',Dotum,Helvetica,AppleGothic,Sans-serif; 
      font-size: 12px; 
      line-height: 22px; 
      position: relative; 
      letter-spacing: -1px;
      -webkit-print-color-adjust:exact;
}
input, button, select, textarea {
   font-family:'맑은 고딕','Malgun Gothic','돋움',Dotum,Helvetica,AppleGothic,Sans-serif;
   letter-spacing: -1px;
}
.login-page {
   background-color: white;
}
.login-box {
   float : left;
   margin : 3px;
}
.idcheck{
    margin-top : 15px;
}
.form-control{
}
</style>
<!-- Font Awesome Icons -->
<link rel="stylesheet"   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
   
<!-- include summernote css/js -->
<link href="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote.min.css" rel="stylesheet">

<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">


<body class="hold-transition login-page">
<img src="<%=request.getContextPath()%>/resources/images/logo.jpg" alt="logo" style="width:50vh; margin-bottom:20px;">
<div>
   <div class="login-box">
      <div class="card-body" style="padding : 7px;" onclick="log();">
          <div class="login-body">
            <form action="<%=request.getContextPath() %>/hq/common/loginHq.do"   method="post">
               <div class="form-group has-feedback">
                  <input type="text" class="form-control" id="code" name="code" placeholder="아이디를 입력하세요." value="${pastID }" style="height : calc(2.25rem + 10px);">
                  <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
               </div>
               <div class="form-group has-feedback">
                  <input type="password" class="form-control" id="pwd" name="pwd" placeholder="패스워드를 입력하세요."  value="" style="height : calc(2.25rem + 10px);">
                  <span class="glyphicon glyphicon-lock form-control-feedback"></span>
               </div>
               <div>
                  <button type="submit" class="btn bg-gradient-primary btn-block" style="height : calc(2.25rem + 20px);">본사로그인</button>
               </div>
               
            </form>
   
         </div>
         <!-- /.login-box-body -->
      </div>
   </div>
   <!-- /.login-box -->
</div>   
<div>
<button type="button" class="row btn btn-block bg-gradient-primary btn-lg" style="float: left; width:170px; font-size: 14px;" onclick="OpenWindow('<%=request.getContextPath()%>/hq/common/apply.do','신청', '800', '900');">가맹점 신청</button>
</div>
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>

<!-- summernote Editor -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

<!-- jquery cookie -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script>
function log() {
	$('#code').val('emp004');
	$('#pwd').val('1');
	$('.btn-block').click();
}
</script>
</body>
</html>




