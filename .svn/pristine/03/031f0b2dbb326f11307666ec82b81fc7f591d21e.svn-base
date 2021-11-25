<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-12" >
	   <div class="card">
	      <div class="card-header">
	        <h3 class="card-title">휴학신청</h3>
	        
	           <button type="button" class="btn btn-sm auto" style="font-size:11px; float:right; background-color:#e9ecef; width: 70px;" onclick="auto_leave_regist()">자동입력</button>
	        
	      </div>
	   <!-- /.card-header -->
	   
	      <div class="card-body">
	          <div class="row">
	             <div class="form-group col-4">
	                <label for="">휴학유형</label>
	                  <select class="form-control leave_type_status_cd" id="leave_type" name="leave_type" >
	                        <option value="">휴학유형</option>
	                        <option value="일반휴학">일반휴학</option>
	                        <option value="군휴학">군휴학</option>
	                        <option value="질병휴학">질병휴학</option>                     
	                     </select>
	              </div>
	             <div class="form-group col-4">
	                <label for="">신청일자</label>
	                <input id="register_date" type="text" class="form-control read-only" readOnly value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>" style="padding-top: 5px;">
	             </div>
	             <div class="form-group col-4">
	                <label for="">신청학기</label>
	                <select class="form-control leave_semester" id="applySemesterAmmount" name="leave_semester" >
	                        <option value="">신청학기</option>
	                        <option value="1학기">1학기</option>
	                        <option value="2학기">2학기</option>
	                        <option value="3학기">3학기</option>   
	                        <option value="4학기">4학기</option>                  
	                  </select>
	             </div>
	         </div>
	         
	          <div class="row">
	             <div class="form-group col-4">
	                <label for="">휴학시작일자</label>
	                <input type="text" name="leave_start_date" class="form-control leave_start_date" id="leave_start_date" value="" placeholder="-" readonly="readonly">
	              </div>
	             <div class="form-group col-4">
	                <label for="">휴학종료일자</label>
	                <input type="text"  name="leave_end_date" class="form-control leave_end_date" id="leave_end_date" value="" placeholder="-"  readonly="readonly">          
	             </div>
	             <div class="form-group col-4">
	                <label for="">증빙자료</label>
	                <div class="filebox row">
	                         <div class="col-9">
	                     <input type="text" class="form-control" id="fileObjectId" value=""/>
	                  </div>
	                  <div class="col-3" style="vertical-align:center;">
	                    <label for="ex_file" class="btn" style="margin:2px; font-size: medium; text-align: center; vertical-align: center;">첨부</label>
	                     <input type="file" id="ex_file">
	                    <script>
	                       var file = document.getElementById('ex_file');
	                       
	                       file.addEventListener('change', function(){
	                        inputFileName(this, '#fileObjectId');
	                        fileUpload(this);
	                       });
	                    </script>
	                  </div>
	                </div>
	             </div>
	         </div>
	         <div class="row">
	            <div class="form-group col-12">
	                <label for="">휴학사유</label>
	                <textarea class="form-control col-12 leave_reason" name="leave_reason" rows="5" placeholder="휴학사유를 입력하세요   "></textarea>
	            </div>
	         </div>
	         <div align="center">
	            <button id="leaveApplyBtn" type="button" class="btn bg-gradient-primary btn-sm" style="width: 60px;" onclick="leave_regist_go();">신청</button>
	         </div>
	      </div>
	   
	      
	   </div>
	</div>
</body>
</html>