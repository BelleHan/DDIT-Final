<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<style>
footer{
	width: 1280px;
	margin: auto;
}
.card-title-content {
	float: left;
	font-size: 0.8em;
	position: absolute;
	top: 50%;
}

.card-title-content-detail {
	float: left;
}

.custom-select {
	height: calc(1.75rem + 2px);
}

.table {
	font-size: 0.9em;
}

select {
	font-size: 0.8em;
}

div.card-header {
	padding: 0;
}

div.card-body {
	padding: 0em;
	margin-bottom: 0em;
}

thead th, td {
	text-align: center;
	color: black;
}

thead :nth-last-child(1) {
	text-align: left;
}

tbody :nth-last-child(1) {
	text-align: left;
}

div label, div span {
	margin-bottom: 0px;
}

.page-link {
	height: 2.5em;
}

div.card-title-content {
	padding: 0px;
}
div.card-header-div{
	float: left;
}
div.card-body{
	display : none;
}
</style>
<footer>
		<!-- ./wrapper -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12" style="width: 10px;">
						<div class="card collepes-card"><!-- collapsed-card -->
							<div class="card-header">
								<div class="card-header-div pagenation">
									<span class="btn btn-block btn-xs" style="width: 100px; display: inline;">[알림 메시지]</span>
									<button type="button" class="btn btn-outline-primary btn-xs">
										<i class="far fa-trash-alt">  remove</i>
									</button>
									<button type="button" class="btn btn-default btn-xs paginate_button page-item prev">
										<i class="fas fa-reply"></i>
									</button>
									<button type="button" class="btn btn-default btn-xs paginate_button page-item next">
										<i class="fas fa-share"></i>
									</button>
									<button type="button" class="btn btn-outline-primary btn-xs">
										<i class="fas fa-sync-alt">   refresh</i>
									</button>
								</div>
								<div class="card-header-div card-tools col-sm-1" style="text-align: right;">
									<button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
										<i class="fas fa-plus" style="color: black;"></i>
									</button>
								</div>
							</div>
							<!--/.card-header-->
							<!--card-body-->
							<div class="card-body">
								<div id="wrapper">
									<div class="row col-sm-12">
										<table id="alarm"
											class="table table-bordered table-hover dataTable"
											role="grid" aria-describedby="example2_info">
											<thead role="1">
												<tr role="row">
													<th style="padding: 0.1em; width: 0.5em;"><input
														type="checkbox" id="checkboxPrimary1" check=""></th>
													<th style="padding: 0.1em; width: 4em;">시간</th>
													<th style="padding: 0.1em; width: 4em;">구분</th>
													<th style="padding: 0.1em; width: 17em;">알람메시지</th>
												</tr>
											</thead>
											<tbody role="1">
												<tr role="row" class="odd">
													<td style="padding: 0.1em;"><input type="checkbox"
														id="checkboxPrimary2" check=""></td>
													<td style="padding: 0.1em;">{time}</td>
													<td style="padding: 0.1em;">물류</td>
													<td style="padding: 0.1em;">{name}에서 {kind} 신청</td>
												</tr>
												<tr role="row" class="even">
													<td style="padding: 0.1em;"><input type="checkbox"
														id="checkboxPrimary2" check=""></td>
													<td style="padding: 0.1em;">{time}</td>
													<td style="padding: 0.1em;">가맹</td>
													<td style="padding: 0.1em;">{name}에서 {kind} 신청</td>
												</tr>
												<tr role="row" class="odd">
													<td style="padding: 0.1em;"><input type="checkbox"
														id="checkboxPrimary2" check=""></td>
													<td style="padding: 0.1em;">{time}</td>
													<td style="padding: 0.1em;">공급</td>
													<td style="padding: 0.1em;">{su_name}에서 {logis_name}으로
														배송시작</td>
												</tr>
												<tr role="row" class="even">
													<td style="padding: 0.1em;"><input type="checkbox"
														id="checkboxPrimary2" check=""></td>
													<td style="padding: 0.1em;">가맹</td>
													<td style="padding: 0.1em;"></td>
													<td style="padding: 0.1em;">{name}에서 {kind} 신청</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="row">
										<div class="col-sm-12 col-md-7"></div>
									</div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
			</div>
		</section>
	</footer>