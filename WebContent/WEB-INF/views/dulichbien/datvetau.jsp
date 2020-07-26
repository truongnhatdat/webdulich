<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap Example</title>
   <base href="${pageContext.servletContext.contextPath}/">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link href="<c:url value="/resources/fontawesome-free-5.11.1-web/css/all.css"/>" rel="stylesheet" type="text/css">
  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
  <style type="text/css">
  body{
	  margin:0;
	  padding:0;
	  background-color:#FFF;
  }
  .dropdown{
   position: relative;
   display: inline-block;
	}
	.dropdown-content{
   display: none;
   position: absolute;
   z-index: 1;
	}
	.dropdown:hover .dropdown-content{
  		 display: block;
	}
	.dropdown-content a:hover{
		background:#098AB0;
		 color:#F90;
	}
	nav{
		background-color:#05A;
	}
	.nav-link{
		color:#FFF;
	}
	.drop-menu a:hover{
		color:#FF8306;
	}
	.navbar-brand{
		padding-right:50px;
	}
	.tieude{
		background-color:#E0E0E0;
		margin-top:80px;
		border-radius:10px;
	}
	.intro1{
		padding-top:25px;
	}
	.intro1 a{
		text-decoration:none;
	}
	.menu-mucluc a{
		text-decoration:none;
		color:black;
	}
	.menu-mucluc a:hover{
		color:#158AFF;
	}
	.media-body a{
		text-decoration:none;
		color:black;
	}
	.media-body a:hover{
		color:#158AFF;
	}
	.chitietchuyen i{
		font-weight:bold;
		color:#2492FF;
		margin-right:20px;
	}
	</style>
     <script>
		$(document).ready(function(){
  		$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
 </head>
<body>
	 <nav class="navbar navbar-expand-lg fixed-top">
	  <div class="container-fluid">
  <a class="navbar-brand"><img src="http://phuquytravel.com.vn/pic/banner/banne_636319247691439271.png" style="width:200px;"></a>
	  <button class="navbar-toggler navbar-light bg-white" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon text-white"></span>
 	 </button>
 	 <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto drop-menu">
      <li class="nav-item">
        <a class="nav-link" href="dulichbien/trangchu.htm"><i class="fas fa-home"></i> TRANG CHỦ</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="dulichbien/gioithieu.htm"><i class="fas fa-info-circle"></i> GIỚI THIỆU</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="dulichbien/tourphuquy.htm"><i class="fas fa-briefcase"></i> TOUR DU LỊCH <i class="fas fa-caret-down"></i></a>
        <div class="dropdown-content bg-warning">
        	<c:forEach var="tdl" items="${tdlich}">
        		<a class="dropdown-item" href="dulichbien/${tdl.tenTour}.htm?load">${tdl.tenTour}</a>
        	</c:forEach>
        </div>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link" href="dulichbien/dichvu.htm"><i class="fab fa-servicestack"></i> DỊCH VỤ <i class="fas fa-caret-down"></i></a>
         <div class="dropdown-content bg-warning">
          	<c:forEach var="dvdl" items="${dvdl}">
         	   <a class="dropdown-item" href="dulichbien/${dvdl.tenDV}.htm?Loaddv">${dvdl.tenDV}</a>
         	</c:forEach>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="dulichbien/thongtin.htm"><i class="fas fa-registered"></i> THÔNG TIN</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="dulichbien/lienhe.htm"><i class="fas fa-phone-square-alt"></i> LIÊN HỆ</a>
      </li>
    </ul>
      <a href="dulichbien/giohang.htm" class="btn btn-outline-warning" data-toggle="tooltip" title="Xem giỏ hàng của bạn"><i class="fas fa-shopping-cart"></i></a>
      <button class="btn btn-outline-warning ml-2" data-toggle="modal" data-target="#myModal">Login</button>
  </div>
 </div>
 </nav>
 <!-- >Phan model -->
 <div class="modal fade" id="myModal">
        <form action="dulichbien/quantri.htm" method="POST">
		<div class="modal-dialog modal-sm">
         <div class="modal-content">
        	<!-- Modal Header -->
        	<div class="modal-header">
          		<h6 class="modal-title">ĐĂNG NHẬP VÀO TRANG QUẢN TRỊ</h6>
        	</div>
        	<!-- Modal body -->
        	<div class="modal-body">
         		 <i class="fas fa-user"></i> <input type="text" name="account" placeholder="Tài khoản"><br>
          		 <i class="fas fa-lock"></i> <input type="password" name="password" placeholder="Mật khẩu">
        	</div>
        
        	<!-- Modal footer -->
        	<div class="modal-footer">
        		<button class="btn btn-danger">Login</button>
        	</div>
      </div>
      </div>
      </form>
    </div>
    <div class="container tieude text-info">
		<div class="row pt-4 pl-3">
    	<div><p><a href="dulichbien/trangchu.htm">Trang chủ</a> <i class="fas fa-angle-right"></i> ${dv.tenDV}</p></div>
   		 </div>
	</div>
    
    <!-- phan container -->
	<div class="container mt-2 chitietchuyen">
    	<div class="row">
        	<div class="col-md-8 col-sm-8 col-xs-12">
                 <h3>${dv.tenDV}</h3>
                    <br>
                  
                    <br>
                   	 <img class="card-img-bottom img-thumbnail" src="resources/hinh/${dv.hinhanh}"  style="width:100%">
                    <br>
                    <br>
            	<form:form action="dulichbien/giohang.htm" modelAttribute="ctdv">
            		<label>Tên Dịch Vụ</label>
                 	<input class="form-control" name="tendv" value="${dv.tenDV}" readonly="readonly"><br>
                	<label><i class="fas fa-users"></i> Số lượng </label><br>
                    <form:input type="number" path="soluong" placeholder="số lượng"/>
                    <form:errors path="Soluong" style="color: red;font-style: italic;"></form:errors>
                    <br>
                    <br>
                    <label><i class="fas fa-ticket-alt"></i> Chọn loại</label><br>
                    <form:select path="loai">
                    	<option value="250.000">Vé 250.000đ</option>
                        <option value="350.000">Vé 350.000</option>
                    </form:select>
                    <br>
                    <label class="mt-4"><i class="fas fa-calendar-alt"></i> Chọn ngày nhận và ngày về</label><br>
                    <p>Ngày đi: <form:input type="date" path="ngaynhan"/></p>
                    <form:errors path="Ngaynhan" style="color: red;font-style: italic;"></form:errors>
                    <p>Ngày về: <form:input type="date" path="ngaytra"/></p>
                    <form:errors path="Ngaytra" style="color: red;font-style: italic;"></form:errors>
                    <button class="btn btn-info btn-outline-light border-dark" style="width:150px;">ĐẶT DỊCH VỤ</button>
                </form:form>
                <br>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
            	<h6>Dịch vụ liên quan</h6>
            	<c:forEach var="dvdl" items="${dvdl}">
            		<div class="media mt-4">
    					<a href="dulichbien/${dvdl.tenDV}.htm?Loaddv"><img src="resources/hinh/${dvdl.hinhanh}" class="align-self-start mr-3" style="width:100px"></a>
    					<div class="media-body">
      					<a href="dulichbien/${dvdl.tenDV}.htm?Loaddv"><h5>${dvdl.tenDV}</h5></a>
                    
    					</div>
           	    	</div>
            	</c:forEach>
               
            </div>
       </div>
    </div>
    </div>
    
    <div class="text-center col-xs-12 mt-5">
    	${dv.noidung}
    </div>
    
    <!-- phan footer -->
	<div class="container-fluid" style="background-color:#F5F5F5">
   	 <div class="row mt-5">
        <div class="col-md-4 col-sm-4 col-xs-12 mt-4">
            <h5><strong>LIÊN HỆ</strong></h5>
               <div class="media">
                <strong class="mr-3"><i class="fas fa-map-marker-alt text-danger"></i> Địa chỉ:</strong>
                 <p class="media-body mt-0">112/58 Nguyễn Thị Minh Khai-Thôn Thương Châu-Xã Ngũ Phụng-Huyện Phú Quý</p>
                </div>
                 <div class="media">
                	<strong class="mr-3"><i class="fas fa-phone text-success"></i> Điện thoại:</strong>
                    <p class="media-body mt-0">0357137815 - 0977643634</p>
                </div>
                <div class="media">
                	<strong class="mr-3"><i class="fas fa-envelope-square text-danger"></i> Email:</strong>
                 <p class="media-body mt-0"><a href="#" style="text-decoration:none">dulichsinhthaibien@gmail.com</a></p>
              </div>
          </div>
          <!-- phan thong tin-->
           <div class="col-md-4 col-sm-4 col-xs-12 mt-4">
            <h5><strong>THÔNG TIN</strong></h5>
            <div class="menu-mucluc">
            	<p><a href="dulichbien/trangchu.htm">Trang chủ</a></p>
             	<p><a href="dulichbien/gioithieu.htm">Giới thiệu</a></p>
             	<p><a href="dulichbien/tourphuquy.htm">Tour Du lịch</a></p>
             	<p><a href="dulichbien/dichvu.htm">Dịch Vụ</a></p>
             	<p><a href="dulichbien/thongtin.htm">Thông Tin</a></p>
             	<p><a href="dulichbien/lienhe.htm">Liên Hệ</a></p>
            </div>
          </div>
          <!-- lien he facebook-->
          <div class="col-md-4 col-sm-4 col-xs-12 mt-4">
          	<h5><strong>FACEBOOK</strong></h5>
            <div>
            	<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fdulichbienphuquy.vn%2F%3F__tn__%3D%252Cd%252CP-R%26eid%3DARAJir1lgTPoQmeoM0NZHh6G7vq2I4PPDYxDwIonypP09srd1ELtgUOr8zCzK3JOBTH88rTdfEVkXZFq&tabs=timeline&width=340&height=292&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=false&appId" width="340" height="292" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
            </div>
          </div>
     </div>
     <div class="row mt-4">
     	<div class="col-md-12 col-sm-12 col-xs-12">
        	<div class="text-center">
            	<a href="#" data-toggle="tooltip" title="Liên hệ qua zalo"><img src="<c:url value="/resources/hinh/zalo.png"/>" style="width:50px; height:50px;"></a>
                <a href="#" data-toggle="tooltip" title="Liên kết google+"><img src="<c:url value="/resources/hinh/Google-plus-icon.png"/>" style="width:50px; height:50px;"></a>
                <a href="#" data-toggle="tooltip" title="Xem theo dõi trên youtube"><img src="<c:url value="/resources/hinh/tube.png"/>" style="width:50px; height:50px;"></a>
            </div>
        </div>
     </div>
	</div>
	<footer class="mt-5">
		<div class="text-center">
    		<p>Bản quyền thuộc về <strong style="color:#2D96FF"> CÔNG TY TNHH DU LỊCH BIỂN PHÚ QUÝ</strong></p>
       		 <p>Thiết kế bởi <a href="#" style="text-decoration:none;">truongnhatdat.vn</a></p>
   		 </div>
	</footer>
 </body>
</html>
