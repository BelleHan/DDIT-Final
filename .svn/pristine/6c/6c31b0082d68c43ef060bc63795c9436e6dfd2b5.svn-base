<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<title>반품신청등록</title> 
<head>
<!-- summernote -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.css">
</head>

<body> 
   <!-- Content Header (Page header) -->
    <section class="content-header">
    	<div class="container-fluid">
    		<div class="row mb-2">
    			<div class="col-sm-6">
	      			<h1>반품신청</h1>
	      		</div>	      		
	    	
	       		
	       		<div class="col-sm-6">
			      <ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item"><a href="list.do"><i class="fa fa-dashboard"></i>반품신청</a></li>
			        <li class="breadcrumb-item active">반품신청</li>		        
			      </ol>
		      	</div>
	     	</div>	     	
      	</div>
    </section>

    <section class="content container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card card-outline card-info">
					<div class="card-header">
					<form enctype="multipart/form-data" role="form" method="post" action="regist.do" name="registForm">
					<div class="card-body">
						<h4>반품하실 물품을 검색하세요.</h4>
						<div class="input-group mb-3">
							<input class="form-control" type="text" id="goods" style="text-align:right;">
                  			<span class="input-group-append">
                  				<button type="button" id="searchBtn" onclick="search_goodsName()" class="btn btn-info btn-flat">검색</button>
                  			</span>
						</div>
							<input type="hidden" name="return_code" id="return_code" value= />
							<div class="form-group" >
								<select class="form-control" name="hq_goods_code" id="hq_goods_code">
									<option value="" style="text-align:center;" >물품명</option>
								</select>
							</div>
							<!-- /btn-group -->
					</div><!--end card-header  -->
							
							<div class="form-group" >
								<label for="return_quan">수량</label>
								<input type="text" class="form-control" id="return_quan" name="return_quan" style="text-align:right;"
								value="" />
							</div>

							<div class="form-group">
								<label for="return_reason_code">반품사유</label>
								<select class="form-control" name="return_reason_code" id="return_reason_select">
								   <option value="" style="text-align:center;">-필수-</option>
								   <option value="1" style="text-align:center;">오배송</option>
								   <option value="2" style="text-align:center;">결품</option>
								</select>
							</div>
							
							<div class="form-group">
								<label for="return_title">제 목</label> 
								<input type="text" id="return_title" name='return_title' class="form-control" placeholder="제목을 쓰세요">
							</div>
							<div class="form-group">
								<label for="fran_code">가맹점코드</label> 
								<input type="text" id="fran_code" name='fran_code' class="form-control" placeholder="가맹점코드">
							</div>
							
							<div class="form-group">								
								<div class="card card-outline card-success">
									<div class="card-header">
										<h5 style="display:inline;line-height:40px;">첨부파일 : </h5>
										&nbsp;&nbsp;<button class="btn btn-xs btn-primary"
										onclick="addFile_go();"	type="button" id="addFileBtn">Add File</button>
									</div>									
									<div class="card-footer fileInput">
									</div>
								</div>
							</div>
						</form>
					</div><!--end card-body  -->
					<div class="card-footer">
						<button type="button" class="btn" id="cancelBtn" onclick="CloseWindow();" style="float: right">취 소</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-primary" id="registBtn" onclick="javascript:regist_go();" style="float: right">등 록</button>
					</div><!--end card-footer  -->
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row -->
    </section>
    
    
    <!-- /.content -->
 	<script>   
    	window.onload=function(){
			Summernote_start($('#content'));
			
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
    	function search_goodsName(){
			$.ajax({
				url : "<%=request.getContextPath() %>/fr/goodsList.do",
				data : {"goods" : $("#goods").val() },
				dataType : "json",
				success : function(res){
					console.log(res);
						let htmlCode = "<option value='' style='text-align:center;' >검색한 물품을 선택해주세요.</option>";
						$.each(res, function(i,v){
							htmlCode += "<option value='" + v.hq_goods_code+ "' style='text-align:center;' >" + v.hq_goods_name + "</option>"
						});
						$("#hq_goods_code").html(htmlCode);
					
// 					let htmlCode = "<table>";
// 					$.each(res, function(i,v){
// 						htmlCode += "<tr id='" + v.hq_goods_code+ "'><td>" + v.hq_goods_name  + "</td></tr>" 
// 					});
// 					htmlCode += "</table>";
// 					$("#result").html(htmlCode);



				},
				error : function(e){
					alert("오류...");
				}
			});
		}
    	
    	
    </script>
    
<%--     <%@ include file="/WEB-INF/views/common/summernote.jsp" %> --%>
    
    <script>
    	function addFile_go(){
//     		alert("add file btn");

// 			var form=$('<form>');
// 			$('body').append(form)
// 			form.submit();
			
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
    		
    		if($("input[name='uploadFile']").val()==""){ //form.title.value
    			alert("첨부파일은 필수입니다.");
    			$("input[name='uploadFile']").focus();
    			return;
    		}
    		//$('#return_reason_code').attr('name', $("select[name=return_reason_code] option:selected").attr('value'));
    		
    		document.registForm.submit();
    	}
   
    </script>
</body>