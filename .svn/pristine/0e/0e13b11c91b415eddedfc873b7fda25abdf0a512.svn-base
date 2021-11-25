<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="addorder-list-template" >
{{#each .}}
<div class="addOrder" >
	<div class="user-block">
		<img src="<%=request.getContextPath()%>/member/getPictureById/{{replyer}}" class="img-circle img-bordered-sm"/>
    </div>
	
 	<div class="timeline-item" >
  		<span class="time">
    		<i class="fa fa-clock"></i>{{prettifyDate regdate}}
	 		<a class="btn btn-primary btn-xs {{rno}}-a" id="modifyReplyBtn" data-rno={{rno}}
				onclick="replyModifyModal_go('{{rno}}');"				
				style="display:{{VisibleByLoginCheck replyer}};"
	    		data-replyer={{replyer}} data-toggle="modal" data-target="#modifyModal">Modify</a>
  		</span>
	
  		<h3 class="timeline-header"><strong style="display:none;">{{rno}}</strong>{{replyer}}</h3>
  		<div class="timeline-body" id="{{rno}}-replytext">{{replytext}} </div>
	</div>
</div>
{{/each}}
</script>
<script>
function addOrder(){
	
	var hq_goods_code	=	$(this).attr("hq_goods_code");	//본사물품코드
	var hq_goods_name	=	$(this).attr("hq_goods_name");	//본사물품명
	var sup_goods_attr1	=	$(this).attr("sup_goods_attr1");//물품용량
	var sup_goods_unit	=	$(this).attr("sup_goods_unit");	//용량단위
	var sup_goods_img	=	$(this).attr("sup_goods_img");	//이미지
	var generalorder	=	$('#generalorder').prop("checked");//일반발주
	var speedorder		=	$('#speedorder').prop("checked");	//총알발주
	var fran_order_quan	=	$('.fran_order_quan').val();	//발주수량
	var goods_price		=	$(this).attr("sup_goods_price");//물품단가
	var fran_order_price=	$('.fran_order_price').val();	//금액(수량*단가)
	
	
	
}

</script>