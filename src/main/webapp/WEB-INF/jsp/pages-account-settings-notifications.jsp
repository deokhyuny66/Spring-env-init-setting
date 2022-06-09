<%@page import="com.freeze.dao.BoardDaoImpl"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.freeze.dao.BoardDao"%>
<%@ page import="com.freeze.model.BoardModel" %>
<%@ page import="com.freeze.service.BoardService" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Map.Entry" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//KR" "http://www.w3.org/TR/html4/loose.dtd">
  <head>
    <meta http-equiv=“Content-Type” content=“text/html; charset=UTF-8”>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1, maximum-scale=1, user-scalable=no"/>

    <title>Tables - Basic Tables | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon/favicon.ico" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap.min.css" />
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />
<link rel="stylesheet" href="css/main.css">
    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="vendor/css/core1.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="css/demo.css" />
    <link rel="stylesheet" href="css/modal3.css" />
    <link rel="stylesheet" href="css/table-config.css" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap.min.js"></script>
    <!-- Helpers -->
    <script src="vendor/js/helpers.js"></script>
    <script src="js/config.js"></script>

  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                >
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"
                    ></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"
                    ></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"
                    ></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"
                    ></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                      <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                        >
                          <use fill="#696cff" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bolder ms-2">Sneat</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">Pages</span>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">Account Settings</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="pages-account-settings-account" class="menu-link">
                    <div data-i18n="Account">Register</div>
                  </a>
                </li>
	            <li class="menu-item active">
	              <a href="pages-account-settings-notifications" class="menu-link">
	                <i class="menu-icon tf-icons bx bx-table"></i>
	                <div data-i18n="List">List</div>
	              </a>
	            </li>
              </ul>
            </li>

        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Content wrapper -->
          <div class="content-wrapper">
          <!-- Content -->
 
            <div class="container-xxl flex-grow-1 container-p-y">

			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span> List</h4>
             <ul class="nav nav-pills flex-column flex-md-row mb-3">
            	<li class="nav-item">
              		<a class="nav-link" href="pages-account-settings-account"><i class="bx bx-user me-1"></i> Register</a>
            	</li>
            	<li class="nav-item">
              		<a class="nav-link active" href="pages-account-settings-notifications"><i class="bx bx-bell me-1"></i> List</a>
            	</li>
         	 </ul>
			
             <!-- Bordered Table -->
              <div class="card">
                <h5 class="card-header">Bordered Table</h5>
   
                <div class="card-body">
                  <div id="x-scroll" class="table-responsive text-nowrap">
                    <table id="tableForm" class="table table-bordered table-hover" style="width:100%;cursor:pointer;">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>메이커</th>
                          <th>모델명</th>
                          <th>용량(HP)</th>
                          <th>보유수량(EA)</th>
                          <th>사용기간</th>
                          <th>상세내용</th>
                          <th>사진</th>
                          <th>금액</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${boardList}" var="dto">
                      	<c:set var="i" value="${i+1}" />
	                      <tr id="item${i}" onClick="reply_click(this.id,'${dto.id}')">
	                      		<th scope="row">${i}</th>
		                        <td>${dto.maker}</td>
		                        <td>${dto.model}</td>
		                        <td>${dto.volumn}</td>
		                        <td>${dto.ea}</td>
		                        <td>${dto.use_date}</td>
		                        <td>${dto.detail_contents}</td>
		                        <td>${dto.image}</td>
		                        <td>${dto.price}</td>
	                      </tr>
					  </c:forEach>  
                       <%-- <% for (j=0;j<rs_dao_list.size();j++) {%>
                        <tr id="<%= j+1 %>" onClick="reply_click(this.id,'<%=rs_dao_list.get(j).get("ID")%>')">
	                        <th scope="row"><%= j+1 %></th>
	                        <td><%=rs_dao_list.get(j).get("MAKER")%></td>
	                        <td><%=rs_dao_list.get(j).get("MODEL")%></td>
	                        <td><%=rs_dao_list.get(j).get("VOLUMN")%></td>
	                        <td><%=rs_dao_list.get(j).get("EA")%></td>
	                        <td><%=rs_dao_list.get(j).get("USE_DATE")%></td>
	                        <td><%=rs_dao_list.get(j).get("DETAIL_CONTENTS")%></td>
	                        <td><%=rs_dao_list.get(j).get("IMAGE")%></td>
	                        <td><%=rs_dao_list.get(j).get("PRICE")%></td>
                        </tr>
                      <%}%> --%>
                      </tbody>
                      <tfoot>
	                      <tr>
	                          <th>#</th>
	                          <th>메이커</th>
	                          <th>모델명</th>
	                          <th>용량(HP)</th>
	                          <th>보유수량(EA)</th>
	                          <th>사용기간</th>
	                          <th>상세내용</th>
	                          <th>사진</th>
	                          <th>금액</th>
	                        </tr>
                      </tfoot>		  
                    </table>     
                  </div>
                </div>
              </div>
              <!--/ Bordered Table -->

          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>
      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
      
      <div id="modal" class="modal-overlay">
	        <div class="modal-window">
	            <div class="close-area">X</div>
	            
	            <form id="contentForm" action="./eventAction.jsp" method="POST">
		            <div class="content"></div>
	            </form>
 	        </div> 
	    </div>
    </div>
    <!-- / Layout wrapper -->

<script>
	$(document).ready(function() {
	    $('.card .card-body #tableForm').DataTable({
	    	"scrollX": true
	    });
	});
	let item_click;
	const modal = document.getElementById('modal');
	const closeBtn = modal.querySelector('.close-area');
		  
	function reply_click(tb_clickId, clickeIdNo){
		item_click = document.getElementById(tb_clickId);
		item_click.addEventListener('click', function(){
			modalOn();
			var messageDTO={
				click_ItemNm:clickeIdNo
			};
			$.ajax({
				type: 'POST',
				url: 'itemAjax',
				data: messageDTO,
				success: function(res){
					$('#modal #contentForm .content *').remove();
					let json = JSON.stringify(res);
					json = json.replace(/[\[\]\;]/gi,'');
					json = JSON.parse(json);
					let keys = Object.keys(json);
					let $temp;
					
				    for (let i=0; i<keys.length; i++) {
				    	let key = keys[i];
				    	if(key != 'id'){
			    			$temp = $('#modal #contentForm .content').append('<label for="defaultFormControlInput" style="color:#566a7f;" class="form-label">'+key+'</label><input type="text" class="form-control" id="defaultFormControlInput"' 
				    			+ 'name="selitemParam'+i+'" value="'+json[key]+'" aria-describedby="defaultFormControlHelp" ><input type="hidden" name="clickedId" value="'+clickeIdNo+'">' );
				    	}
				    }	
				    $temp = $temp.append('<div style="text-align:center;position:relative;left:90px;">'
						    + '<br/><input type="submit" class="btn btn-info" value="수정" name="update">&nbsp;&nbsp;<input type="submit" class="btn btn-dark" value="삭제" name="delete"></div>');
				},
				error: function(){
					alert("False");
				}
			});
		});
	}
	
	function modalOn() {
		modal.style.display = 'flex';
		$('.paginate_button').css('backdrop-filter','blur(1.5px)');
	}
	
	function isModalOn() {
		return modal.style.display === 'flex';
	}
	
	function modalOff() {
	    modal.style.display = 'none';
	}
	
	closeBtn.addEventListener('click', function() {
	    modalOff();
	});

</script>
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="vendor/libs/popper/popper.js"></script>
    <script src="vendor/js/menu.js"></script>
    <script src="js/main.js"></script>
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
