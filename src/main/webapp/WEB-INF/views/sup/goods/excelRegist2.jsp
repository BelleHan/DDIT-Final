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
	<section class="content-header">
	  	<div class="container-fluid" style="padding:0; margin:0">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h3>물품 Import</h3>  				
	  			</div>
<!-- 	  			<div class="col-sm-6"> -->
<!-- 	  				<ol class="breadcrumb float-sm-right"> -->
<!-- 			        <li class="breadcrumb-item"> -->
<!-- 			        	<a href="list.do"> -->
<!-- 				        	<i class="fa fa-dashboard"></i>물품목록 -->
<!-- 				        </a> -->
<!-- 			        </li> -->
<!-- 			        <li class="breadcrumb-item active"> -->
<!-- 			        	물품등록 -->
<!-- 			        </li>		         -->
<!-- 	    	  	</ol> -->
<!-- 	  			</div> -->
	  		</div>
	  	</div>
	  	<hr>
	</section>
<div class="col-sm-12" style="padding:10px 20px 0px 5px;">
	<form enctype="multipart/form-data" action="<%=request.getContextPath()%>/sup/goods/excelExport" method="post">
		<button type="submit" class="btn btn-primary float-sm-right" id="formExportBtn">엑셀다운로드</button>
	</form>
<!-- 				 onclick="OpenWindow('registForm.do','물품등록',800,750);">물품등록</button>	
		 -->
</div>


<div>
	<form enctype="multipart/form-data" method="post" name="excelUpForm" id="excelUpForm" action="excelImport.do" >
		<input type="file" id="excelFile" name="excleFile" value="엑셀 업로드" />
		<input type="submit" value="업로드"/>
	</form>
</div>

<div class="card">
            <div class="card-header">
              <h3 class="card-title">1.엑셀파일 작성법(Example)</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
	           <div class="col-sm-12" style="padding:10px 20px 0px 5px;">
					<form enctype="multipart/form-data" action="<%=request.getContextPath()%>/sup/goods/excelExport" method="post">
						<button type="submit" class="btn btn-primary float-sm-right" id="formExportBtn">엑셀 샘플 다운로드</button>
					</form>
			  </div>
			  
			  <div class="info-box bg-info">
	              <div class="info-box-content">
	                <span class="info-box-text">*위 버튼을 클릭하여 샘플 파일을 다운받아 해당 포맷에 작성하시기 바랍니다.</span>
	                <span class="info-box-text">*엑셀표에서 첫번째 행은 제외됩니다.</span>
	                <span class="info-box-text">*확장자를 .xslx로 변경하여 업로드 시 에러가 발생할 수 있습니다. 이 경우, 확장자를 .xls로 저장하여 재시도 해보시기 바랍니다.</span>
	                <span class="info-box-text">*물품코드는 고유 값으로 중복되지 않게 작성하시기 바랍니다. 물품코드가 중복되는 경우 업로드 시 에러가 발생할 수 있습니다.</span>
	                <span class="info-box-text">*샘플파일 내 각 필드에 대한 설명은 아래 테이블을 참고하시기 바랍니다.</span>
	              </div>
              <!-- /.info-box-content -->
            	</div>
            
              <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="example1_length"><label>Show <select name="example1_length" aria-controls="example1" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-12 col-md-6"><div id="example1_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                <thead>
                <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 325.399px;">Rendering engine</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 412.413px;">Browser</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 368.49px;">Platform(s)</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 280.781px;">Engine version</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 204.74px;">CSS grade</th></tr>
                </thead>
                <tbody>
                <tr role="row" class="odd">
                  <td class="sorting_1">Gecko</td>
                  <td>Firefox 1.0</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td>1.7</td>
                  <td>A</td>
                </tr><tr role="row" class="even">
                  <td class="sorting_1">Gecko</td>
                  <td>Firefox 1.5</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td>1.8</td>
                  <td>A</td>
                </tr><tr role="row" class="odd">
                  <td class="sorting_1">Gecko</td>
                  <td>Firefox 2.0</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td>1.8</td>
                  <td>A</td>
                </tr><tr role="row" class="even">
                  <td class="sorting_1">Gecko</td>
                  <td>Firefox 3.0</td>
                  <td>Win 2k+ / OSX.3+</td>
                  <td>1.9</td>
                  <td>A</td>
                </tr><tr role="row" class="odd">
                  <td class="sorting_1">Gecko</td>
                  <td>Camino 1.0</td>
                  <td>OSX.2+</td>
                  <td>1.8</td>
                  <td>A</td>
                </tr><tr role="row" class="even">
                  <td class="sorting_1">Gecko</td>
                  <td>Camino 1.5</td>
                  <td>OSX.3+</td>
                  <td>1.8</td>
                  <td>A</td>
                </tr><tr role="row" class="odd">
                  <td class="sorting_1">Gecko</td>
                  <td>Netscape 7.2</td>
                  <td>Win 95+ / Mac OS 8.6-9.2</td>
                  <td>1.7</td>
                  <td>A</td>
                </tr><tr role="row" class="even">
                  <td class="sorting_1">Gecko</td>
                  <td>Netscape Browser 8</td>
                  <td>Win 98SE+</td>
                  <td>1.7</td>
                  <td>A</td>
                </tr><tr role="row" class="odd">
                  <td class="sorting_1">Gecko</td>
                  <td>Netscape Navigator 9</td>
                  <td>Win 98+ / OSX.2+</td>
                  <td>1.8</td>
                  <td>A</td>
                </tr><tr role="row" class="even">
                  <td class="sorting_1">Gecko</td>
                  <td>Mozilla 1.0</td>
                  <td>Win 95+ / OSX.1+</td>
                  <td>1</td>
                  <td>A</td>
                </tr></tbody>
                <tfoot>
                <tr><th rowspan="1" colspan="1">Rendering engine</th><th rowspan="1" colspan="1">Browser</th><th rowspan="1" colspan="1">Platform(s)</th><th rowspan="1" colspan="1">Engine version</th><th rowspan="1" colspan="1">CSS grade</th></tr>
                </tfoot>
              </table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
            </div>
            <!-- /.card-body -->
          </div>
<script type="text/javascript">
	function call(){
		alert(this.value)
	}
</script>
</body>
</html>