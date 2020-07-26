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
 <style type="text/css">
  body{
	  margin:0;
	  padding:0;
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
	.product
	{
		width:100%;
	}
	.tieude{
		background-color:#E0E0E0;
		margin-top:80px;
		border-radius:10px;
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
         <c:forEach var="dvdl" items="${dvdlich}">
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

<!-- The Modal -->
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
<div class="container-fluid bg-info mt-5">
	<div class="row pt-4">
    	<div class="col-xs-4 col-md-2">
       	 <div style="color:white">
         	<h4>KHÁM PHÁ ĐẢO PHÚ QUÝ</h4>
            <h5>NGAY BÂY GIỜ</h5>
         </div>
            <img src="<c:url value="/resources/hinh/3.jpg"/>" class="img-thumbnail mb-3 w-100">
        </div>
        <div class="col-xs-4 col-md-8">
        	<div class="bd-example">
 			 <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
   		 <div class="carousel-inner">
    	  <div class="carousel-item active">
     	  <img src="<c:url value="/resources/hinh/chua_nui-phu-quy-du-lich-o-phu-quy.jpg"/>" class="img-thumbnail" alt="Cinque Terre">
     		 </div>
     		 <div class="carousel-item">
       		 <img src="<c:url value="/resources/hinh/dien-gio-tai-dao-phu-quy.jpg"/>" class="img-thumbnail" alt="Cinque Terre">
     		 </div>
     		 <div class="carousel-item">
      		  <img src="<c:url value="/resources/hinh/ngon-hai-dang-tour-o-dao-phu-quy.jpg"/>" class="img-thumbnail" alt="Cinque Terre">
      		</div>
             <div class="carousel-item">
      		  <img src="<c:url value="/resources/hinh/du-lich-o-dao-phu-quy.jpg"/>" class="img-thumbnail" alt="Cinque Terre">
      		</div>
             <div class="carousel-item">
      		  <img src="<c:url value="/resources/hinh/cot-co-tren-dao-phu-quy.jpg"/>" class="img-thumbnail" alt="Cinque Terre">
      		</div>
   		 </div>
    		<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    		  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
     		 <span class="sr-only">Previous</span>
   			 </a>
    		<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
   			   <span class="carousel-control-next-icon" aria-hidden="true"></span>
    		  <span class="sr-only">Next</span>
    		</a>
 		 </div>
		</div>
        </div>
        <div class="col-xs-4 col-md-2">
       		 <div style="color:white">
        	   <h4>CÙNG VỚI</h4>
               <h5>DULICHBIEN.VN</h5>
       		 </div>
       		 <img src="<c:url value="/resources/hinh/2.jpg"/>" class="img-thumbnail mb-2">
             <img src="<c:url value="/resources/hinh/15057133_1802948823313122_1956350203099348992_n.jpg"/>" class="img-thumbnail mb-2">
        </div>
    </div>
</div>

<div class="container tieude text-info">
		<div class="row pt-4 pl-3">
    	    <div><p>Trang chủ<i class="fas fa-angle-right"></i> Giỏ hàng</p></div>
   		 </div>
</div>	
	<div class="container col-xs-12">
  		<h2>Hóa đơn của bạn</h2>
  		<p>Hóa đơn này sẽ được duyệt lại khi bạn thanh toán</p> 
  		<div><strong><h4>Hóa đơn tour du lịch</h4></strong></div>           
  		<table class="table">
    		<thead>
      			<tr>
        			<th>Tên tour</th>
        			<th>Ngày đi</th>
        			<th>Ngày về</th>
        			<th>Số lượng người lớn/trẻ em</th>
        			<th>Đơn giá</th>
        			<th>Thành tiền</th>
        			<th>Hiệu chỉnh</th>
      			</tr>
    		</thead>
   		    <tbody>
   		    	<c:forEach var="ct" items="${cthd}">
      				<tr>
      						<td>${ct.tentour}</td>
        					<td><fmt:formatDate value="${ct.ngaydi}" pattern="dd/MM/yyyy" /></td>
        					<td><fmt:formatDate value="${ct.ngayve}" pattern="dd/MM/yyyy" /></td>
        					<td>${ct.songuoilon}/${ct.sotreem}</td>
        					<td><fmt:formatNumber value="${ct.dongia}" type="number"/>đ</td>
        					<td><fmt:formatNumber value="${ct.thanhtien}" type="number"/>đ</td>
        					<td>
        						<a href="dulichbien/${ct.tentour}.htm?xoatour"  method="GET"><button><i class="fas fa-trash-alt" data-toggle="tooltip" title="Xóa đơn"></i></button></a>
        						<a href="dulichbien/thanhtoan.htm"><button><i data-toggle="tooltip" title="Thanh toán đơn" class="fas fa-cart-plus"></i></button></a>
        					</td>
      				</tr>
      			</c:forEach>
    		</tbody>
  		</table>
  		<div><strong><h4>Hóa đơn dịch vụ du lịch</h4></strong></div> 
  		  		<table class="table">
    		<thead>
      			<tr>
        			<th>Tên dịch vụ</th>
        			<th>Ngày nhận</th>
        			<th>Ngày về</th>
        			<th>Số lượng</th>
        			<th>Loại</th>
        			<th>Hiệu chỉnh</th>
      			</tr>
    		</thead>
   		    <tbody>
   		    	<c:forEach var="ds" items="${dsdv}">
      				<tr>
      						<td>${ds.tendv}</td>
        					<td><fmt:formatDate value="${ds.ngaynhan}" pattern="dd/MM/yyyy" /></td>
        					<td><fmt:formatDate value="${ds.ngaytra}" pattern="dd/MM/yyyy" /></td>
        					<td>${ds.soluong}</td>
        					<td>${ds.loai}</td>
        					<td>
        						<a href="dulichbien/${ds.tendv}.htm?xoadv"  method="GET"><button><i class="fas fa-trash-alt" data-toggle="tooltip" title="Xóa đơn"></i></button></a>
        						<a href="dulichbien/thanhtoan.htm"><button><i data-toggle="tooltip" title="Thanh toán đơn" class="fas fa-cart-plus"></i></button></a>
        					</td>
      				</tr>
      			</c:forEach>
    		</tbody>
  		</table>
  		<br>
  		<div><h6>Tổng số tiền : <fmt:formatNumber value="${thanhtien}" type="number"/>đ</td></h6></div>
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
