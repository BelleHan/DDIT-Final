<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가맹점 신청</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
   <!-- Ionicons -->
   <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
   <!-- daterange picker -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">
   <!-- iCheck for checkboxes and radio inputs -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
   <!-- Bootstrap Color Picker -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
   <!-- Tempusdominus Bbootstrap 4 -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
   <!-- Select2 -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/select2/css/select2.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
   <!-- Bootstrap4 Duallistbox -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
   <!-- Theme style -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
   <!-- Theme style -->
   <link rel="stylesheet"   href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
   <!-- Google Font: Source Sans Pro -->
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
   <!-- Common Style -->
   <link rel="stylesheet"   href="<%=request.getContextPath()%>/resources/css/common.css">
   <!-- toast ui Grid -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/tui-grid/dist/tui-grid.min.css" />
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/tui-date-picker/dist/tui-date-picker.min.css" />
   

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>


<!-- jquery cookie -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
 <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.css">
<script>

function findAddr(){
   new daum.Postcode({
        oncomplete: function(data) {

           console.log(data);
           
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('fran_zip').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("fran_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("fran_detail_addr").value = jibunAddr;
            }
        }
    }).open();

}

function addFile_go(){
//      alert("add file btn");

//      var form=$('<form>');
//      $('body').append(form)
//      form.submit();
   
   if ($('input[name="uploadFile"]').length >= 5) {
      alert("파일추가는 5개까지만 가능합니다.");
      return;
   }
   
   var input=$('<input>').attr({"type":"file","name":"uploadFile"}).css("display","inline");
   var div=$('<div>').addClass("inputRow");
   div.append(input).append("<button style='border:0;outline:0;' class='badge bg-red' type='button'>X</button>");
   $('.fileInput').append(div);
}   


