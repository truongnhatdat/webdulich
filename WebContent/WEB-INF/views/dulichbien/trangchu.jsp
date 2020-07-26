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
    	    <div><p>${tb1}</p></div>
   		 </div>
</div>	
<!-- phan card cho noi dung tour-->
<div class="container-fluid mt-4 bg-primary">
	<div><a href="dulichbien/tourphuquy.htm" data-toggle="tooltip" title="Xem thêm về tour du lịch" class="btn btn-warning btn-outline-danger mt-2"><h3 style="color:white">Tour DU LỊCH</h3></a></div>
	<div class="row mt-3">
    	<div class="col-md-3 col-sm-6 col-xs-12 mb-2">
			<div class="card" style="width: 100%;">
  			<a href="dulichbien/${tdlich[0].tenTour}.htm?load"><img src="resources/hinh/${tdlich[0].hinhanh}" class="card-img-top"></a>
  			<div class="card-body">
   			 <a href="dulichbien/${tdlich[0].tenTour}.htm?load" style="text-decoration: none;"><h5 class="card-title">${tdlich[0].tenTour}</h5></a>
   			 <div class="card-text">
             	<span class="Gia text-info"><h6 style="font-weight:bold"><i class="fas fa-money-bill-alt"></i> Giá : <fmt:formatNumber value="${tdlich[0].gia}" type="number"/>đ</h6></span>
                <span class="Thoigian"><h6><i class="fas fa-clock text-info"></i>Thời Gian : ${tdlich[0].thoigian}</h6></span>
             </div>
    	<a href="dulichbien/${tdlich[0].tenTour}.htm?load" class="btn btn-primary btn-outline-warning text-white">ĐẶT TOUR</a>
 			 </div>
		</div>
	</div>
    
    <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
			<div class="card" style="width: 100%;">
  			<a href="dulichbien/${tdlich[1].tenTour}.htm?load"><img src="resources/hinh/${tdlich[1].hinhanh}" class="card-img-top"></a>
  			<div class="card-body">
   			 <a href="dulichbien/${tdlich[1].tenTour}.htm?load" style="text-decoration: none;"><h5 class="card-title">${tdlich[1].tenTour}</h5></a>
   			 <div class="card-text">
             	<span class="Gia text-info"><h6 style="font-weight:bold"><i class="fas fa-money-bill-alt"></i> Giá : <fmt:formatNumber value="${tdlich[1].gia}" type="number"/>đ</h6></span>
                <span class="Thoigian"><h6><i class="fas fa-clock text-info"></i> Thời Gian : ${tdlich[1].thoigian}</h6></span>
             </div>
    	<a href="dulichbien/${tdlich[1].tenTour}.htm?load" class="btn btn-primary btn-outline-warning text-white">ĐẶT TOUR</a>
 			 </div>
		</div>
	</div>
    
    <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
			<div class="card" style="width: 100%;">
  			<a href="dulichbien/${tdlich[2].tenTour}.htm?load"><img src="resources/hinh/${tdlich[2].hinhanh}" class="card-img-top"></a>
  			<div class="card-body">
   			 <a href="dulichbien/${tdlich[2].tenTour}.htm?load" style="text-decoration: none;"><h5 class="card-title">${tdlich[2].tenTour}</h5></a>
   			 <div class="card-text">
             	<span class="Gia text-info"><h6 style="font-weight:bold"><i class="fas fa-money-bill-alt"></i> Giá : <fmt:formatNumber value="${tdlich[2].gia}" type="number"/>đ</h6></span>
                <span class="Thoigian"><h6><i class="fas fa-clock text-info"></i> Thời Gian : ${tdlich[2].thoigian}</h6></span>
             </div>
    	<a href="dulichbien/${tdlich[2].tenTour}.htm?load" class="btn btn-primary btn-outline-warning text-white">ĐẶT TOUR</a>
 			 </div>
		</div>
	</div>
    
    <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
			<div class="card" style="width: 100%;">
  			<a href="dulichbien/${tdlich[3].tenTour}.htm?load"><img src="resources/hinh/${tdlich[3].hinhanh}" class="card-img-top"></a>
  			<div class="card-body">
   			 <a href="dulichbien/${tdlich[0].tenTour}.htm?load" style="text-decoration: none;"><h5 class="card-title">${tdlich[3].tenTour}</h5></a>
   			 <div class="card-text">
             	<span class="Gia text-info"><h6 style="font-weight:bold"><i class="fas fa-money-bill-alt"></i> Giá : <fmt:formatNumber value="${tdlich[3].gia}" type="number"/>đ</h6></span>
                <span class="Thoigian"><h6><i class="fas fa-clock text-info"></i> Thời Gian : ${tdlich[3].thoigian}</h6></span>
             </div>
    	<a href="dulichbien/${tdlich[0].tenTour}.htm?load" class="btn btn-primary btn-outline-warning text-white">ĐẶT TOUR</a>
 			 </div>
		</div>
	</div>
  </div>
