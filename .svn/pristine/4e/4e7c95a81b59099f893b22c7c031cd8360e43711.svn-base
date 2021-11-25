/**
 * http://usejsdoc.org/
 */
function HqGoodsPicture(targetObj, fileName,contextPath){ //(대상, 이미지파일명)
	console.log('1234');
	targetObj.style.backgroundImage="url('"+contextPath+"/sup/goods/getPicture.do?sup_goods_img="+fileName+"')";
	targetObj.style.backgroundPosition="center";
	targetObj.style.backgroundRepeat="no-repeat";
	targetObj.style.backgroundSize="cover";
	targetObj.style.width="50px";
	targetObj.style.height="95px";
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}
function dragOver(ev) {
  ev.preventDefault();
}
function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
}

//페이지네이션(물품구매)
//function list_go_buyGoods(page, url) {
//	console.log('1234');
//	if (!url) url="list.do";
//	
//	var jobForm=$('#jobForm');
//	
//	if(!page) page = 1;
//	
//	jobForm.find("[name='page']").val(page);
//	jobForm.find("[name='keyword1']").val($('div.input[name="keyword1"]').val());
//	jobForm.find("[name='keyword2']").val($('div.input[name="keyword2"]').val());
//	
//	jobForm.attr({
//		action:url,
//		method:'get'
//	}).submit();
//}


//물류센터 검색
function list_go_buyGoods(page, url) {
   if (!url) url="buy.do";
   
   var jobForm=$('#jobForm');
   
   if(!page) page = 1;
   
   jobForm.find("[name='page']").val(page);
   jobForm.find("[name='keyword']").val($('input[name="keyword"]').val());
   jobForm.find("[name='laca']").val($('select[name="laca"]').val());
   jobForm.find("[name='smca']").val($('select[name="smca"]').val());
   console.log(jobForm.find("[name='keyword']").val());
   
   jobForm.attr({
      action:url,
      method:'get'
   }).submit();
}

function list_go_orderGoods(url) {
   if (!url) url="list.do";
   
   var jobForm=$('#jobForm');
   
   jobForm.find("[name='laca']").val($('select[name="laca"]').val());
   jobForm.find("[name='smca']").val($('select[name="smca"]').val());

   jobForm.attr({
      action:url,
      method:'get'
   }).submit();
}


function checkOnlyOne(element) {
     
     const checkboxes 
         = document.getElementsByName("order");
     
     checkboxes.forEach((cb) => {
       cb.checked = false;
     })
     
     element.checked = true;
   }