function regist_go(){
   
     if($('input[name="fran_owner"]').val() == ""){
         alert("이름을 입력해주세요.");
          return;
      }
      
      if($('select[name="fran_tel1"]').val() == ""){
         alert("전화번호 식별번호를 선택해주세요.");
         return;
      }
      if($('input[name="fran_tel2"]').val() == ""){
         alert("전화번호 국번을 입력해주세요.");
         return;
      }
      if($('input[name="fran_tel3"]').val() == ""){
         alert("전화번호 뒷번호를 입력해주세요.");
         return;
      }
      
      $('input[name="fran_tel"]').val(  $('select[name="fran_tel1"]').val() + "-" +  $('input[name="fran_tel2"]').val() + "-" + $('input[name="fran_tel3"]').val()   )
      
      if($('input[name="fran_email"]').val()==""){
            alert("이메일을 입력해주세요.");
            return;
      }
         
      if($('input[name="fran_se"]').val()==""){
         alert("점포구분을 선택해주세요.");
         return;
      }
      
      if($('input[name="fran_zip"]').val()==""){
         alert("우편번호를 선택해주세요.");
         return;
      }
      
      if($('input[name="fran_addr"]').val()==""){
         alert("주소을 입력해주세요.");
         return;
      }
      
      if($('input[name="fran_detail_addr"]').val()==""){
         alert("상세주소를 입력해주세요.");
         return;
      }
      if($('input[name="fran_detail_addr"]').val()==""){
         alert("상세주소를 입력해주세요.");
         return;
      }
 
    var files = $('input[name="uploadFile"]');
   for(var file of files){
      console.log(file.name+" : "+file.value);
      if(file.value==""){
         alert("파일을 선택하세요.");
         file.focus();
         file.click();
         return;
      }
   }    
  
   /* 
    if($('input[name="uploadFile"]').val()==""){ 
       alert("첨부파일은 필수입니다.");
        $("input[name='uploadFile']").focus(); 
       return;
    } */
   
   //$('#return_reason_code').attr('name', $("select[name=return_reason_code] option:selected").attr('value'));
   
   document.registForm.submit();
}
window.onload=function(){
   /* Summernote_start($('#content')); */
   
   $('.fileInput').on('change','input[type="file"]',function(event){
      if (this.files[0].size > 1024 * 1024 * 40) {
         alert("파일 용량이 40MB를 초과하였습니다.");
         this.value="";
         $(this).click();
         return false;
      }
   });
   
   $('div.fileInput').on('click','div.inputRow > button',function(event){
      $(this).parent('div.inputRow').remove();
   });
}
</script>
</head>
<body>
      <div class="card card-primary">
              <div class="card-header" >
                <h3 class="card-title" style="margin-left: 45%;">가맹점 신청</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <!--  enctype="multipart/form-data"-->
              <form  role="form" enctype="multipart/form-data" method="post" action="regist.do" name="registForm">
                <input type="hidden" name="fran_applidoc_code" id="fran_applidoc_code" value= />
                <input type="hidden" name="fran_code" id="fran_code" value= />
                <input type="hidden" name="hq_code" id="hq_code" value= />
                <div class="card-body">
                  <div>
                     <span style="color:red;font-weight:bold; margin-left: 90%;">필수입력*</span>
                     <input type="button" id="a" name="a" style="float: right;" onclick="test();" value="시연">
                  </div>
                  <div class="form-group row col-12">
	                    <div class="col-sm-2"><label for="fran_owner" style="font-size:0.9em; font-weight:bold;">이름</label><span style="color:red;font-weight:bold; position: relative; left:4px;">*</span></div>
	                    <input type="text" class="form-control col-sm-4" id="fran_owner" name="fran_owner" style="float:left;">
                  </div>
                  
                  <div class="form-group row col-12">
                      <div class="col-sm-2"><label for="fran_tel" style="font-size:0.9em; font-weight:bold;">연락처</label><span style="color:red;font-weight:bold; position: relative;  left:4px;">*</span></div>
                        <div class="input-group-sm ">
                           <select style="width:90px;" name="fran_tel1" id="fran_tel" class="form-control float-left">
                              <option value="">-선택-</option>
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="017">017</option>
                              <option value="018">018</option>
                           </select>                     
                           <label class="float-left" style="padding: 0; text-align: center;">&nbsp;&nbsp;-&nbsp;&nbsp;</label>                              
                           <input style="width:68px;" name="fran_tel2" type="text" class="form-control float-left" id="fran_tel2"/>
                           <label class="float-left" style="padding: 0; text-align: center;">&nbsp;&nbsp;-&nbsp;&nbsp;</label>
                           <input style="width:68px;" name="fran_tel3" type="text" class="form-control float-left" id="fran_tel3" />                  
                        </div>
                        <input type="hidden" name="fran_tel">
                  </div>
                  
                  <div class="form-group row col-12">
                     <div class="col-sm-2" style="float: left;"><label for="fran_email" style="font-size:0.9em; font-weight:bold; ">이메일</label><span style="color:red;font-weight:bold;position:relative; left:4px;">*</span></div>
                        <input name="fran_email" type="email" class="form-control col-sm-4" id="fran_email" placeholder="example@naver.com" >
             	</div>
                  <div class="form-group row col-12" >
                     <div class="col-sm-2" style="float: left;"><label for="fran_se" style="font-size:0.9em; font-weight:bold; position:relative; right:7px;">점포구분</label><span style="color:red;font-weight:bold;position:relative; right:4px;">*</span></div>
                     <div  class= "col-sm-4"> 
                         <label for="fran_se">본인</label>
                        <input name="fran_se" type="checkbox" id="fran_se" style="margin-left: 8px;" value="1">
                         <label for="fran_se" style="margin-left:5px;">임대</label>
                        <input name="fran_se" type="checkbox" id="fran_se" style="margin-left: 8px;" value="2">
                     </div>
                  </div>
                  
          <div class="form-group row col-12">
           <div class="col-sm-2" style="float: left;"><label for="fran_zip" style="font-size:0.9em; font-weight:bold; position:relative; right:7px;">우편번호</label><span style="color:red;font-weight:bold;position:relative; right:4px;">*</span></div>
              <input class="form-control col-sm-4" id="fran_zip" name="fran_zip">
            <button type="button" id="member_post" onclick="findAddr();" class="btn btn-info" value="우편번호" style="margin-left: 5px;">우편번호 검색</button>
          </div>
          
          <div class="form-group row col-12">
           <div class="col-sm-2" style="float: left;"><label for="fran_addr" style="font-size:0.9em; font-weight:bold; position:relative; right:2px;">주소</label><span style="color:red;font-weight:bold;position:relative; left:2px;">*</span></div>
              <input class="form-control col-sm-4" id="fran_addr" name="fran_addr" >
          </div>
          
          <div class="form-group row col-sm-12">
            <div class="col-sm-2" style="float: left"><label for="fran_detail_addr" style="font-size:0.9em; font-weight:bold; position:relative; right:4px; ">상세주소</label><span style="color:red;font-weight:bold;position:relative; right:1px; ">*</span></div>
              <input class="form-control col-sm-4" id="fran_detail_addr" name="fran_detail_addr" >
          </div>
          
         <div class="row col-12" >
             <div class="col-sm-2" style="float: left"><label for="land_area" style="font-size:0.9em; font-weight:bold; position:relative; right:4px; ">면적</label><span style="color:red;font-weight:bold;position:relative; right:2px;">*</span></div>
                 <input name="land_area" type="text" class="form-control col-sm-3" id="land_area" placeholder="토지면적(평)">
                      
                       <div class="col-sm-3">
                      <input name="dedicated_area" type="text" class="form-control" id="dedicated_area" 
                               placeholder="전용면적(평)"/>
                       </div>
                     <div class="col-sm-4">      
                        <input name="floor" type="text" class="form-control" id="floor" placeholder="예시:1층/1~3층">
                     <span style=" float:right;">*전용면적: 건물 내 실 면적</span> 
                  </div> 
            </div>   
                         
         <div class="form-group row col-sm-12" >
               <div class="col-sm-2" style="float: left"><label for="fran_gtn" style="font-size:0.9em; font-weight:bold; position:relative; right:7px;">희망임대조건</label><span style="color:red;font-weight:bold;position:relative; right:4px;">*</span></div>
                        <input name="fran_gtn" type="text" class="form-control col-sm-3" id="fran_gtn" placeholder="보증금(원)">
                     <div class="col-sm-3">
                        <input name="fran_rent_charge" type="text" class="form-control" id="fran_rent_charge"  placeholder="임대료(원)">
                     </div>
                     <div class="col-sm-3">
                        <input name="fran_manage_cost" type="text" class="form-control" id="fran_manage_cost" placeholder="관리비(원)">
                     </div>
                  </div>     
                         
      			 <div class="form-group row col-sm-12" >
                     <div class="col-sm-2" style="float: left"><label for="fran_memo" style="font-size:0.9em; font-weight:bold; position:relative; right:7px; ">기타상세</label><span style="color:red;font-weight:bold;position:relative; right:4px;">*</span></div>
                     <div class="col-sm-7">
                        <textarea name="fran_memo" id="fran_memo" rows="5" cols="80" placeholder="입점 신청 주소지 주변 상권에 대한 상세 설명 복수 층일 경우 층별 면적 등"></textarea>
                     	<div class="col-sm-3" >0/1800byte</div>
                     </div>
                  </div>       
                <div class="form-group row col-sm-12">                        
                    <div class="card-header col-sm-2">
                     <label for="attach" style="font-size:0.9em; font-weight:bold; position:relative; right:7px;">첨부파일</label><span style="color:red;font-weight:bold;position:relative; right:4px;">*</span>
                      &nbsp;&nbsp;<button class="btn btn-xs btn-primary" onclick="addFile_go();" type="button" id="addFileBtn" style="font-weight:bold; position:relative; right:7px;">Add File</button>
                    </div>
                    <div class="card-footer fileInput">
                    </div>
                </div>  
                  
                </div>
                <!-- /.card-body -->
                <div>
                  <button type="button" class="btn btn-primary" onclick="regist_go();" style="width: 70px; position: relative; left:40%;" id="registBtn">신청</button>
                  <button type="button" id="cancelBtn" onclick="self.close();"
                              class="btn btn-primary "  style="width: 70px; position: relative; left:43%;">취소</button>
                </div>
              </form>
            </div>
            
<script>
function test() {
  document.getElementById("fran_owner").value = "김가맹";
  document.getElementById("fran_tel").value = "010";
  document.getElementById("fran_tel2").value = "3248";
  document.getElementById("fran_tel3").value = "4875";
  document.getElementById("fran_email").value = "fms405@ddit.or.kr";
  document.getElementById("fran_se").checked = true;
  document.getElementById("fran_zip").value = "34940";
  document.getElementById("fran_addr").value = "대전 중구 중앙로 76";
  document.getElementById("fran_detail_addr").value = "영민빌딩 4층 405호";
  document.getElementById("land_area").value = "270";
  document.getElementById("dedicated_area").value = "80";
  document.getElementById("floor").value = "2";
  document.getElementById("fran_gtn").value = "500000000";
  document.getElementById("fran_rent_charge").value = "2000000";
  document.getElementById("fran_manage_cost").value = "300000";
  document.getElementById("fran_manage_cost").value = "300000";
  document.getElementById("fran_memo").innerHTML = "가맹점 신청합니다.";
}
</script>
            
            
</body>
</html>