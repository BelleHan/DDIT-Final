<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
.content-header{
   padding : 8px 8px;
}
.navbar{
   width: 1280px;
   padding: 0.2em;
   margin:0 auto;
}
.navbar-nav{
   padding: 0px;
   margin:0 auto;
}
.nav-link{
   margin-right: 30px;
   padding: 0px;
}
.logout{
   color: black;
   font-size: 0.8em;
   text-decoration : underline;
   position: absolute; right: 15px; top: 45px;
}
.list_h3 {
   list-style: none;
   text-align: center;
}
.title{
   width: 1280px;
   padding: 0px;
   margin: 0px;
}
.log{
   list-style: none;
   text-align: right;
}
#main-menu > li > a {
   font-size: 1em;
   color: white;
}
.divbox{
   float:left;
}
.dropdown:hover .dropdown-menu {
   display: block;
}
</style>
<div class="content-header" style="height: 70px; width:1280px;">
        <div class="row mb-2">
          <div class="col-sm-6">
           <h3 style="font-family: fantasy; font-size: 20px; margin-left: 3px;"><span style="font-size: 45px;">FMS&nbsp;가맹점</span></h3>
          </div><!-- /.col -->
          <div class="col-sm-6" style="padding:15px;">
            <ol class="breadcrumb float-sm-right">
	            <li class="nav-item dropdown show"><a href="javascript:userClick();"> <i class="fas fa-user-circle fa-2x" style="color: black;"></i></a>
	               <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right show" id="userDiv" style="display:none;padding:10px;">
<!-- 	                  <a href="#" class="dropdown-item"> -->
	               <!-- Message Start -->
	                     <div class="media">
	                     
		                     	<div class="media-body">
						                <h3 class="dropdown-item-title">
						                 ${loginFran.fran_name}(${loginFran.fran_code})
						                </h3>
						                <p class="text-sm"><i class="fas fa-mobile-alt"></i>&nbsp;&nbsp;${loginFran.fran_tel}</p>
						                <p class="text-sm"><i class="fas fa-building"></i>&nbsp;${loginFran.fran_zip}&nbsp;${loginFran.fran_addr}&nbsp;${loginFran.fran_detail_addr}</p>
				                        <p><a href="<%=request.getContextPath() %>/fr/common/loginFormFran.do" class="text-sm">LogOut</a></p>
				              	</div>
	                       </div>
	               </div>
	               <!-- Message End -->
<!-- 	                      </a> -->
	           	 </li>
	               
	           	 <li  style="padding-top:10px; font-size:14px;"><b>${loginFran.fran_name }님</b> 환영합니다.</li>
            </ol>
               </div>
          </div><!-- /.col -->
        </div><!-- /.row -->
</div>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="background-color:#d9230f !important; height: 50px;">
	<div class="container-fluid">
		<div class="collapse navbar-collapse" id="navbarColor01">
		    <ul class="navbar-nav me-auto" id="main-menu">
				<c:if test="${menuList ne null}">
					<c:forEach items="${menuList}" var="menu">
						<c:if test="${menu.menu_code.substring(4) eq 0000}"> 
							<li class="nav-item dropdown">
								<a href="javascript:goPage('${menu.menu_url }','${menu.menu_code }');" class="nav-link">${menu.menu_name}</a>
								<ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow subMenuList" style="padding:0; margin:0;" >
									<c:forEach items="${menuList}" var="submenu">
										<c:if test="${menu.menu_code.substring(0,3) eq submenu.menu_code.substring(0,3) and submenu.menu_code.substring(4) ne 0000}">
											<li>
												<a href="javascript:goPage('${submenu.menu_url }','${submenu.menu_code }')" class="dropdown-item">${submenu.menu_name}</a>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</li>
						</c:if>
					</c:forEach>
				</c:if>
		    </ul>
		</div>
	</div>
</nav>