</div>

<!-- Dich vu du lich -->
<div class="container-fluid mt-4">
	<div><a href="dulichbien/dichvu.htm" data-toggle="tooltip" title="Xem thêm về dịch vụ" class="btn btn-warning btn-outline-danger mt-2"><h3 style="color:white">Loại Dịch Vụ</h3></a></div>
	<div class="row mt-3">
    	<div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${dvdlich[0].tenDV}.htm?Loaddv"><img src="resources/hinh/${dvdlich[0].hinhanh}" class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${dvdlich[0].tenDV}.htm?Loaddv"><h5 class="card-title">${dvdlich[0].tenDV}</h5></a>
   		   		<a href="dulichbien/${dvdlich[0].tenDV}.htm?Loaddv" class="btn btn-primary btn-outline-success text-white">ĐẶT DỊCH VỤ</a>
 		   	   </div>
           </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${dvdlich[1].tenDV}.htm?Loaddv"><img src="resources/hinh/${dvdlich[1].hinhanh}" class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${dvdlich[1].tenDV}.htm?Loaddv" style="text-decoration: none;"><h5 class="card-title">${dvdlich[1].tenDV}</h5></a>
   		   		<a href="dulichbien/${dvdlich[1].tenDV}.htm?Loaddv" class="btn btn-primary btn-outline-success text-white">ĐẶT DỊCH VỤ</a>
 		   	   </div>
           </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${dvdlich[2].tenDV}.htm?Loaddv"><img src="resources/hinh/${dvdlich[2].hinhanh}"class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${dvdlich[2].tenDV}.htm?Loaddv" style="text-decoration: none;"><h5 class="card-title">${dvdlich[2].tenDV}</h5></a>
   		   		<a href="dulichbien/${dvdlich[2].tenDV}.htm?Loaddv" class="btn btn-primary btn-outline-success text-white">ĐẶT DỊCH VỤ</a>
 		   	   </div>
           </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${dvdlich[3].tenDV}.htm?Loaddv"><img src="resources/hinh/${dvdlich[3].hinhanh}" class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${dvdlich[3].tenDV}.htm?Loaddv" style="text-decoration: none;"><h5 class="card-title">${dvdlich[3].tenDV}</h5></a>
   		   		<a href="dulichbien/${dvdlich[3].tenDV}.htm?Loaddv" class="btn btn-primary btn-outline-success text-white">ĐẶT DỊCH VỤ</a>
 		   	   </div>
           </div>
        </div>
    </div>
