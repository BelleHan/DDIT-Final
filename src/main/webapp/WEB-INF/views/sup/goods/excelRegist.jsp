<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="padding:10px 16px;">
	<h4>물품 Import</h4> 
	</div>
	
	<div class="card" style="height:80vh;overflow-y:scroll;overflow-x:hidden">
			
	        <div class="card-header">
	              <h3 class="card-title">1.엑셀파일 작성법(Example)</h3>
	            </div>
	            <!-- /.card-header -->
	            <div class="card-body">
		           <div class="col-12 row" style="float:left; padding-left: 0px;">
	<!-- 	           <div class="col-sm-12" style="padding:10px 20px 0px 5px;"> -->
						<div class="col-sm-2">
						<form enctype="multipart/form-data" action="<%=request.getContextPath()%>/sup/goods/excelExport" method="post">
							<button type="submit" class="btn btn-secondary float-sm-left" id="formExportBtn" style="margin-bottom: 10px; padding:8px 14px;font-size: 15px;">엑셀 샘플 다운로드&nbsp;&nbsp;<i class="fas fa-file-upload"></i></button>
						</form>
						</div>
						
						 <div class="col-sm-6" style="padding-top:10px;">
							<form enctype="multipart/form-data" method="post" name="excelUpForm" id="excelUpForm" action="excelImport.do" >
								<input type="file" id="excelFile" name="excleFile" value="엑셀 업로드" />
								<input type="submit" value="Submit"/>
							</form>
				 		 </div>
				  </div>
				  
				  <div class="info-box" style="margin-top: 10px; padding-top: 15px;background: #E6E6E6;">
		              <div class="info-box-content" style="font-size: 14px;">
		                <span class="info-box-text">*위 버튼을 클릭하여 샘플 파일을 다운받아 해당 포맷에 작성하시기 바랍니다.</span>
		                <span class="info-box-text">*엑셀표에서 첫번째 행은 제외됩니다.</span>
		                <span class="info-box-text">*확장자를 .xslx로 변경하여 업로드 시 에러가 발생할 수 있습니다. 이 경우, 확장자를 .xls로 저장하여 재시도 해보시기 바랍니다.</span>
		                <span class="info-box-text">*물품코드는 고유 값으로 중복되지 않게 작성하시기 바랍니다. 물품코드가 중복되는 경우 업로드 시 에러가 발생할 수 있습니다.</span>
		                <span class="info-box-text">*샘플파일 내 각 필드에 대한 설명은 아래 테이블을 참고하시기 바랍니다.</span>
		                <span class="info-box-text">*작성된 엑셀파일을 선택한 후 'Submit' 버튼을 눌러 물품을 일괄등록합니다.</span>
		              </div>
	              <!-- /.info-box-content -->
            	 </div>
	            
	              <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
	              	<div class="row">
	           			<div class="col-sm-12">
	             			 <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info" style="font-size: 14px;">
	               			 <thead>
				                <tr role="row">
				                <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 200px;">항목</th>
				                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" >표시형식(예시)</th>
				                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 350.74px;">비고</th>
				                </tr>
				                </thead>
				                <tbody>
				                
				                <tr role="row" class="odd">
				                  <td class="sorting_1">물품코드</td>
				                  <td>SG0001</td>
				                  <td>회사 고유의 물품코드로 반드시 중복없이 작성</td>
				                </tr>
				                
				                <tr role="row" class="even">
				                  <td class="sorting_1">물품명</td>
				                  <td>로스팅원두</td>
				                  <td>-</td>
				                </tr>
				                
				                <tr role="row" class="odd">
				                  <td class="sorting_1">납품가(원)</td>
				                  <td>0</td>
				                  <td>-</td>
				                </tr>
				                
				                <tr role="row" class="even">
				                  <td class="sorting_1">대분류</td>
				                  <td>식품, 사무용품, 인테리어, 주방용품 </td>
				                  <td>오타없이 작성</td>
				                </tr>
				                
				                <tr role="row" class="odd">
				                  <td class="sorting_1">소분류</td>
				                  <td><b>[식품]</b> : 과일, 견과/견과, 채소, 어패류(수산), 수육류(축산), 분식류, 빵식, 가루/조미류, 오일, 생수/음료, 과자/초콜릿, 커피/원두<br>
				                  	 <b>[사무용품]</b> : 칸막이, 사물함, 책상/탁자, 의자, 캐비닛, 파일/바인더, 필기도구, 노트북, 데스크탑, 모니터, 키보드/마우스, 프린터/복합기<br>
				                  	 <b>[인테리어]</b>: 욕실용품, 조명/스탠드, 카페트/쿠션, 커튼/블라인드, 캔들, 테이블, 수납<br>
				                  	 <b>[주방용품]</b> : 냄비/프라이팬, 칼/도마, 베이킹, 보온/보냉, 냉장고, 컵/잔/텀블러
				                  </td>
				                  <td>오타없이 작성</td>
				                </tr>
				                
				                
				                <tr role="row" class="even">
				                  <td class="sorting_1">용량</td>
				                  <td>0</td>
				                  <td>해당사항 없을 시 0으로 작성</td>
				                </tr>
				                
				                <tr role="row" class="odd">
				                  <td class="sorting_1">단위</td>
				                  <td>mL,L,kg ...</td>
				                  <td>해당사항 없을 시 0으로 작성</td>
				                </tr>
				                
				                <tr role="row" class="even">
				                  <td class="sorting_1">포장재질</td>
				                  <td>폴리에틸렌</td>
				                  <td>해당사항 없을 시 0으로 작성</td>
				                </tr>
				                
				                <tr role="row" class="odd">
				                  <td class="sorting_1">물품재질</td>
				                  <td>원두</td>
				                  <td>해당사항 없을 시 0으로 작성</td>
				                </tr>
				                
				                <tr role="row" class="even">
				                  <td class="sorting_1">가로</td>
				                  <td>0</td>
				                  <td>물품의 크기를 측정하기 어려울 시, 포장상태의 가로 길이 작성</td>
				                </tr>
				                
				                <tr role="row" class="odd">
				                  <td class="sorting_1">세로</td>
				                  <td>0</td>
				                  <td>물품의 크기를 측정하기 어려울 시, 포장상태의 세로 길이 작성</td>
				                </tr>
				                
				                <tr role="row" class="even">
				                  <td class="sorting_1">높이</td>
				                  <td>0</td>
				                  <td>물품의 크기를 측정하기 어려울 시, 포장상태의 세로 길이 작성</td>
				                </tr>
				                
				                <tr role="row" class="odd">
				                  <td class="sorting_1">무게</td>
				                  <td>0</td>
				                  <td></td>
				                </tr>
				                
				                <tr role="row" class="even">
				                  <td class="sorting_1">물품특성</td>
				                  <td></td>
				                  <td></td>
				                </tr>
				                </tbody>
				                
				              </table>
	              		</div>
	              </div>
	            <!-- /.card-body -->
	     </div>
     </div>
   </div>
<!-- card -->     
<script type="text/javascript">
	function call(){
		alert(this.value)
	}
</script>
</body>
</html>