<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>연습하는 곳</title>
	<!-- jQuery -->
	<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>


	<!-- Font Awesome -->
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
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	<!-- Theme style -->
	<link rel="stylesheet"	href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.1/xlsx.full.min.js"></script>
	<!-- toast ui Grid -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/tui-grid/dist/tui-grid.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/tui-date-picker/dist/tui-date-picker.min.css" />
	
	<!-- toast ui Grid -->
	<script src="<%=request.getContextPath()%>/resources/tui-time-picker/dist/tui-time-picker.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/tui-date-picker/dist/tui-date-picker.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/tui-grid/dist/tui-grid.js"></script>
	
	
	
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to to the body tag
to get the desired effect
|---------------------------------------------------------|
|LAYOUT OPTIONS | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body>
	<!--이 안에서 작업하세용-->



   <div id="grid" style="max-height: 30rem;"></div>





   <script>
   var Grid = tui.Grid;
   var options = {
     el: document.getElementById('grid'),
     bodyHeight: 300,
     pageOptions: {
       useClient: true,
       type: 'scroll',
       perPage: 10
     },
     columns: [
     {
       header: 'ID',
       name: 'id',
       renderer: {
         styles: {
           fontWeight: 'bold',
           color: (props) => props.value.length > 3 ? '#ccc' : '#222'
         },
      },
      copyOptions: {
         customValue: (value, rowAttrs, column) => `${value}`
         }
     },
     {
       header: 'CITY',
       name: 'city',
       editor: 'text',
       copyOptions: {
         customValue: (value, rowAttrs, column) => `${value}`
         }
      },
      {
         header: 'COUNTRY',
         name: 'country',
         editor: 'text'
     },
      {
         header: 'PRICE',
         name: 'price',
         editor: {
         type: 'text',
         copyOptions: {
            customValue: (value, rowAttrs, column) => `${value}`
         }
       }
     },
     {		
    	header: 'calender',
   	    name: 'datepicker default',
   	    editor: 'datePicker'
   	 },
     ],
     includeHiddenColumns: true,
     onlySelected: true,
     fileName: 'myExport',
     contextMenu: ({ rowKey, columnName }) => (
       [
         [
           {
             name: 'export',
             label: 'Export',
             subMenu: [
               // 기본 설정 옵션을 이용한 내보내기
               {
                 name: 'default',
                 label: 'Default',
                 subMenu: [
                   {
                     name: 'excelExport',
                     label: 'Excel export',
                     action: () => {
                       grid.export('xlsx');
                     }
                   },
                   {
                     name: 'csvExport',
                     label: 'CSV export',
                     action: () => {
                       // 옵션을 전달하지 않으면 초기 설정 옵션으로 내보내기가 수행된다.
                       grid.export('csv');
                     }
                   },
                 ]
               },
               // 지정한 다른 옵션을 이용한 내보내기 추가
               {
                 name: 'withoutHeader',
                 label: 'Without header',
                 subMenu: [
                   {
                     name: 'excelExport',
                     label: 'Excel export',
                     action: () => {
                       grid.export('xlsx', { includeHeader: false });
                     }
                   },
                   {
                     name: 'csvExport',
                     label: 'CSV export',
                     action: () => {
                       // 옵션을 전달해 초기 옵션이 아닌 다른 옵션으로 내보내기를 수행한다.
                       // 만약 옵션을 모달을 통해 전달받아 내보내기를 수행하길 원한다면 이곳에 해당 기능을 수행하는 코드를 작성하면 된다.
                       grid.export('csv', { includeHeader: false });
                     }
                   },
                 ]
               },
             ],
           }
         ],
       ]
     ),
     
     
     
     data: [
     {
       id: '10012',
       city: 'Seoul',
       country: 'South Korea',
       price : 12
   
     },
     {
       id: '10013',
       city: 'Tokyo',
       country: 'Japan'    ,
       price : 12
     },
     {
       id: '10014',
       city: 'London',
       country: 'England',
       price : 12
     },
     {
       id: '10015',
       city: 'Ljubljana',
       country: 'Slovenia',
       price : 12
     },
     {
       id: '10016',
       city: 'Reykjavik',
       country: 'Iceland'
     },
     {
       id: '10012',
       city: 'Seoul',
       country: 'South Korea'
     },
     {
       id: '10012',
       city: 'Seoul',
       country: 'South Korea'
     },
     {
       id: '10013',
       city: 'Tokyo',
       country: 'Japan'    
     },
     {
       id: '10014',
       city: 'London',
       country: 'England'
     },
     {
       id: '10015',
       city: 'Ljubljana',
       country: 'Slovenia'
     },
     {
       id: '10016',
       city: 'Reykjavik',
       country: 'Iceland'
     },
     {
       id: '10012',
       city: 'Seoul',
       country: 'South Korea'
     },
     ]
   };
   var grid = new Grid(options);
   Grid.applyTheme('clean');
   </script>



	<!--바디테스트 영역 끝-->