</div>
<!-- thong tin du lich -->
<div class="container-fluid mt-4" style="background-color:#0BB">
	<div><a href="dulichbien/thongtin.htm"  data-toggle="tooltip" title="Xem thêm về thông tin du lịch" class="btn btn-warning btn-outline-danger mt-2"><h3 style="color:white">Thông Tin Du Lịch</h3></a></div>
	<div class="row mt-3">
    	<div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${ttdl[0].tieude}.htm?loadttdulich" style="text-decoration: none;"><img src="resources/hinh/${ttdl[0].hinhanh}" class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${ttdl[0].tieude}.htm?loadttdulich" style="text-decoration: none;"><h5 class="card-title">${ttdl[0].tieude}</h5></a>
   		   		<a href="dulichbien/${ttdl[0].tieude}.htm?loadttdulich" style="text-decoration: none;" class="btn btn-primary btn-outline-success text-white"><i class="fas fa-info-circle"></i> Xem Thông Tin</a>
 		   	   </div>
           </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${ttdl[1].tieude}.htm?loadttdulich" style="text-decoration: none;"><img src="resources/hinh/${ttdl[1].hinhanh}" class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${ttdl[1].tieude}.htm?loadttdulich" style="text-decoration: none;"><h5 class="card-title">${ttdl[1].tieude}</h5></a>
   		   		<a href="dulichbien/${ttdl[1].tieude}.htm?loadttdulich" style="text-decoration: none;" class="btn btn-primary btn-outline-success text-white"><i class="fas fa-info-circle"></i> Xem Thông Tin</a>
 		   	   </div>
           </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${ttdl[2].tieude}.htm?loadttdulich" style="text-decoration: none;"><img src="resources/hinh/${ttdl[2].hinhanh}" class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${ttdl[2].tieude}.htm?loadttdulich" style="text-decoration: none;"><h5 class="card-title">${ttdl[2].tieude}</h5></a>
   		   		<a href="dulichbien/${ttdl[2].tieude}.htm?loadttdulich" style="text-decoration: none;" class="btn btn-primary btn-outline-success text-white"><i class="fas fa-info-circle"></i> Xem Thông Tin</a>
 		   	   </div>
           </div>
        </div>
        
             <div class="col-md-3 col-sm-6 col-xs-12 mb-2">
        	<div class="card" style="width: 100%;">
  			<a href="dulichbien/${ttdl[3].tieude}.htm?loadttdulich" style="text-decoration: none;"><img src="resources/hinh/${ttdl[3].hinhanh}" class="card-img-top"></a>
 				<div class="card-body">
    			<a href="dulichbien/${ttdl[3].tieude}.htm?loadttdulich" style="text-decoration: none;"><h5 class="card-title">${ttdl[3].tieude}</h5></a>
   		   		<a href="dulichbien/${ttdl[3].tieude}.htm?loadttdulich" style="text-decoration: none;" class="btn btn-primary btn-outline-success text-white"><i class="fas fa-info-circle"></i> Xem Thông Tin</a>
 		   	   </div>
           </div>
        </div>
    </div>
</div>
<!-- phan gioi thieu cuoi -->

<div class="container mt-2">
	<div class="row mt-5">
    	<div class="col-md-6 colsm-12 col-xs-12">
        	<button class=" btn btn-warning" data-toggle="tooltip" title="Xem thêm về tin du lịch">
            <h5 style="color:white">TIN DU LỊCH</h5>
            </button>
            <ul class="list-unstyled mt-4">
 		    	
            	<li class="media my-4">
    				<a href="dulichbien/${tdl[0].tieude}.htm?loadtin"><img src="resources/hinh/${tdl[0].hinhanh}" style="width:110px; height:90px;" class="mr-3"></a>
   				    <div class="media-body">
      					<a href="dulichbien/${tdl[0].tieude}.htm?loadtin"><p>${tdl[0].tieude}</p></a>
                        <i class="fas fa-clock"></i> <fmt:formatDate value="${tdl[0].ngaydang}" pattern="dd/MM/yyyy" />
   				    </div>
  				  </li>
  				  
            	<li class="media my-4">
    				<a href="dulichbien/${tdl[1].tieude}.htm?loadtin"><img src="resources/hinh/${tdl[1].hinhanh}" style="width:110px; height:90px;" class="mr-3"></a>
   				    <div class="media-body">
      					<a href="dulichbien/${tdl[1].tieude}.htm?loadtin"><p>${tdl[1].tieude}</p></a>
                        <i class="fas fa-clock"></i> <fmt:formatDate value="${tdl[1].ngaydang}" pattern="dd/MM/yyyy" />
   				    </div>
  				  </li>
  				  
            	<li class="media my-4">
    				<a href="dulichbien/${tdl[2].tieude}.htm?loadtin"><img src="resources/hinh/${tdl[2].hinhanh}" style="width:110px; height:90px;" class="mr-3"></a>
   				    <div class="media-body">
      					<a href="dulichbien/${tdl[2].tieude}.htm?loadtin"><p>${tdl[2].tieude}</p></a>
                        <i class="fas fa-clock"></i> <fmt:formatDate value="${tdl[2].ngaydang}" pattern="dd/MM/yyyy" />
   				    </div>
  				  </li>
           	
			</ul>
        </div>
        <!-- cot ben phai -->
        
        <div class="col-md-6 col-sm-12 col-xs-12">
        	<div class=" btn btn-warning text-white" data-toggle="tooltip" title="Xem video giới thiệu">
            	<h5 style="color:white">XEM VIDEO</h5>
            </div>
            <div class="mt-2">
           		 <video controls>
                 	<source src="<c:url value="/resources/video/Video giới thiệu về đảo Phú Quý Phần 1-Video introduce about Phu Quy Island Part 1.mp4"/>">
                 </video>
            </div>
        </div>
    </div>
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
                 <p class="media-body mt-0">dulichsinhthaibien@gmail.com</p>
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
