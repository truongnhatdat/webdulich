<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang=en>
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
	.hinh1 img{
		width:300px;
		height:300px;
		margin-top:20px;
		margin-left:30px;
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

<!-- phan model -->
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
    	<div><p><a href="dulichbien/trangchu.htm">Trang chủ</a> <i class="fas fa-angle-right"></i>${tb}</p></div>
   		 </div>
	</div>
	<div class="container-fluid">
		 <br>
    	 <h3 class="text-center">GIỚI THIỆU</h3>
	</div>
	<div>
		<br>
    	<h2 class="text-center text-danger" style="font-weight:bold">CÔNG TY TNHH DU LỊCH PHÚ QUÝ</h2>
	</div>
    <div class="container intro1">
    	<div class="row">
        	<h5><strong>I/Thông Tin Công Ty</strong></h5>
        </div>
         <p><strong>- Mã số thuế: </strong>3401129373</p>
         <p><strong>- Địa chỉ: </strong>112/58 Nguyễn Thị Minh Khai-Thôn Thương Châu-Xã Ngũ Phụng-Huyện Phú Quý</p>
         <p><strong>- Điện thoại: </strong>0357137815 - 0977643634</p>
         <p><strong>- Email: </strong>dulichsinhthaibien@gmail.com</p>
         <p><strong>- Website: <a href="#"></strong>https://dulichbienphuquy.vn/</p></a>
         <p><strong>- Facebook: <a href="#"></strong>https://www.facebook.com/dulichbienphuquy.vn/</p></a>
         <p><strong>- Youtube: <a href="#"></strong>https://youtu.be/5fjN84i8iCw</p></a>
    </div>
     <div class="container intro1">
    	<div class="row">
        	<h5><strong>II/Sơ Lược Công Ty</strong></h5>
        </div>
        <p>Là công ty du lịch đầu tiên tại đảo Phú Qúy , với bề dày kinh nghiệm qua nhiều năm hoạt động trong nghành du lịch. Chúng tôi tự hào đã cung cấp rất nhiều <b>tour đảo Phú Qúy và các dịch vụ đảo Phú Qúy thành công</b>, hoàn hảo cho nhiều du khách ra đảo.</p>
        <p>Là công ty du lịch cung cấp các tour, <b>dịch vụ du lịch lớn nhất đảo Phú Qúy</b>. Đến nay du lịch biển Phú Qúy đã trở thành thương hiệu du lịch uy tín hàng đầu đảo Phú Qúy.</p>
        <p>Đến nay công ty vẫn giữ vị trí là công ty du lịch lớn nhất đảo Phú Qúy, chất lượng uy tin nguồn lực dồi dào, tài chính vững mạnh. <a href="#">Dulichbienphuquy.vn</a> luôn mang đến cho khách hàng những sản phẩm du lịch giá trị nhất.</p>
    </div>
    <div class="container intro1">
    	<div class="row">
        	<h5><strong>III/Các Lĩnh Vực Hoạt Động</strong></h5>
        </div>
         1. <a href="#">Tour Du Lịch Đảo Phú Quý</a>
         	<div class="mt-2 ml-3">
            	<p>- Tour Phượt Phan Thiết -  Phú Qúy (3n2đ)</p>
         		<p>- Tour Phan Thiết -  Phú Qúy (2n1đ)</p>
                <p>- Tour Phan Thiết – Phú Quý (3n2đ)</p>
                <p>- Tour Câu Cá Lặn Ngắm San Hô</p>
                <p>- Cano Tham Quan Các Đảo Đảo Nhỏ</p>
            </div>
          1. <a href="#">Dịch Vụ Du Lịch Đảo Phú Quý</a>
         	<div class="mt-2 ml-3">
            	<p>- Dịch Vụ Đặt Vé Tàu</p>
         		<p>- Thuê Xe Máy Đảo Phú Qúy</p>
                <p>- Thuê Xe Du Lịch 4 - 29 chỗ</p>
                <p>- Đặt Khách Sạn Đảo Phú Qúy</p>
                <p>- Nhà Hàng Hải Đảo</p>
            </div>
            <div class="card hinh1 text-center mt-5">
            	<div class="row card-img">
            		<div class="col-md-6 col-sm-12 col-xs-12">
            			<img src="<c:url value="/resources/hinh/dat-tour.jpg"/>">
            		</div>
            		<div class="col-md-6 col-sm-12 col-xs-12">
            			<img src="<c:url value="/resources/hinh/71597511_2374856309298946_5066798117664325632_n.jpg"/>">
           		    </div>	 
           		 </div>
                 <p class="text-center">Đặt tour và dịch vụ du lịch</p>
            </div>
    </div>
    <div class="container mt-5">
    	<div class="row">
        	<h5><strong>IV/Chất Lượng Dịch Vụ Và Đội Ngũ Nhân Viên Chuyên Nghiệp</strong></h5>
        </div>
        <strong>1.Chất Lượng Dịch Vụ</strong>
        <div class="mt-2 ml-3">
            <p><strong>-  Dulichbienphuquy.vn</strong> khẳng định cung cấp dịch vụ tốt nhất trên mọi phương diện sản phẩm mà bạn đã lựa chọn. Chúng tôi cam kết sẽ thực hiện đúng, đủ và tốt hơn những gì đã được nêu ra. Xuyên suốt chặng đường kinh doanh chúng tôi đã rút ra cho mình những kinh nghiệm bài học về cải thiện từng dịch vụ để phục vụ quý khách ngày càng tốt hơn.Tất cả những gì đã nêu trên sẽ tạo ra những kỳ nghỉ thú vị và bổ ích với sự trải nghiệm khó quên thật xứng đáng với giá trị tài chính mà bạn đưa ra cho chuyến đi.</p>
         </div>
         <strong>2.Tour Du Lịch Đảo Phú Quý</strong>
        <div class="mt-2 ml-3">
            <p><strong>- Công Ty TNHH Du Lịch Biển Phú Qúy</strong> tự hào là công ty phục vụ khách hàng du lịch chuyên nghiệp nhất tại đảo Phú Qúy. Các thành viên của công ty luôn làm việc gắn kết ,giúp đỡ hỗ trợ lẫn nhau khi cần. Đó là tiêu chí chuyên nghiệp mỗi người trong công ty phải thực hiện.</p>
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