</body>

<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js -->
<script src="<%=request.getContextPath()%>/resources/js/common.js" ></script>
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.js" ></script>
<!-- summernote -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/demo.js"></script>
<!-- poppers -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/popper/popper.min.js"></script>
<!-- Select2 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/moment/moment.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/inputmask/jquery.inputmask.bundle.min.js"></script>
<!-- date-range-picker -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
</html>






<!-- <div class="row">  -->
<!--     <div> -->
<!--         <table id="jqGrid"></table> -->
<!--         <div id="jqGridPager"></div> -->
<!--     </div> -->
<!-- </div> -->


<!-- <div> -->
<!--  <select id="selectId"> -->
<!--   <option value="">All</option> -->
<!--   <option value="A">A</option> -->
<!--   <option value="B">B</option> -->
<!--   <option value="C">C</option> -->
<!--   <option value="D">D</option>  -->
<!-- </select>     -->
<!--  <span><a href="#" onclick="javascript:search();">Search</a></span> -->
<!-- </div> -->





<script>
// $(document).ready(function() {
    
//     var cnames = ['아이디','이름','전화번호','주소','기타','성별코드'];
 
//     $("#jqGrid").jqGrid({
        
//         url: "jqgridStartMain.do",
//         datatype: "local",
//         colNames: cnames,
//         colModel:[
                  
//                   {name:'seq',index:'seq', width:55, key:true, align:"center"},
//                   {name:'name',index:'name', width:100, align:"center"},
//                   {name:'phone',index:'phone', width:100},
//                   {name:'address',index:'address', width:100},
//                   {name:'etcc',index:'etcc', width:100},
//                   {name:'gender',index:'gender', width:100}
                  
//                   ],
                  
//         height: 480,
//         rowNum: 10,
//         rowList: [10,20,30],
//         pager: '#jqGridPager',
//         rownumbers  : true,                     
//         ondblClickRow : function(rowId, iRow, iCol, e) {
 
//             if(iCol == 1) {
//                 alert(rowId+" 째줄 입니다.");
//             }
//         },
        
//         viewrecords : true,
//         caption:"JQGRID TABLE"
//         });
//     });

// function search() {
//     var jsonObj = {};
    
//     if($("#selectId").val() != "C") {
//         jsonObj.serviceImplYn = $("#selectId").val();
//     }
    
//     alert(JSON.stringify(jsonObj));
    
//     $("#jqGrid").setGridParam({
//         datatype : "json",
//         postData : {"param" : JSON.stringify(jsonObj)},
//         loadComplete : function(data) {
            
//         },
        
//         gridComplete : function() {
            
//         }
//     }).trigger("reloadGrid");
// }

// $("#jqGrid").jqGrid('navButtonAdd', {
//     id:'pager_excel', 
//     caption:'',
//     title:'엑셀 다운',
//     onClickButton : function(e) {
//          exportExcel ( $("#jqGrid"), "test.xls" );
//     }, buttonicon:'ui-icon-arrowthickstop-1-s'
// });  
</script>
