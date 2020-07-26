<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<!doctype html>
<html>
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
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/ckeditor/ckeditor.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/ckfinder/ckfinder.js"></script>
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
        <a class="nav-link" href="quantri/tindulich.htm"><i class="fas fa-info-circle"></i> TIN DU LỊCH</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="quantri/tourdulich.htm"><i class="fas fa-briefcase"></i> TOUR DU LỊCH <i class="fas fa-caret-down"></i></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="quantri/donhangtourdulich.htm"><i class="fas fa-file-invoice"></i> ĐƠN TOUR</i></a>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link" href="quantri/dichvu.htm"><i class="fab fa-servicestack"></i> DỊCH VỤ <i class="fas fa-caret-down"></i></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="quantri/donhangdichvu.htm"><i class="far fa-list-alt"></i> ĐƠN DỊCH VỤ</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="quantri/thongtin.htm"><i class="fas fa-registered"></i> THÔNG TIN</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="quantri/thongtinkhachhang.htm"><i class="fas fa-phone-square-alt"></i> THÔNG TIN KHÁCH</a>
      </li>
    </ul>
      <a href="dulichbien/trangchu.htm" class="btn btn-outline-warning" data-toggle="tooltip" title="Đăng xuất"><i class="fas fa-user"></i></a>
  </div>
 </div>
 </nav>
 	<div class="container tieude text-info">
		<div class="row pt-4 pl-3">
    	<div><p>Quản trị <i class="fas fa-angle-right"></i> Sửa thông tin khách hàng <i class="fas fa-angle-right"></i> ${message}</p></div>
   		 </div>
	</div>
    		<div class="container">
            	<h4><strong>Sửa khách hàng</strong></h4>
                <br>
                <p>Điền thông tin đầy đủ trước khi xóa</p>
                <form:form action="quantri/suakhachhang.htm" modelAttribute="kh">
                	<div class="mt-3">
                    	<label><strong>ID Khách Hàng</strong></label>
                 	    <br>
               		     <form:input class="form-control" readonly="true" type="text" path="idKH"/>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Tên Khách Hàng</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="tenKH" />
               		    <form:errors path="TenKH" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Số điện thoại</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="sodienthoai"/>
               		     <form:errors path="Sodienthoai" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Địa chỉ</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="diachi" />
               		      <form:errors path="Diachi" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Email</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="email" />
                    </div>
                    <div class="mt-3">
                    	<label><strong>Nội dung</strong></label>
                 	    <br>
               		     <form:textarea rows="4"  class="form-control" type="text" path="noidung"/>
                    </div>
                    <br>
                    <button class="btn btn-info" name="button">Sửa</button>
                </form:form>
              </div>
</body>
</html>
