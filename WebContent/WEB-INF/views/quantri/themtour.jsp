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
    	<div><p>Quản trị <i class="fas fa-angle-right"></i> Thêm thông tin tour <i class="fas fa-angle-right"></i> ${message}</p></div>
   		 </div>
	</div>
    		<div class="container">
            	<h4><strong>Thêm tour</strong></h4>
                <br>
                <p>Điền thông tin đầy đủ trước khi thêm</p>
                <form:form action="quantri/themtourdulich.htm" modelAttribute="tours" enctype="multipart/form-data">
                	<div>
                    	<label><strong>Id</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="idTour" placeholder="Id"/>
               		     <form:errors path="IdTour" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Tên Tour</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="tenTour" placeholder="Tên Tour"/>
               		     <form:errors path="TenTour" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Hình ảnh</strong></label>
                 	    <br>
               		     <input class="form-control" type="file" name="photo"  placeholder="Hình ảnh"/>
               		     
                    </div>
                    <div class="mt-3">
                    	<label><strong>Khách sạn</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="khachsan" placeholder="Khách sạn"/>
               		       <form:errors path="Khachsan" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Di chuyển</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="dichuyen" placeholder="Di chuyển"/>
               		         <form:errors path="Dichuyen" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Thời gian</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="thoigian" placeholder="Thời gian"/>
               		      <form:errors path="Thoigian" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Khởi hành</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="text" path="khoihanh" placeholder="Khởi hành"/>
               		        <form:errors path="Khoihanh" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>Giá</strong></label>
                 	    <br>
               		     <form:input class="form-control" type="number" path="gia" placeholder="Giá"/>
               		      <form:errors path="Gia" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div>
                    	<label><strong>Nội dung</strong></label>
                 	    <br>
               		     <form:textarea id="editor" class="form-control form-control-lg" rows="4" path="noidung"></form:textarea>
               		       <form:errors path="Noidung" style="color: red;font-style: italic;"></form:errors>
                    </div>
                    <div class="mt-3">
                    	<label><strong>IdUser</strong></label>
                 	    <br>
               		      <form:select path="idUser.idUser" items="${users}" itemValue="idUser" itemLabel="idUser"></form:select>
                    </div>
                    <br>
                    <button class="btn btn-info" name="button">Thêm</button>
                </form:form>
              </div>
              <script>
              	var config = {};
              	config.entities_latin = false;
              	config.language = 'vietnam';
              	var editor = CKEDITOR.replace('editor',config);
              	CKFinder.setupCKEditor(editor,'<%=request.getContextPath()%>/resources/ckfinder/');
              </script>
</body>
</html>
