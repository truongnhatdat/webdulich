USE [Travel]
GO
/****** Object:  Table [dbo].[CTDichVu]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDichVu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IdDV] [nvarchar](100) NOT NULL,
	[IdKH] [bigint] NULL,
	[Ngaynhan] [date] NOT NULL,
	[Ngaytra] [date] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Loai] [nvarchar](50) NOT NULL,
	[Thanhtoan] [bit] NULL,
	[Ngaydat] [date] NOT NULL,
 CONSTRAINT [PK_CTDichVu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTTour]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTour](
	[IdHDT] [bigint] IDENTITY(1,1) NOT NULL,
	[IdTour] [nvarchar](50) NOT NULL,
	[IdKH] [bigint] NULL,
	[Ngaydi] [date] NOT NULL,
	[Ngayve] [date] NOT NULL,
	[Soluongnguoilon] [int] NOT NULL,
	[Soluongtreem] [int] NOT NULL,
	[Thanhtoan] [bit] NULL,
	[Ngaydat] [date] NOT NULL,
	[Tongtien] [float] NOT NULL,
 CONSTRAINT [PK_CTTour_1] PRIMARY KEY CLUSTERED 
(
	[IdHDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVuDuLich]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVuDuLich](
	[IdDV] [nvarchar](100) NOT NULL,
	[TenDV] [nvarchar](200) NOT NULL,
	[Hinhanh] [nvarchar](100) NOT NULL,
	[Noidung] [ntext] NULL,
	[IdUser] [nchar](10) NOT NULL,
 CONSTRAINT [PK_DichVuDuLich] PRIMARY KEY CLUSTERED 
(
	[IdDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[IdKH] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](200) NOT NULL,
	[Sodienthoai] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Noidung] [ntext] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[IdKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinDuLich]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDuLich](
	[IdTTin] [bigint] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](200) NOT NULL,
	[Hinhanh] [nvarchar](100) NOT NULL,
	[Ngaydang] [date] NOT NULL,
	[Noidung] [ntext] NULL,
	[IdUser] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ThongTinDuLich] PRIMARY KEY CLUSTERED 
(
	[IdTTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinDuLich]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinDuLich](
	[IdTin] [bigint] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](200) NOT NULL,
	[Hinhanh] [nvarchar](100) NOT NULL,
	[Ngaydang] [date] NOT NULL,
	[Noidung] [ntext] NULL,
	[IdUser] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TinDuLich] PRIMARY KEY CLUSTERED 
(
	[IdTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TourDuLich]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourDuLich](
	[IdTour] [nvarchar](50) NOT NULL,
	[TenTour] [nvarchar](200) NOT NULL,
	[Hinhanh] [nvarchar](50) NOT NULL,
	[Khachsan] [nvarchar](50) NOT NULL,
	[Dichuyen] [nvarchar](50) NOT NULL,
	[Thoigian] [nvarchar](50) NOT NULL,
	[Khoihanh] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[Noidung] [ntext] NULL,
	[IdUser] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TourDL] PRIMARY KEY CLUSTERED 
(
	[IdTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 27/11/2019 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUser] [nchar](10) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NOT NULL,
	[Ngaysinh] [date] NOT NULL,
	[Sodienthoai] [nvarchar](50) NOT NULL,
	[Gioitinh] [bit] NOT NULL,
	[Email] [nchar](200) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CTDichVu] ON 

INSERT [dbo].[CTDichVu] ([ID], [IdDV], [IdKH], [Ngaynhan], [Ngaytra], [Soluong], [Loai], [Thanhtoan], [Ngaydat]) VALUES (3, N'IDDV2     ', 16, CAST(0x6B400B00 AS Date), CAST(0x6E400B00 AS Date), 1, N'Bàn thường', 0, CAST(0x6B400B00 AS Date))
INSERT [dbo].[CTDichVu] ([ID], [IdDV], [IdKH], [Ngaynhan], [Ngaytra], [Soluong], [Loai], [Thanhtoan], [Ngaydat]) VALUES (14, N'IDDV3     ', 22, CAST(0x6B400B00 AS Date), CAST(0x6D400B00 AS Date), 2, N'Bàn thường', 1, CAST(0x6B400B00 AS Date))
INSERT [dbo].[CTDichVu] ([ID], [IdDV], [IdKH], [Ngaynhan], [Ngaytra], [Soluong], [Loai], [Thanhtoan], [Ngaydat]) VALUES (16, N'IDDV2     ', 27, CAST(0x6C400B00 AS Date), CAST(0x6D400B00 AS Date), 1, N'Bàn thường', 1, CAST(0x6B400B00 AS Date))
INSERT [dbo].[CTDichVu] ([ID], [IdDV], [IdKH], [Ngaynhan], [Ngaytra], [Soluong], [Loai], [Thanhtoan], [Ngaydat]) VALUES (18, N'IDDV1     ', 22, CAST(0x6C400B00 AS Date), CAST(0x6D400B00 AS Date), 2, N'Bàn thường', 0, CAST(0x6C400B00 AS Date))
INSERT [dbo].[CTDichVu] ([ID], [IdDV], [IdKH], [Ngaynhan], [Ngaytra], [Soluong], [Loai], [Thanhtoan], [Ngaydat]) VALUES (19, N'IDDV3     ', 28, CAST(0x6D400B00 AS Date), CAST(0x6E400B00 AS Date), 1, N'150.000', 0, CAST(0x6C400B00 AS Date))
SET IDENTITY_INSERT [dbo].[CTDichVu] OFF
SET IDENTITY_INSERT [dbo].[CTTour] ON 

INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (10, N'IDT1      ', 16, CAST(0x6A400B00 AS Date), CAST(0x6C400B00 AS Date), 1, 1, 1, CAST(0x6A400B00 AS Date), 5700000)
INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (11, N'IDT1      ', 1, CAST(0x6A400B00 AS Date), CAST(0x6C400B00 AS Date), 2, 2, 0, CAST(0x6A400B00 AS Date), 5700000)
INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (12, N'IDT5', 18, CAST(0x6A400B00 AS Date), CAST(0x6C400B00 AS Date), 2, 0, 0, CAST(0x6A400B00 AS Date), 500000)
INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (25, N'IDT2      ', 22, CAST(0x6B400B00 AS Date), CAST(0x6D400B00 AS Date), 2, 0, 0, CAST(0x6B400B00 AS Date), 5000000)
INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (26, N'IDT2      ', 1, CAST(0x6B400B00 AS Date), CAST(0x6D400B00 AS Date), 1, 1, 1, CAST(0x6B400B00 AS Date), 3750000)
INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (28, N'IDT2      ', 27, CAST(0x6C400B00 AS Date), CAST(0x6E400B00 AS Date), 1, 1, 0, CAST(0x6B400B00 AS Date), 3750000)
INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (29, N'IDT2      ', 28, CAST(0x6C400B00 AS Date), CAST(0x6D400B00 AS Date), 2, 0, 0, CAST(0x6C400B00 AS Date), 5000000)
INSERT [dbo].[CTTour] ([IdHDT], [IdTour], [IdKH], [Ngaydi], [Ngayve], [Soluongnguoilon], [Soluongtreem], [Thanhtoan], [Ngaydat], [Tongtien]) VALUES (30, N'IDT2      ', 30, CAST(0x6C400B00 AS Date), CAST(0x6E400B00 AS Date), 2, 0, 0, CAST(0x6C400B00 AS Date), 5000000)
SET IDENTITY_INSERT [dbo].[CTTour] OFF
INSERT [dbo].[DichVuDuLich] ([IdDV], [TenDV], [Hinhanh], [Noidung], [IdUser]) VALUES (N'IDDV1     ', N'Nhà Hàng Hải Đảo', N'nha-hang-hai-dao-cung-tour-dao-phu-quy-banner.jpg', N'<p><span style="font-size:20px"><strong>MÔ TẢ DỊCH VỤ</strong></span></p>

<h1><span style="font-size:18px"><strong>Giới Thiệu Nhà Hàng Hải Đảo</strong></span></h1>

<p>Để có không gian ẩm thực cho thư giản và trút bỏ đi những căng thẳng hàng ngày trong cuộc sống, công việc! Ở đâu có thể lý tưởng hơn&nbsp;<strong>nhà hàng Hải Đảo tại đảo Phú Qúy</strong>.</p>

<p>Nhà hàng Hải Đảo - tọa lạc ngay Trung tâm huyện Phú Qúy, với phong cách hiện đại thoáng mát nằm ngay trên bãi biển xung quanh thật thơ mộng và hữu tình, thực đơn phong phú với nhiều món ăn đậm đà bản sắc Việt. Đặc biệt nhất là các món hải sản tươi sống được chế biến thành những món ăn tinh tế và mang hương vị thật khác biệt.</p>

<p>Nếu ngân sách có giới hạn, bạn cũng đừng ngần ngại khi đến với&nbsp;<strong>nhà hàng Hải Đảo</strong>&nbsp;chúng tôi sẵn sàng tư vấn cho bạn và người thân của bạn thực đơn ăn uống theo đúng mong muốn và hợp với túi tiền.</p>

<p>Nhà hàng Hải Đảo luôn có nhiều chương trình khuyến mãi dành cho khách hàng: Tặng rượu và quà cho những dịp đặc biệt: Lễ hội, tiệc tùng, đám cưới, Hội nghị, sinh nhật ... Nhà hàng Hải Đảo là nơi có đầy đủ các yếu tố phù hợp để tổ chức những bữa tiệc có quy mô đến 1.200&nbsp;khách.<br />
&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>&nbsp;&nbsp;&nbsp;<strong>Cả 3 yếu tố:</strong>&nbsp;Giá cả -Thái độ phục vụ - Chất lượng món ăn là phương châm hàng đầu tại nhà hàng Hải Đảo.</em></p>

<p><em><img alt="" src="/CKFinderJava/userfiles/images/nha-hang-tai-dao-phu-quy.jpg" style="height:332px; width:500px" /></em></p>

<p><em>hình ảnh nhà hàng Hải Đảo</em></p>

<h2><strong>Tour Du Lịch Đảo Phú Qúy Ăn Ở Đâu</strong></h2>

<p>Các bạn có một chuyến&nbsp;<strong><a href="dulichbien/tourphuquy.htm">tour đảo Phú Qúy</a></strong>&nbsp;rất ý nghĩa nếu thưởng thức những món ngon tại nhà hàng Hải Đảo. Chúng tôi nhận đặt tiệc có quy mô lớn,nhỏ cho các khách đoàn&nbsp;<strong>đi tour đến đảo Phú Qúy</strong>&nbsp;và bà con trên huyện đảo. Ngoài nhà hàng ,&nbsp;<strong>du lịch biển Phú Qúy</strong>&nbsp;còn cung cấp các dịch vụ khác quý khách có thể tham khảo bên dưới.</p>
', N'NV1       ')
INSERT [dbo].[DichVuDuLich] ([IdDV], [TenDV], [Hinhanh], [Noidung], [IdUser]) VALUES (N'IDDV2     ', N'Đặt Phòng Đảo Phú Quý', N'dat-phong-dich-vu-du-lich-banner.jpg', N'<p><span style="font-size:20px"><strong>MÔ TẢ DỊCH VỤ</strong></span></p>

<h1><span style="font-size:18px"><strong>Giới Thiệu Nhà Nghỉ Ở Đảo Phú Qúy</strong></span></h1>

<h2><span style="font-size:16px"><strong>&nbsp;<u>1. Nhà nghỉ 111 đảo Phú Qúy</u></strong></span></h2>

<p>Nhà nghỉ 111 nằm giữa Trung tâm hành chính huyện thuộc xã Tam Thanh là một nhà nghỉ hiện đại, sang trọng, với đầy đủ tiện nghi. Nhà nghỉ 111 gần Ngân hàng, Bưu điện, bãi tắm Vịnh Triều Dương và đặc biệt gần chợ huyện nên rất thuận tiện cho việc mua sắm của quý khách.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Nhà nghỉ gồm 10 phòng nghỉ với nội thất sang trọng và được bài trí đẹp mắt, giá cả lại rất hợp lý.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Nhà nghỉ có bãi để xe ô tô.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Có phục vụ ăn uống cho quý khách theo yêu cầu.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Phòng nghỉ có đầy đủ các thiết bị: điều hòa, tivi truyền hình cáp, mạng &nbsp;internet wifi<img alt="" src="https://dulichbienphuquy.vn/uploads/tours/bang-gia-nha-nghi.jpg" /></p>

<h2><span style="font-size:16px"><u><strong>2. Nhà nghỉ&nbsp;Trường Huy đảo Phú Qúy</strong></u></span></h2>

<p><strong>Nhà nghỉ Trường Huy&nbsp;</strong>được thành lập vào năm 2014 và tọa lạc tại số 354 Võ Văn Kiệt - xã Tam Thanh - huyện Phú Quý - tỉnh Bình Thuận. Nhà nghỉ Trường Huy gồm 12 phòng trong đó có phòng đơn , phòng đôi được thiết kế độc đáo, sang trọng đầy đủ tiện nghi hiện đại, có sân thượng rộng cho quý khách vui chơi và ngắm biển.</p>

<p><strong>Trường Huy&nbsp;</strong>nằm ở vị trí đặc biệt thuận lợi ngay Trung tâm hành chính huyện Phú Quý gần Cảng, Chợ huyện, Ngân hàng, Bãi tắm Vịnh Triều Dương, Nhà hàng Hải Đảo. Phú Quý không những là điểm hẹn lý tưởng với các loại hình giải trí biển đa dạng vào những ngày nghỉ cuối tuần, mà còn là nơi hội tụ nhiều tiềm năng đặc biệt.</p>

<p>Phú Quý ngày càng đầu tư phát triển và hoàn thiện các điểm du lịch. Theo sự phát triển hiện đại thì nhu cầu lưu trú ngày càng tăng. Nắm bắt được nhu cầu và xu hướng này nhà nghỉ Trường Huy đã mạnh dạn đầu tư xây dựng nhà nghỉ để phục vụ quý khách.</p>

<p>Với sự tận tình tiếp đón nhiệt tình chăm lo chu đáo khi đến dừng chân tại nhà nghỉ của nhân viên.&nbsp; Đến với&nbsp;<strong>Nhà nghỉ Trường Huy&nbsp;</strong>Quí khách sẽ có cảm giác ấm cúng như đang sinh hoạt trong một gia đình nhiều thế hệ.</p>

<p>Với phương châm hoạt động &ldquo;ấm cúng và gia đình&rdquo;&nbsp;<strong>Nhà nghỉ Trường Huy&nbsp;</strong>luôn thay đổi và nâng cao chất lượng tiện nghi để góp phần nâng cao giá trị cho chuyến du lịch của Quý khách.</p>

<h2><span style="font-size:16px"><strong>Hỗ Trợ Phòng Khách Sạn Hoặc Nhà Nghỉ Tại Đảo Phú Qúy</strong></span></h2>

<p>Du lịch biển Phú Qúy đem đến quý khách tour trọn gói đến đảo Phú Qúy và du lịch đảo Phú Qúy bao gồm các phòng ốc tại khách sạn hoặc nhà nghỉ</p>

<p><em>&nbsp;-&nbsp;Giá&nbsp;phòng&nbsp;đã bao gồm thuế VAT và phí dịch vụ.</em></p>

<p><em>&nbsp;- Trả phòng trước 12 giờ.</em></p>

<p><em>&nbsp;- Thanh toán: Bằng tiền mặt hoặc chuyển khoản.</em></p>

<p><em>&nbsp; - Có giảm giá cho khách nghỉ trong thời gian dài hoặc khách đi theo đoàn.</em></p>
', N'NV1       ')
INSERT [dbo].[DichVuDuLich] ([IdDV], [TenDV], [Hinhanh], [Noidung], [IdUser]) VALUES (N'IDDV3     ', N'Thuê Xe Máy', N'thue-xe-may-tour-dao-phu-quy-banner.jpg', N'<p><strong><span style="font-size:20px">MÔ TẢ DỊCH VỤ</span></strong></p>

<p><strong>&nbsp; BẢNG GIÁ THUÊ XE MÁY:</strong></p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>+ Xe tay ga: 120.000 -150.000đồng/chiếc/ngày&nbsp;<em>(Tùy loại xe)</em></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Xe số:&nbsp;100.000 đồng/chiếc/ngày</p>

<p>&nbsp; &nbsp; &nbsp;<strong>&nbsp;&nbsp; &nbsp;Chưa bao gồm các khoản:</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; +&nbsp; &nbsp;&nbsp;Phí xăng.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; +&nbsp; &nbsp;Thuế VAT 10%.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Lưu ý về thủ tục thuê xe máy tại Đảo Phú Qúy:</p>

<ul>
	<li>Dịch vụ&nbsp;cho&nbsp;thuê xe máy&nbsp;buộc bạn phải có giấy phép lái xe và các giấy tờ liên quan như: Chứng minh&nbsp;nhân dân bản gốc, giấy phép lái xe.</li>
	<li>Thanh toán tiền thuê xe máy&nbsp;theo hợp đồng 1 lần chuyển khoản hoặc bằng tiền mặt trước khi nhận xe. Đơn vị cho thuê xe sẽ hoàn trả lại bạn các giấy tờ đã nhận sau khi trả xe và thanh toán các chi phí phát sinh (nếu có).</li>
	<li>Trường hợp người nước ngoài, Việt kiều khi thuê xe máy&nbsp;phải có&nbsp;hộ chiếu (passport).</li>
</ul>

<p><img alt="" src="/CKFinderJava/userfiles/images/thue-xe-may-tour-dao-phu-quy-banner.jpg" style="height:400px; width:500px" /></p>

<p><em>hình ảnh thuê xe máy cùng tour đảo Phú Qúy</em></p>

<h2><span style="font-size:18px">&nbsp;<strong>Thuê Xe Máy Tour Đảo Phú Qúy</strong></span></h2>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp;</strong>Để thuận tiện cho việc đi lại tham quan và công việc trên đảo Phú Qúy chúng tôi cung cấp dịch vụ thuê xe máy như xe số, xe tay ga(tùy theo lại xe)&nbsp; những dịch vụ thuê xe máy hiện nay rất nhiều trên đảo&nbsp;nhưng để tìm được một công ty du lịch cung cấp dịch vụ thuê xe máy ở đảo thì chỉ có công ty&nbsp;<strong>Du Lịch Biển Phú Qúyv</strong></p>
', N'NV1       ')
INSERT [dbo].[DichVuDuLich] ([IdDV], [TenDV], [Hinhanh], [Noidung], [IdUser]) VALUES (N'IDDV4     ', N'Thuê Xe Du Lịch 4-16 Chỗ', N'thue-xe-du-lich-dao-phu-quy-banner.jpg', N'<p><span style="font-size:18px"><strong>MÔ TẢ DỊCH VỤ</strong></span></p>

<p><strong>&nbsp;<span style="font-size:14px">BẢNG GIÁ THUÊ XE Ô TÔ:</span></strong></p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>+ Xe 4-7 chỗ 1.000.000đồng/chiếc/ngày&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Xe 12-16 chỗ&nbsp;1.200.000đồng/chiếc/ngày</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+&nbsp;Xe 29&nbsp;chỗ 2.200.000đồng/chiếc/ngày</p>

<p>&nbsp; &nbsp; &nbsp;<strong>&nbsp;&nbsp; &nbsp;Chưa bao gồm các khoản:</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; +&nbsp; &nbsp;Thuế VAT 10%.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Lưu ý về thủ tục thuê xe ô tô tự lái tại Đảo Phú Qúy:</p>

<ul>
	<li>Dịch vụ&nbsp;cho&nbsp;thuê xe ô tô tự lái&nbsp;buộc bạn phải có giấy phép lái xe và các giấy tờ liên quan như: Chứng minh&nbsp;nhân dân bản gốc, giấy phép lái xe.</li>
	<li>Thanh toán tiền thuê xe&nbsp;theo hợp đồng 1 lần bằng tiền mặt hoặc chuyển khoản&nbsp;trước khi nhận xe. Đơn vị cho thuê xe sẽ hoàn trả lại bạn các giấy tờ đã nhận sau khi trả xe và thanh toán các chi phí phát sinh (nếu có).</li>
	<li>Trường hợp người nước ngoài, Việt kiều khi thuê xe ô tô tự lái phải&nbsp;có hộ&nbsp;chiếu (passport), giấy phép lái xe.</li>
</ul>

<p><img alt="" src="/CKFinderJava/userfiles/images/thue-xe-du-lich-dao-phu-quy-banner.jpg" style="height:400px; width:500px" /></p>

<p><em>hình ảnh thuê xe ô tô du lịch đảo Phú Qúy</em></p>

<h2><span style="font-size:14px">&nbsp;&nbsp;<strong>Thuê Xe Ô Tô Du Lịch Đảo Phú Qúy</strong></span></h2>

<p>&nbsp; &nbsp;Du lịch biển Phú Qúy tự hào là công ty đầu tiên cung cấp dịch vụ thuê xe ô tô tại đảo Phú Qúy.Với sự phát triển du lịch hiện nay cũng như nhu cầu xe ô tô tại đảo công ty chúng tôi luôn tự hào là noi cung cấp xe ô tô lớn nhất và nhiều nhất tại thị trường trên đảo Phú Qúy. Hiện nay các&nbsp;<strong><a href="dulichbien/dichvu.htm" title="dịch vụ du lịch đảo Phú Qúy" type="dịch vụ du lịch đảo Phú Qúy">dịch vụ du lịch đảo Phú Qúy</a></strong>&nbsp;hoặc&nbsp;<strong><a href="dulichbien/tourphuquy.htm" title="tour đảo phú quý" type="tour đảo phú quý">tour đảo Phú Qúy</a></strong>&nbsp;rất cần thiết đến dịch vụ thuê xe này.</p>
', N'NV2       ')
INSERT [dbo].[DichVuDuLich] ([IdDV], [TenDV], [Hinhanh], [Noidung], [IdUser]) VALUES (N'IDDV5     ', N'Dịch Vụ Đặt Vé Tàu', N'dat-ve-tau-tour-dao-phu-quy-banner.jpg', N'<p><strong><span style="font-size:20px">MÔ TẢ DỊCH VỤ</span></strong></p>

<h1><span style="font-size:18px"><strong>Hỗ Trợ Đặt Vé Tàu Cho Quý Khách Tại Du Lịch Biển Phú Quý</strong></span></h1>

<p><em>&quot;Hiện nay trên đảo Phú Qúy có 3 tàu chở khách trung tốc,cao tốc hoạt động những chuyến&nbsp;<strong>tàu ra đảo Phú Qúy</strong>&nbsp;đem đến cho hành khách thoải mái khi đến đây&quot;</em></p>

<p><strong>1) Tàu Cao Tốc Phú Qúy EXPRESS.&nbsp;</strong></p>

<p>&nbsp; &nbsp; -&nbsp; Thời gian từ Phan Thiết - đảo Phú Qúy và ngược lại 2,5 giờ.</p>

<p><strong>&nbsp; &nbsp; -&nbsp; Giá vé có 2 loại vé:</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Người lớn:&nbsp;<strong>350.000đ</strong>&nbsp;(giường nằm hoặc&nbsp;ghế ngồi)</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Trẻ em , người già:&nbsp;<strong>220.000.đ</strong>(giường nằm hoặc ghế ngồi)</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/tau-cao-toc-phu-quy-express.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh&nbsp;tàu cao tốc Phú Qúy Express</em></p>

<p>&nbsp;&nbsp;<strong>&nbsp;-&nbsp; Thông tin tàu:</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Tốc độ 27 - 28 hải lý/giờ.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Tải trọng 300 hành khách.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Gồm 230 giường nằm, 70 ghế ngồi và 15 tấn hàng hóa.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+&nbsp;Bên trong nội thất được trang bị hiện đại, sang trọng, máy lạnh tự động,&nbsp;phục vụ cafe miễn Phí</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+&nbsp;Tàu Cao Tốc PHÚ QUÝ EXPRESS được trang bị hệ thống cứu sinh (phao bè, áo phao...) đảm bảo sự an toàn hàng hải cao nhất cho quý hành khách.</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/tau-ra-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh&nbsp;tàu cao tốc Phú Qúy Express</em></p>

<p>Phòng Vé TP.Phan Thiết</p>

<p>+ Văn Phòng:&nbsp;169 Võ Thị Sáu, Phường Hưng Long,TP Phan Thiết.</p>

<p>+ Điện Thoại:&nbsp;(0252) 396 2727 &ndash; (0252) 396 2626 &ndash; 0908 650 584</p>

<p>Phòng Vé Đảo Phú Qúy</p>

<p>+ Văn Phòng:&nbsp;&nbsp;Cảng Tàu Đảo Phú Quý 21 Ngô Quyền, Huyện Phú Quý.</p>

<p>+ Điện Thoại:&nbsp;088.926.2277 &ndash; (0252).396.2828</p>

<p>Các Bạn Đặt Vé Online Qua Các Phương Tiện Sau</p>

<p>+ Website:&nbsp;<a href="https://phuquyexpress.vn/">https://phuquyexpress.vn</a></p>

<p>+ Facebook:&nbsp;<a href="https://facebook.com/phuquyexpress/">https://facebook.com/phuquyexpress/</a></p>

<p>+ Email:phuquysale.datlich@gmail.com</p>

<p>&nbsp;</p>

<p><strong>2) Tàu Superdong Phú Qúy I&nbsp;</strong></p>

<p>&nbsp; &nbsp; -&nbsp;&nbsp;&nbsp;Thời gian từ Phan Thiết -&nbsp;Phú Qúy và ngược lại 2,5 giờ&nbsp;</p>

<p>&nbsp; &nbsp; -&nbsp; &nbsp;Chỉ có một loại vé ghế ngồi có máy lạnh: 350.000đ</p>

<p><strong>3) Tàu Hưng Phát 26&nbsp;</strong></p>

<p>&nbsp; &nbsp; -&nbsp;&nbsp;&nbsp;Thời gian từ Phan Thiết -&nbsp;Phú Qúy và ngược lại 4&nbsp;giờ đồng.</p>

<p><strong>&nbsp; &nbsp; -&nbsp; Giá vé có 2 loại vé:</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+&nbsp; Ghế ngồi : 250.000đ</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp; Giường nằm có&nbsp;máy lạnh:&nbsp; 350.000đ</p>

<p><em>&nbsp;&nbsp;<u>Ghi chú:</u>&nbsp; Giá trên chưa bao gồm 10% phí dịch vụ.</em></p>

<p>&nbsp;Để thuận tiện cho quý khách đi lại từ đất liền đến đảo Phú Qúy và ngược lại công ty hỗ trợ nhận đặt vé tàu cho các đoàn tour<strong>&nbsp;<a href="dulichbien/trangchu.htm" title="du lịch đảo Phú Qúy" type="du lịch đảo Phú Qúy">du lịch đảo Phú Qúy</a></strong>&nbsp;vì thế đem đến sự an tâm cho quý khách.</p>
', N'NV2       ')
SET IDENTITY_INSERT [dbo].[Khachhang] ON 

INSERT [dbo].[Khachhang] ([IdKH], [TenKH], [Sodienthoai], [Diachi], [Email], [Noidung]) VALUES (1, N'Trần Đan Hùng', N'35667788', N'C8/12/Cách Mạng Tháng 8/Quận 10/TP.HCM', N'trandanhung@gmail.com', NULL)
INSERT [dbo].[Khachhang] ([IdKH], [TenKH], [Sodienthoai], [Diachi], [Email], [Noidung]) VALUES (16, N'Trương Hùng', N'357137815', N'12/05/Lý Thường Kiệt/Quận 3/TP.HCM', N'truongnhatdat5.ndt@gmail.com', N'')
INSERT [dbo].[Khachhang] ([IdKH], [TenKH], [Sodienthoai], [Diachi], [Email], [Noidung]) VALUES (18, N'Huỳnh Hiểu Minh', N'357137815', N'17 Nguyễn Thị Minh Khai/TP Phan Thiết', N'truongnhatdat.ndt@gmail.com', N'Xin liên lạc sớm')
INSERT [dbo].[Khachhang] ([IdKH], [TenKH], [Sodienthoai], [Diachi], [Email], [Noidung]) VALUES (22, N'Phạm Huy Hoàng', N'0377643634', N'15/06/Cách Mạng Tháng Tám/Quận 10/TP.HCM', N'huyhoang1209@gmail.com', N'')
INSERT [dbo].[Khachhang] ([IdKH], [TenKH], [Sodienthoai], [Diachi], [Email], [Noidung]) VALUES (27, N'Phạm văn Ly', N'0357137815', N'17 Nguyễn Thị Minh Khai/TP Phan Thiết', N'phamvanly@gmail.com', N'')
INSERT [dbo].[Khachhang] ([IdKH], [TenKH], [Sodienthoai], [Diachi], [Email], [Noidung]) VALUES (28, N'Nguyễn văn A', N'4662212322', N'15/06/Cách Mạng Tháng Tám/Quận 10/TP.HCM', N'nguyenvana@gmail.com', N'')
INSERT [dbo].[Khachhang] ([IdKH], [TenKH], [Sodienthoai], [Diachi], [Email], [Noidung]) VALUES (30, N'Cao Thái Hà', N'2344234234', N'C9/06/Đường 455/Tăng Nhơn Phú A/Quận 9', N'truongnhatdat5.ndt@gmail.com', N'')
SET IDENTITY_INSERT [dbo].[Khachhang] OFF
SET IDENTITY_INSERT [dbo].[ThongTinDuLich] ON 

INSERT [dbo].[ThongTinDuLich] ([IdTTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (1, N'Trải Nghiệm Du Lịch Khi Đến Đảo Phú Quý', N'du-lich-dao-phu-quy(1).jpg', CAST(0x69400B00 AS Date), N'<h3><span style="font-size:20px"><strong>Trải Nghiệm Du Lịch Đảo Phú Qúy</strong></span></h3>

<p>Trải nghiệm du lịch đảo Phú Qúy điểm ưu thích và thích thú của mọi người khi đi du lịch, hãy đến đảo Phú Qúy một lần để cảm được những gì nơi này mang lại.</p>

<p>Trải nghiệm&nbsp;<em><strong><a href="dulichbien/trangchu.htm" title="trải nghiệm du lịch đảo phú quý" type="trài nghiệm du lịch đảo phú quý">du lịch đảo Phú Qúy</a></strong></em>&nbsp;điểm ưu thích và thích thú của mọi người khi đi du lịch, hãy đến đảo Phú Qúy một lần để cảm nhận&nbsp;được những gì nơi này mang lại cho bạn.</p>

<p>Hòn đảo ngọc hoàng sơ này đã phát triển lên một bước mới về du lịch hiện đại đem đến cơ sở hạ tầng và tầng lớp tri thức phát triển vượt bậc danh tiếng của đảo cũng đã vang ra khắp tỉnh thành Việt Nam và một phần người nước ngoài. Ngày nay chúng ta đến Phú Qúy một cách dễ dàng và an toàn từ phương tiện đến các dịch vụ trên đảo.</p>

<h2><span style="font-size:16px"><strong>Trải Nghiệm Du Lịch Đảo Phú Qúy Có Gì Nào</strong></span></h2>

<p>- Tham quan cảnh đẹp trên đảo</p>

<p>-&nbsp; Ăn hải sản&nbsp;tươi ngon miệng</p>

<p>-&nbsp; Không khí trong lành và cuộc sống yên tĩnh</p>

<p>-&nbsp; Vui chơi hoang sơ trên đảo</p>

<p>-&nbsp; Câu cá ngoài biển gần bờ&nbsp;</p>

<p>-&nbsp; Lặn ngắm san hô&nbsp;</p>

<p>-&nbsp; Ăn uống vui chơi tại Lồng bè trên biển</p>
', N'NV1       ')
INSERT [dbo].[ThongTinDuLich] ([IdTTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (2, N'Hải Sản Đảo Phú Quý Làm xao Xuyến Thực Khách', N'cua-huynh-de-hai-san-du-lich-dao-phu-quy.jpg', CAST(0x5D400B00 AS Date), N'<h3><span style="font-size:20px"><strong>Hải Sản Đảo Phú Qúy</strong></span></h3>

<p>Món đặc sản cua huỳnh đế là món quý giá bậc nhất ở Đảo Phú Qúy</p>

<p>- Món đặc sản cua huỳnh đế là món quý giá bậc nhất ở Đảo Phú Qúy. Cua huỳnh đế có lông nhiều ở cổ và đuôi. Tương truyền rằng, khi vua Gia Long có một cuộc dạo quanh tất cả các hòn đảo của miền Trung, lúc ghé lại Hòn Tranh (một hòn đảo nhỏ sát đảo Phú Quý), vị vua này đã được ngư dân dâng lên thứ sản vật lạ. Càng ăn vua càng khỏe mạnh. Từ đó, ngư dân trên đảo Phú Quý đã đặt tên thứ cua biển này là cua huỳnh đế (còn có tên khác là hoàng đế). Sau này ngư dân thường dùng cua huỳnh đế như một biểu tượng của sự may mắn.</p>

<p>- Cua huỳnh đế thịt rất chắc và độ đạm cực cao, có thể chế biến nhiều món ăn. Nhưng sản phẩm đặc biệt nhất của loại hải sản này là lấy thịt nấu cháo. Người ta gỡ cua ra lấy gạch ở mai và thịt bỏ vào nồi cháo khi đã nhuyễn. Nồi cháo cua huỳnh đế sẽ ngọt và thơm tuyệt. Do có rất nhiều chất đạm nên những người bị bệnh &quot;Gút&quot; thường được ngư dân khuyên không nên ăn vì nó có thể làm bệnh tái phát. Khi khách từ phương xa đến mà được ngư dân trên đảo biếu cua huỳnh đế thì đó là khách quý.</p>

<p>- Tuy nhiên, ra đảo Phú Quý muốn ăn cua huỳnh đế phải đặt trước thì mới có. Do tình trạng khai thác bừa bãi nên sản vật này ngày càng khan hiếm và cua huỳnh đế chỉ có từ tháng 2-7 hằng năm mỗi ký cua huỳnh đế tại đảo Phú Quý hiện có giá từ 5- 6 trăm nghìn đồng. Đến&nbsp;<em><strong><a href="dulichbien/trangchu.htm" title="du lịch đảo Phú Qúy" type="du lịch đảo Phú Qúy">du lịch đảo Phú Qúy</a></strong></em>&nbsp;mà không được ăn thứ hải sản quý giá này quả là một thiệt thòi lớn.</p>

<p>- Để đến đảo Phú Qúy ăn hải sản hoặc xem các loại hải sản khi cần các bạn có thể tham gia vào các&nbsp;<a href="dulichbien/tourphuquy.htm" title="trải nghiệm tour phượt đảo phú quý" type="trải nghiệm tour phượt đảo phú quý"><strong><em>tour phượt đảo Phú Qúy</em></strong></a>&nbsp;hoặc&nbsp;<em><strong><a href="dulichbien/tourphuquy.htm" title="cùng trải nghiệm tour đảo phú quý" type="cùng trải nghiệm tour đảo phú quý">tour đảo Phú Qúy</a>&nbsp;&nbsp;</strong></em>khi tham gia các tour này các bạn sẽ được hướng dẫn viên phục vụ đưa đón , tư vấn tận tình giúp quý khách an tâm khi đến đảo.</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/cua-huynh-de-tour-di-phuot-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>Hình ảnh cua Huỳnh Đế nổi tiếng ở đảo Phú Quý</em></p>
', N'NV1       ')
INSERT [dbo].[ThongTinDuLich] ([IdTTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (3, N'Hướng Dẫn Tự Đi Du Lịch Đến Đảo Phú Quý', N'du-lich-o-dao-phu-quy(1).jpg', CAST(0x67400B00 AS Date), N'<h3><span style="font-size:18px"><strong>Hướng Dẫn Tự Đi Du Lịch Đến Đảo Phú Quý</strong></span></h3>

<p>Là một hòn đảo ngoài khơi Bình Thuận nên để đi ra đảo Phú Quý cần đi bằng tàu thủy, các bạn nên chọn thời điểm mà biển yên lặng từ (tháng 2-8),&nbsp;ít động thì việc đi lại sẽ thuận lợi hơn. Với Bình Thuận và khu vực Nam Trung Bộ, thời gian từ khoảng tháng 9-11 có khả năng cao có bão ảnh hưởng đến vùng này, các bạn nên tránh khoảng thời gian này cho an toàn.</p>

<h3><span style="color:#2ecc71"><strong>Nên du lịch đảo Phú Quý thời gian nào?</strong></span></h3>

<p>Là một hòn đảo ngoài khơi Bình Thuận nên để đi ra đảo Phú Quý cần đi bằng tàu thủy, các bạn nên chọn thời điểm mà biển yên lặng từ (tháng 2-8),&nbsp;ít động thì việc đi lại sẽ thuận lợi hơn. Với Bình Thuận và khu vực Nam Trung Bộ, thời gian từ khoảng tháng 9-11 có khả năng cao có bão ảnh hưởng đến vùng này, các bạn nên tránh khoảng thời gian này cho an toàn.</p>

<p>Khoảng thời gian tháng 6 là bắt đầu mùa bão ở Việt Nam, tuy nhiên lúc này bão lại chỉ quanh quẩn ngoài bắc nên cũng hầu như không ảnh hưởng đến tận Bình Thuận, các bạn có thể lựa chọn thời điểm này để đi&nbsp;<a href="https://dulichbienphuquy.vn/du-lich-dao-phu-quy-n108.html" title="du lịch đảo phú quý" type="du lịch đảo phú quý"><em><strong>du lịch đảo Phú Quý</strong></em></a>&nbsp;vì đáp ứng đủ các điều kiện biển êm + nắng đẹp.</p>

<h3><span style="color:#2ecc71"><strong>Hướng dẫn đi tới đảo Phú Quý</strong></span></h3>

<p>Đảo Phú Quý là một huyện đảo của tình Bình Thuận, cách Tp Phan Thiết khoảng 120km nên để đến được đảo các bạn cần phải đến Tp Phan Thiết trước tiên sau đó ra cảng Phan Thiết để bắt&nbsp;<em><strong>tàu đi đảo Phú Quý</strong></em>.</p>

<h3><span style="color:#2ecc71"><strong>Từ Hà Nội đến Phan Thiết</strong></span></h3>

<p>Để đến được Phan Thiết từ Hà Nội, nếu muốn tiết kiệm thời gian các bạn bắt buộc phải sử dụng ít nhất 2 loại phương tiện kết hợp là máy bay + ô tô/tàu hỏa. Sân bay gần nhất với Bình Thuận là Cam Ranh hoặc Sài Gòn, tùy thuộc vào việc các bạn đặt được vé nào rẻ hơn thì sử dụng cho hành trình của mình. Tuy nhiên, thực tế thì việc bay vào Sài Gòn rồi từ đây đi Phan Thiết tiện hơn bởi từ Sài Gòn có rất nhiều các chuyến xe đi Phan Thiết chạy liên tục, khoảng 2h30-3h tiếng là các bạn sẽ tới Phan Thiết.</p>

<h4><span style="font-size:14px"><span style="color:#2ecc71"><strong>Từ Sài Gòn đến Phan Thiết</strong></span></span></h4>

<p><img alt="" src="/CKFinderJava/userfiles/images/tu-sai-gon-di-phan-thiet.jpg" style="height:333px; width:500px" /></p>

<p><em>Tuyến tàu hỏa Sài Gòn Phan Thiết với thời gian chạy khoảng gần 4 tiếng</em></p>

<p>Sài Gòn cách Phan Thiết khoảng gần 200km, thời gian di chuyển giữa 2 thành phố này sẽ mất khoảng nửa ngày. Các bạn có thể lựa chọn sử dụng phương tiện cá nhân, hoặc lựa chọn phương tiện công cộng tuỳ theo hành trình của mình.</p>

<p><span style="font-size:14px"><span style="color:#2ecc71"><strong>Tàu hoả</strong></span></span></p>

<p>Hàng ngày từ ga Sài Gòn có chuyến tàu SPT1 đi Phan Thiết, khởi hành từ ga Sài Gòn lúc 6h40 sáng và đến ga Phan Thiết vào lúc 10h15. Tàu mới được đầu tư nâng cấp để phục vụ du lịch nên khá đẹp, khu vực sắp xếp hành lý được thiết kế rất rộng để du khách có thể thoải mái để đồ. Hành khách đi tàu được phục vụ miễn phí nước suối và khăn lạnh.</p>

<p>Trên tàu cũng có riêng một toa ăn uống để phục vụ khách đi tàu, phục vụ một số món ăn nước như phở, mì&hellip;ngoài ra còn có cafe và các loại đồ uống khác. Khoang này có khoảng hơn chục bàn có thể chứa được khoảng vài chục người.</p>

<p><span style="color:#2ecc71"><span style="font-size:14px"><strong>Xe giường nằm</strong></span></span></p>

<p>Hiện có rất nhiều nhà xe chạy từ Sài Gòn (và một số tỉnh khác) đi Phan Thiết. So với tàu hoả, vé xe giường nằm đi Phan Thiết sẽ rẻ hơn, thời gian chạy đa dạng hơn nên sẽ có nhiều lựa chọn hơn so với việc đi tàu.</p>

<h3><span style="color:#2ecc71"><strong>Từ Phan Thiết đi Phú Qúy</strong></span></h3>

<p>Từ Phan Thiết, các bạn di chuyển tới cảng Phan Thiết để có thể bắt tàu đi đảo Phú Quý, hiện tại từ Phan Thiết đi Phú Quý có 3 tàu thường, 1 tàu trung tốc và 2 tàu cao tốc đi đảo. Giờ tàu và lịch chạy tàu sẽ được cập nhật trên website của Sở giao thông vận tải Bình Thuận và sẽ thay đổi tùy thuộc theo thời tiết biển. Các bạn có thể theo dõi lịch tàu chạy&nbsp;<a href="http://sgtvt.binhthuan.gov.vn/wps/portal/home/tintuc/!ut/p/c5/04_SB8K8xLLM9MSSzPy8xBz9CP0os3hfRxMDTyNnA3cLPzdDA88woxBfc89gQx9zA6B8JE75AD8TArq99KPSc_KTgPaEg2zGbxJI3gAHcDTQ9_PIz03VL8iNqAwOSFcEAEvtS_k!/dl3/d3/L0lDU0lKSWdra0EhIS9JTlJBQUlpQ2dBek15cUEhL1lCSlAxTkMxTktfMjd3ISEvN19POUEwMUk0MUhHQzJEMEE1SVE0M0xSM1M4MQ!!/?WCM_PORTLET=PC_7_O9A01I41HGC2D0A5IQ43LR3S81_WCM&amp;WCM_GLOBAL_CONTEXT=/wps/wcm/connect/sbn_gtvt_vi/sbn_gtvt/kho_noi_dung/thong_bao/588d12804399b330ad1abf2eca61b102&amp;cur_id=588d12804399b330ad1abf2eca61b102"><strong>tại đây</strong></a>. Với tàu trung tốc, thời gian di chuyển sẽ mất 4 tiếng cho mỗi chiều đi, với tàu cao tốc thời gian được rút ngắn chỉ còn khoảng 2,5h.</p>

<ul>
	<li>Đặt tàu từ Phú Quý đi Phan Thiết và ngược lại:&nbsp;<strong>0965.145.145</strong></li>
</ul>

<p>Thời gian bán vé hàng ngày từ 7h30 đến 11h sáng và từ 14h-17h chiều. Các bạn chú ý giờ, tránh đến vào thời gian nghỉ trưa để mất công chờ đợi.</p>

<h3><span style="color:#2ecc71"><strong>Đi lại trên đảo Phú Quý</strong></span></h3>

<p>Trên đảo khá rộng nhưng không có phương tiện công cộng nên để di chuyển trên đảo phương tiện phù hợp nhất là xe máy, các bạn có thể thuê xe máy trên đảo với chi phí khoảng 100k một ngày.</p>

<h3><span style="color:#2ecc71"><strong>Lưu trú tại đảo Phú Quý</strong></span></h3>

<p>Đảo tuy nhỏ nhưng cũng có khá nhiều hộ gia đình kinh doanh các dịch vụ&nbsp;<strong>khách sạn</strong>,&nbsp;<strong>nhà nghỉ</strong>&nbsp;và cả&nbsp;<strong>homestay</strong>. Tuy nhiên các bạn nên chủ động gọi điện đặt phòng trước khi ra đảo bởi số lượng khách&nbsp;<em><strong>du lịch đảo Phú Qúy</strong></em>&nbsp;cũng khá nhiều nên đôi khi cũng xảy ra trường hợp số lượng phòng không đủ so với số lượng du khách.</p>

<h3><span style="color:#2ecc71"><strong>Các địa điểm du lịch ở đảo Phú Quý</strong></span></h3>

<h4><span style="color:#e74c3c"><strong>Hải đăng Phú Quý</strong></span></h4>

<p>Núi Cấm là một trong hai ngọn núi ở Đảo Phú Quý với độ cao 108m so với mực nước biển, cách Cảng Phú Quý khoảng 3 km về hướng tây, nằm trên địa bàn xã Ngũ Phụng. Trên đỉnh núi Cấm có một ngọn Hải đăng thuộc loại lớn nhất Việt Nam.</p>

<p>Hải Đăng Phú Quý cao 18m, tháp đèn hình vuông. Bên dưới chân tháp là tòa nhà 2 tầng dành cho nhân viên trực đèn. Đèn có tầm chiếu xa 22 hải lý, tọa độ của đèn là 10 độ 32&rsquo;05&rsquo;&rsquo; vĩ độ Bắc, 108 độ 55&rsquo;07&rsquo;&rsquo; kinh kinh độ Đông.&rdquo; Ngọn Hải đăng này có tác dụng giúp tàu thuyền hoạt động trong vùng biển Phú Quý xác định được vị trí của mình, ngoài ra nó còn có mục đích quan trọng là xác định chủ quyền biển đảo đất nước.</p>

<p>Muốn chinh phục ngọn Hải đăng, du khách phải đi bộ, leo núi với hơn 120 bậc đá men theo sườn núi, dài khoảng 200m. Từ đây chúng ta có thể thu vào tầm mắt toàn cảnh Phú Quý, là điểm ngắm cảnh lý tưởng cho du khách với phong cảnh hết sức hữu tình và nên thơ.</p>

<h4><span style="color:#e74c3c"><strong>Chùa Linh Bửu</strong></span></h4>

<p>Khởi nguyên Chùa được xây dựng đơn sơ để có nơi tín đồ sinh hoạt, gồm ngôi chánh điện và nhà giảng. Năm 1999 tín đồ xây dựng nơi đây một Bảo Tháp rất uy nghi, Tổng hợp hài hòa giữa nét văn hóa Thái Lan và Việt Nam để tôn trí nhục thể của Hòa Thượng Tường Kim. Hiện nay Chùa Linh Bửu đã được Ban hộ tự phát tâm đại trùng tu thành một ngôi phạm vụ trang nghiêm. Chánh điện được xây dựng bằng bê tông cốt sắt có tiền đường và cổ lầu. Trên cổ lầu được trang trí rồng phượng rất đẹp. Đứng từ xa nhìn vào Chùa ẩn hiện trong những tàng cổ thụ, thấp thoáng khi ẩn khi hiện khiến cho tâm hồn ta được nhẹ nhàng thoát tục.</p>

<h4><span style="color:#e74c3c"><strong>Chùa Thạnh Lâm</strong></span></h4>

<p>Chùa Thạnh Lâm tọa lạc tại xã Ngũ Phụng huyện Phú Quý, được tạo dựng vào cuối thế kỷ XVIII. Tại chùa còn lưu giữ trên 30 tượng Phật cổ với nhiều chất liệu như: đồng, gỗ và đất nung. Quần thể kiến trúc chùa Thạnh Lâm gồm nhiều hạng mục có quy mô bề thế, trang nghiêm đan xen giữa lối kiến trúc cổ kính và kiến trúc hiện đại như: Cổng Tam quan, Bảo tháp, Tháp bia, Tháp chuông, Chính điện và nhà Tổ.</p>

<p>Đến với chùa Thạnh Lâm ngoài việc vãng cảnh, bái Phật còn được thưởng thức những nét đặc sắc của một công trình kiến trúc Phật giáo bề thế trên đảo Phú Quý, trong đó nổi bật là ngôi Bảo tháp 7 tầng và Đại hồng chung nặng 1,2 tấn được xem là những công trình kiến trúc, hiện vật lớn và đẹp nhất hiện nay tại các di tích ở Bình Thuận.</p>

<h4><span style="color:#e74c3c"><strong>Lăng cô Mỹ Khê (Vạn Mỹ Khê)</strong></span></h4>

<p>Vạn Mỹ Khê được tạo lập từ năm 1785, đến nay đã trải qua hơn 231 năm tồn tại. Vạn là thiết chế tín ngưỡng dân gian gắn liền với tập tục thờ cúng cá voi của ngư dân làng Mỹ Khê qua nhiều thế hệ trong cuộc sống mưu sinh trên biển đảo. Sự tồn tại của di tích gắn liền với quá trình khai khẩn đất đai, tạo lập làng xóm và xây dựng lăng vạn của các thế hệ cha ông ngày trước.</p>

<p>Hàng năm, tại vạn Mỹ Khê diễn ra 3 kỳ tế lễ chính vào dịp xuân thu nhị kỳ theo tập tục &ldquo;xuân cầu thu báo&rdquo; và lễ kỵ Cố vào ngày 20 tháng tư âm lịch. Lễ tế xuân diễn ra trong khoảng thời gian từ tháng giêng đến tháng ba âm lịch, mục đích của nghi lễ này để khẩn cầu thần Nam Hải phù trợ cho quốc thái dân an, mưa thuận gió hòa, mùa màng bội thu, thuyền ra khơi đánh bắt đầy tôm cá. Tế thu trong khoảng thời gian từ tháng bảy đến tháng chín âm lịch, mục đích của nghi lễ này để tạ lễ, báo đáp thần Nam Hải đã phù hộ, độ trì và bảo trợ cho dân làng qua một năm làm ăn gặp nhiều thuận lợi, may mắn để có một cuộc sống khấm khá và sung túc.</p>

<p>Lễ kỵ Cố diễn ra ngày 20 tháng tư âm lịch, đây cũng là dịp lễ hội chính yếu và quan trọng nhất hàng năm của vạn. Đây là lễ tế vị thần Nam Hải đầu tiên lụy và trôi dạt vào bờ được ngư dân làng Mỹ Khê làm lễ an táng, thượng ngọc cốt và đưa vào lăng tẩm để thờ phụng theo tập tục, tín ngưỡng dân gian lâu đời của ngư dân vùng biển.</p>

<h4><span style="color:#e74c3c"><strong>Vạn An Thạnh</strong></span></h4>

<p><span style="color:#e74c3c"><strong><img alt="" src="/CKFinderJava/userfiles/images/van-an-thanh.jpg" style="height:333px; width:500px" /></strong></span></p>

<p><em>Vạn An Thạnh hiện còn lưu giữ rất nhiều bộ xương cá voi</em></p>

<p>Vạn An Thạnh tọa lạc trên một bãi cát trắng sát cạnh bờ biển thuộc làng Triều Dương, xã Tam Thanh, huyện Phú Quý. Vạn ở vị trí cách trung tâm huyện khoảng 2.5km về hướng Đông Nam. Vạn An Thạnh được kiến tạo hoàn chỉnh năm Tân Sửu 1781 theo lối kiến trúc dân gian của người Việt như dạng đình làng trong đất liền, các kiến trúc chính gồm chính điện, nhà Tiền hiền, Võ ca. Bên trong vạn còn có chỗ chứa xương cốt cá voi gọi là Tẩm.</p>

<p>Vạn An Thạnh đến nay còn lưu giữ gần 100 bộ xương cốt (gồm cá voi, rùa da). Có thể coi đây là một bảo tàng Hải dương học với những bộ sưu tập phong phú về cá Voi.</p>

<h4><span style="color:#e74c3c"><strong>Bãi Triều Dương</strong></span></h4>

<p>Bãi Triều Dương nằm trong Vịnh Triều Dương, chỉ cách cảng Phú Qúy khoảng chừng 1km, với bãi cát phẳng và rộng, trắng mịn, nước biển trong xanh, trên bờ có một rừng dương rợp bóng nên đây là điểm đến lý tưởng để cắm trại, tắm biển. Với người dân địa phương thì đây là nơi để nghỉ mát ban trưa hay hóng gió biển mỗi chiều về.</p>

<h4><span style="color:#e74c3c"><strong>Bãi đá đảo Phú Quý</strong></span></h4>

<p>Bãi đá nằm ngay khu vực cột cờ, nhìn thẳng ra biển. Đây là nơi có phong cảnh đẹp để các bạn có thể làm một bộ ảnh sống ảo giữa bao la biển trời.</p>

<h4><span style="color:#e74c3c"><strong>Bãi Nhỏ Gành Hang</strong></span></h4>

<p>Là một trong những bãi tắm đẹp của Phú Quý với hình lưỡi liềm được giới hạn bởi những mũi đá nhô ra biển. Bãi cát tuy nhỏ nhưng rất thoáng đãng và yên tĩnh. Nước biển ở đây trong xanh, ít ghe thuyền neo đậu, không khí trong lành, là nơi lý tưởng cho bất cứ du khách nào muốn hòa mình vào với thiên nhiên.</p>

<h4><span style="color:#e74c3c"><strong>Cột cờ đảo Phú Quý</strong></span></h4>

<p>Cột cờ Tổ quốc tại đảo Phú Quý được xây dựng ở thôn Triều Dương, xã Tam Thanh với chiều cao 22,6 m, bằng bê tông cốt thép, mặt hướng ra biển. Công trình có kiến trúc gồm đài cột, thân cột cờ, bậc thềm và khuôn viên xung quanh. Phần móng được chôn sâu dưới lớp đá với kỹ thuật kết cấu móng thường sử dụng cho những ngọn hải đăng vững chắc. Cờ vải kích thước 4 x 6m được may với chất liệu vải bền vững với đặc thù gió biển.</p>

<p>Cột cờ trên đảo Phú Quý như một tấm bia chủ quyền vững chãi giữa biển, khẳng định vùng lãnh thổ trên biển của Việt Nam.</p>

<h4><span style="color:#e74c3c"><strong>Dinh mộ Thầy Sài Nại</strong></span></h4>

<p>Đền thờ (Dinh Thầy) được người dân trên đảo xây dựng vào cuối thế kỷ XVII để thờ thầy Sài Nại. Thầy Sài Nại là tên gọi kính cẩn của người dân trên đảo đối với vị thương gia người Hoa đã có công bảo bọc, chở che và cưu mang người dân xứ đảo qua nhiều thế hệ. Đền thờ tọa lạc trên một ngọn đồi cao tại thôn Phú An, xã Ngũ Phụng (riêng mộ của Thầy nằm ở Thôn Đông Hải, xã long Hải).</p>

<p>Hàng năm tại đền thờ thầy Sài Nại diễn ra lễ hội chính vào ngày mùng 4 tháng tư âm lịch, người dân trên đảo gọi là lễ Giao phiên kỵ Thầy. Đây là mốc thời điểm kết thúc phiên trách thờ phụng, cúng tế của làng trước đó và chuyển giao phiên trách lại cho làng kế tiếp; làng đến phiên thờ phụng sắc phong phải sắm sửa đoàn lễ theo đúng tập tục gồm (kiệu, cờ đại, cờ trung, cờ tiểu, tàng, lọng, chiêng, trống, bát bửu&hellip;) để tiếp nhận và thỉnh sắc phong về an vị và thờ phụng tại làng mình.</p>

<h4><span style="color:#e74c3c"><strong>Đền thờ công chúa Bàn Tranh</strong></span></h4>

<p>Đền thờ công chúa Bàn Tranh được gọi theo tên của công chúa vương quốc Chămpa là Bàn Tranh. Đền thờ do người Chăm xây dựng vào cuối thế kỷ XV đầu thế kỷ XVI để thờ công chúa Bàn Tranh, toạ lạc tại xã Long Hải.</p>

<p>Truyền thuyết kể rằng, công chúa Bàn Tranh vì không nghe lời vua cha nên bị kết tội phản nghịch và bị lưu đày ra hoang đảo. Nàng được ban cho một số nô tỳ để hầu hạ và một chiếc thuyền buồm làm phương tiện ra đi. Từ đó họ bắt đầu vỡ đất, làm nương, câu cá và tạo lập cuộc sống mới trên đảo hoang. Công chúa Bàn Tranh là người có công đầu trong việc đưa lên đảo những giống lương thực, hoa màu và hướng dẫn người dân trên đảo khai khẩn đất đai làm ruộng vườn, hình thành xóm làng và chỉ dạy người dân cách trồng trọt, làm nghề&hellip;. Với những công lao to lớn đó, người Chăm nói riêng và nhân dân trên đảo Phú Quý nói chung đã tôn vinh gọi đền thờ công chúa Bàn Tranh hay đền thờ Bà Chúa Xứ.</p>

<h4><span style="color:#e74c3c"><strong>Núi Cao Cát</strong></span></h4>

<p>Là một quần thể thắng cảnh đẹp của Phú Quý. Núi Cao Cát được dân đảo xem như ngọn núi thiêng, tọa lạc ở phía Bắc đảo, nơi đây có tượng Phật Bà Quan Âm rất uy nghi được đặt trên đỉnh núi. Từ trên đỉnh Cao Cát, du khách có thể phóng tầm mắt xuống cả một vùng không gian rộng lớn quanh đảo.</p>

<h4><span style="color:#e74c3c"><strong>Phong điện Phú Quý</strong></span></h4>

<p>&ldquo;Phong điện&rdquo; là những chiếc quạt gió được xây dựng để tạo ra nguồn điện phục vụ cho người dân trên đảo. Trên đảo hiện có 3 cây quạt gió, được biết mỗi cây có chiều cao là 60m, và chiều dài của cánh quạt là 37m. Từ trên ngọn hải đăng và đỉnh núi chùa Linh Sơn bạn có thể dễ dàng nhìn thấy những chiếc quạt gió khổng lồ này. Đặc biệt, đường ra tham quan những cây quạt gió này rất đẹp, một bên là biển, một bên là những hàng dương trồng dọc hai bên đường đi trông rất đẹp mắt.</p>

<h4><span style="color:#e74c3c"><strong>Chợ hải sản Phú Quý</strong></span></h4>

<p>Từ khi Phú Quý được biết đến là một địa chỉ du lịch, huyện đảo Phú Quý đã đầu tư, quản lý các khu chợ cá bài bản hơn, phục vụ du khách sau khi đến đây tham quan, du lịch, mua hải sản tươi sống ngay tại bãi biển mang về đất liền. Các phiên chợ cá dần trở thành nơi trao đổi mua bán trực tiếp giữa ngư dân và khách du lịch. Dọc bờ biển Phú Quý có rất nhiều điểm chợ bán hải sản, tuy nhiên khu chợ tại cảng Phú Quý là nơi tập trung nhiều tàu thuyền nhất và cũng là chợ hải sản lớn nhất trên đảo.</p>

<h4><span style="color:#e74c3c"><strong>Hòn Tranh</strong></span></h4>

<p>Hòn Tranh, một hòn đảo nhỏ nằm giữa bốn bề sóng vỗ, cách đảo lớn (Phú Quý) khoảng 15 phút đi xuồng máy. Hòn Tranh nổi lên như một niềm kiêu hãnh giữa đại dương bao la ngập sóng. Gọi là hòn Tranh, vì lúc xưa nơi đây mọc nhiều cỏ tranh, người dân từ hòn lớn qua hòn Tranh làm rẫy, cắt cỏ tranh về lợp mái nhà. Theo những người cao tuổi ở đảo kể lại: &ldquo;trước đây, hàng năm vào mùa gió Bấc, hải vật thường tấp vào bãi nồm của hòn Tranh, người ta lập đội Hải Môn để đi lấy. Trên hòn Tranh có Miếu thờ một vị tướng đã bảo vệ cho Nguyễn Phúc Ánh khi bị quân Tây sơn truy đuổi, được sắc vua Minh Mạng phong chức &ldquo;Bắc Quân Đô Đốc Phủ Chưởng Phủ Sư Tạng Thái Bảo Trấn Thủ Quân Chi Thần&rdquo;. Năm 1976, Tôn Thất Quỳ, nha phái viên hành chính của chế độ cũ đặt thêm trong Miếu thờ ảnh Vua Gia Long.</p>

<h3><span style="color:#2ecc71"><strong>Ăn gì ở đảo Phú Quý</strong></span></h3>

<h4><span style="color:#e74c3c"><strong>Cua mặt trăng</strong></span></h4>

<p>Món cua mặt trăng là đặc sản quý hiếm vào hàng bậc nhất ở đảo Phú Quý. Những hình tròn màu đỏ đậm, pha vào màu hồng tươi trên mai cua trông như mặt trăng chính là lý giải cho cái tên đặc biệt của loài cua này.</p>

<p>Cua mặt trăng sống ẩn náu trong các khe đá san hô, nổi tiếng vì thịt rất ngọt thơm, săn chắc, nhất là khi trăng mọc, trong khi các loài cua khác lại thường bị ốp vào thời kỳ này. Cua đem hấp hoặc nướng than, mang ra chấm với muối tiêu chanh, thịt cua ngon đến mức chỉ nếm qua một lần, bạn sẽ nhớ mãi.</p>

<h4><span style="color:#e74c3c"><strong>Cua Huỳnh Đế</strong></span></h4>

<p>Cua huỳnh đế màu đỏ hồng, mai hình vuông. Đầu cua dài, càng và que ngắn. Loại cua này có rộ nhất là vào tháng 12 Âm lịch.</p>

<p>Thịt cua không chỉ chắc, mà phần gạch cua còn thơm và béo ngậy. Cua huỳnh đế có thể chế biến nhiều cách như hấp, nướng than, nhưng đặc biệt phải kể đến món cháo.</p>

<p>Cua được rửa sạch đem hấp chín để giữ độ ngọt. Tách lấy phần gạch để riêng, phần thịt cua ướp gia vị rồi xào sơ trong chảo dầu cho thấm. Cháo nhừ, cho thịt cua vào, sôi lên lại cho tiếp gạch cua, hành tây cắt lát, hành ngò và rắc tiêu. Tô cháo có màu vàng của lớp mỡ, màu đỏ của gạch cua, màu trắng của thịt cua, vừa bắt mắt vừa hấp dẫn tuyệt vời.</p>

<h4><span style="color:#e74c3c"><strong>Ốc nhảy Phú Quý</strong></span></h4>

<p>Ốc nhảy là món ăn nổi tiếng ở các vùng biển đảo Việt Nam như Phú Quý, Trường Sa,&hellip; Loại ốc này chỉ có ở các vùng biển ấm nóng. Ốc nhảy có miếng mày cứng làm dụng cụ để nhảy di chuyển.</p>

<p>Sở dĩ gọi đây là ốc nhảy vì ốc có cách di chuyển độc đáo, ốc dùng vảy chân cắm xuống mặt đáy rồi thu người búng mạnh để di chuyển, tùy theo dòng chảy mà có khi ốc búng được xa đến gần nửa mét.</p>

<p>Thịt của ốc nhảy rất giòn, thịt ngọt và béo, là một trong những đặc sản ngon trong các loại ốc. Ốc nhảy phù hợp để làm món hấp sả, nướng mọi&hellip;.mỗi món có mùi vị đặc trưng riêng biệt nhưng vẫn phổ biến nhất vẫn là hấp sả kèm theo chén mắm gừng ngon tuyệt vời&hellip;..</p>

<h4><span style="color:#e74c3c"><strong>Tôm hùm</strong></span></h4>

<p>Tại cầu cảng hay các nhà hàng hải sản địa phương đều có đặc sản này. Có rất nhiều cách chế biến để bạn thưởng thức hương vị hấp dẫn của tôm hùm như hấp, nướng, làm gỏi, nấu cháo&hellip;.. Tôm khi chín, bóc hết vỏ lộ ra lớp thịt trắng ngần với từng thớ thịt rất săn chắc, ngon lành.</p>

<h4><span style="color:#e74c3c"><strong>Cá mú đỏ</strong></span></h4>

<p>Loại cá này được xem là số một khi nói đến độ chắc ngọt của thịt cá, cùng mùi thơm tự nhiên. Để nếm được trọn vẹn vị ngon, người ta thường ăn món cá mú đỏ hấp gừng.</p>

<p>Cá hấp với gừng, hành bào, nước tương, vừa chín tới, sẽ có lớp da đỏ tươi béo giòn, thớ thịt trắng phau cùng mùi hương thơm lừng hấp dẫn khứu giác lẫn vị giác. Ngoài ra, món cá mú chiên sốt me cũng là một lựa chọn rất hấp dẫn dành cho các thực khách.</p>

<h4><span style="color:#e74c3c"><strong>Cá mú bông</strong></span></h4>

<p>Cá mú bông ở đảo Phú Quý tươi rói, thân đẫy đà trơn mướt. Cá mú bông chỉ ăn mồi sống như tôm, cua nên thịt thơm và ngon ngọt, thường được nấu chua hoặc xào với cà, khế, rau mùi.</p>

<p>Tuy nhiên, đặc sắc nhất phải kể đến lớp da của cá màu đen dày 1 cm, lốm đốm vàng nghệ, đôi chỗ ngả màu cam, tưởng chừng tươm mỡ. Da cá được đem phơi thật khô rồi cắt miếng nhỏ, rang cát, ngâm nước cho nở phồng, trộn đều với đậu phộng rang, rau răm cắt nhỏ, tỏi, ớt, nước mắm.</p>

<h4><span style="color:#e74c3c"><strong>Hải sâm</strong></span></h4>

<p>Theo ngư dân, ở đây có khoảng 100 loài hải sâm nhưng chủ yếu phân biệt được 10 loại. Hải sâm còn gọi là đồn đột, là món ăn quý và đắt tiền vì chúng cung cấp nguồn dinh dưỡng cao, đồng thời có tác dụng như một loại thuốc bổ. Hải sâm thường được nấu với các vị thuốc bắc cùng thịt bồ câu, gà ác, móng heo, chân bò, gân nai.</p>

<p><span style="color:#e74c3c"><strong>Cá thu</strong></span></p>

<p><strong>Đảo Phú Quý</strong>&nbsp;vốn có tên là cù lao Thu, vì ở đây có rất nhiều cá thu. Cá thu trên đảo đặc biệt thơm ngon và được chế biến thành rất nhiều món mang hương vị rất đặc trưng.</p>

<h4><span style="color:#e74c3c"><strong>Các món mực</strong></span></h4>

<p>Nói về&nbsp;<strong>hải sản Phú Quý</strong>, không thể không kể đến các loại mực, đặc biệt là loại mực cơm. Mực cơm Phú Quý tươi, săn chắc và rất nhiều cơm trong mỗi con mực. Ngư dân Phú Quý tự hào khi mực cơm trên đảo chiếm khoảng 30% mực của cả nước, được ví như là &ldquo;đảo mực&rdquo; của cả nước.</p>

<h4><span style="color:#e74c3c"><strong>Bò nóng Phú Quý</strong></span></h4>

<p>Phú Quý là đảo nên nổi tiếng về hải sản là điều không gì lạ. Nhưng đặc biệt là ở đây còn nức danh với món &ldquo;bò nóng&rdquo;. Bò Phú Quý được chăn thả, cho ăn cỏ tự nhiên nên thịt mềm ngọt, săn chắc, ít mỡ. Bò nóng ý chỉ thịt bò tươi được làm và bán hết trong ngày nên đảm bảo hương vị thơm ngon hơn hẳn.</p>

<p>Khách có thể chọn thịt tươi tại chỗ, tự chế biến thành nhiều món đa dạng. Có thể kể đến món bò tái chanh cuốn rau sống, bò nướng thơm lừng da giòn mềm không dai, bò xào lăn, bò hấp gừng. Và không thể không nhắc món cháo bò.</p>

<h3><span style="color:#2ecc71"><strong>Lịch trình đi du lịch&nbsp;đảo Phú Quý</strong></span></h3>

<p>Một số lịch trình&nbsp;<a href="https://dulichbienphuquy.vn/tour-phuot-phan-thiet-phu-quy-3-ngay-2-dem-tour25.html" title="đi tour phượt đảo Phú Qúy" type="đi tour phượt đảo Phú Qúy"><strong>đi phượt đảo Phú Quý</strong></a>&nbsp;hoặc&nbsp;<a href="https://dulichbienphuquy.vn/tour-phan-thiet-phu-quy-2-ngay-1-dem-tour26.html" title="tour đảo Phú Qúy" type="tour đảo Phú Qúy"><strong>tour đảo Phú Qúy</strong></a>&nbsp;để các bạn tham khảo. Do phải đến được Phan Thiết trước khi đi ra đảo nên các bạn có thể sắp xếp thêm thời gian để kết hợp du lịch Mũi Né và du lịch Phan Thiết.</p>

<h3><span style="color:#2ecc71"><strong>Sài Gòn &ndash; Phan Thiết &ndash; Phú Quý &ndash; Sài Gòn</strong></span></h3>

<p><strong>Ngày 1: Sài Gòn &ndash; Phan Thiết</strong></p>

<p>Khởi hành từ Sài Gòn lúc sáng sớm đến khoảng trưa các bạn có mặt ở Phan Thiết. Tìm một homestay nào đó ở lại 1 đêm, tranh thủ khám phá một vài địa điểm du lịch ở Tp Phan Thiết.</p>

<p><strong>Ngày 2: Phan Thiết &ndash; Phú Quý</strong></p>

<p>Sáng có mặt ở cảng tàu đi đảo Phú Quý, tùy tàu mà thời gian ra đảo mất khoảng từ 2-6 tiếng. Nói chung khoảng đầu giờ chiều có mặt ở Phú Quý</p>

<p>Nhận phòng, nghỉ ngơi ăn trưa rồi thuê xe máy đi khám phá đảo</p>

<p>Đi một vòng núi Cao Cát, chùa Linh Sơn, hải đăng Phú Quý, hệ thống phong điện, Gành Hang và cột cờ Phú Quý</p>

<p>Chiều tối về khách sạn nghỉ ngơi rồi đi ăn.</p>

<p><strong>Ngày 3: Khám phá Phú Quý</strong></p>

<p>Dậy sớm để ngắm bình minh trên đảo. Khu vực Gành Hang hoặc bãi Triều Dương khá phù hợp.</p>

<p>Ăn sáng, uống cafe và tiếp tục khám phá đảo</p>

<p>Trưa có thể lựa chọn một nhà bè nào đấy để thưởng thức hải sản tươi sống. Chiều tắm biển rồi tiếp tục khám phá các địa điểm còn lại trên đảo</p>

<p>Tối nghỉ ngơi trên đảo một đêm nữa, có thể lượn lờ quanh đảo để uống cafe</p>

<p><strong>Ngày 4: Phú Quý &ndash; Phan Thiết &ndash; Sài Gòn</strong></p>

<p>7h sáng tàu từ Phú Quý về lại Phan Thiết. Đến khoảng trưa có mặt lại ở Tp Phan Thiết, nghỉ ngơi ăn một vài món ngon ở Phan Thiết.</p>

<p>Chiều quay lại Sài Gòn, kết thúc hành trình.</p>

<h3><strong>Một số lưu ý khi đi đảo Phú Quý</strong></h3>

<p><strong>Có cần đặt vé trước khi ra đảo?</strong></p>

<p>Có, các bạn nên đặt vé trước khi ra đảo nhất là vào những dịp lễ tết, lượng người dân sinh sống trên đảo khá nhiều nên những dịp này cộng thêm với lượng du khách đổ về, rất khó để mua vé tàu.</p>

<p><strong>Người nước ngoài có được đi đảo Phú Quý</strong></p>

<p>Do là khu vực đặc biệt nên đảo Phú Quý khá hạn chế người nước ngoài đến đảo. Tuy nhiên nếu muốn, du khách nước ngoài hoàn toàn có thể xin giấy phép đến đảo.</p>

<p><strong>Đảo Phú Quý có ATM hay ngân hàng không?</strong></p>

<p>Có, ngoài đảo Phú Quý có ngân hàng Agribank và ATM của ngân hàng này. Tuy nhiên để tránh các trường hợp rủi ro, các bạn nên rút và mang theo lượng tiền đủ cho những ngày ở đây trước khi ra đảo.</p>
', N'NV1       ')
INSERT [dbo].[ThongTinDuLich] ([IdTTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (4, N'Vẻ Đẹp Du Lịch Biển Phú Quý', N'tour-phuot-dao-phu-quy.jpg', CAST(0x5D400B00 AS Date), N'<h3><span style="font-size:20px"><strong>Vẻ Đẹp Du Lịch Biển Phú Qúy</strong></span></h3>

<p>Đảo Phú Quý Được Bình Chọn Là Một Trong Những Bãi Biển Đẹp Nhất Biển Đông.Đảo Phú Qúy cũng đã được công nhận đảo du lịch,vì thế đây là địa điểm ưu thích của các&nbsp;<strong><em>tour đảo Phú Qúy</em></strong></p>

<h2><span style="font-size:18px"><strong>Tham Quan Biển Đảo Phú Qúy Cùng Tour Phượt Đảo Phú Qúy</strong></span></h2>

<h3><span style="font-size:16px"><strong>Xung Quanh Đảo Phú Qúy Có Những Hòn Đảo Lân Cận</strong></span></h3>

<p><strong>Hòn Tranh</strong>&nbsp;- Cách cảng Phú Quý 600m, nằm phía đông nam đảo Phú Quý với diện tích gần 40 ha (2.8Km2). - Trước đây là một hoang đảo chủ yếu là cỏ tranh, được nhân dân phá trồng hoa màu, hiện nay đang được trồng rừng phục hồi môi trường. - Không có dân cư sinh sống. - Hiện là nơi đặt trạm ra-đa quan sát biển của lực lượng hải quân nhân dân Việt Nam.</p>

<p><strong>Hòn Đen</strong>&nbsp;- Nằm phía đông bắc thuộc xã Long Hải, cách bờ khoảng 1.5&nbsp;km. - Gồm toàn đá mẹ Bazan chưa phong hóa. - Vào những lúc nước ròng có thể lội bộ ra Hòn Đen.</p>

<p><strong>Hòn Trứng</strong>&nbsp;- Nằm phía tây bắc, là cửa ngõ ra vào đảo, cách Phú Quý 13&nbsp;km. - Là điểm tựa của nhiều loại ghe thuyền. - Mùa gió Nam thuyền có thể neo đậu ở phía bắc - Mùa gió Bắc có thể neo đậu ở phía nam.</p>

<p><strong>Hòn Giữa</strong>&nbsp;- Đây là một dãy gành đá bén nhọn nằm cạnh Hòn Đen, nằm vắt ngang như một nhịp cầu nối liền Hòn Đen và Hòn Đỏ thuộc xã Long Hải.</p>

<p><strong>Hòn Đỏ</strong>&nbsp;- Nằm phía đông bắc thuộc xã Long Hải, cách bờ khoảng 1.5&nbsp;km. - Có tên là Hòn Đỏ vì ở đây toàn là đá màu đỏ.</p>

<p><strong>Hòn Hải</strong>&nbsp;- Cách đảo Phú Quý 70&nbsp;km. - Có hình dạng là một khối đá vuông cạnh mọc thẳng đứng. - Là một trong các điểm cơ sở nằm trên đường cơ sở của Việt Nam.</p>

<p><strong>Hòn Đồ Lớn</strong>&nbsp;- Nằm phía đông nam và cách Phú Quý 60&nbsp;km - Là hòn đảo mới hình thành năm 1923 do hoạt động phun trào dưới lòng biển Đông. Lúc đầu có dạng hình tròn với đường kính 40 m, trên mặt có cát trắng và xung quanh có cạnh bậc thang thoai thoải. - Hiện nay hình thành một bãi đá ngầm dài 700 m và rộng gần 500 m.</p>

<p><strong>Hòn Đồ Nhỏ</strong>&nbsp;- Nằm về hướng nam, cách đảo Phú Quý chừng 60&nbsp;km.</p>

<p><strong>Hòn Đá Tý</strong>&nbsp;- Cách đảo Phú Quý 80&ndash;100 m.</p>

<h3><span style="font-size:16px"><strong>Tham Quan Các Hòn Đảo Trên Bằng Cách Nào</strong></span></h3>

<p>Để tham quan được các hòn đảo lân cận các bạn phải có mặt tại&nbsp;<strong>đảo Phú Qúy</strong>&nbsp;rồi chuẩn bị kế hoạch một chuyến đi tham quan đảo, nhưng để có một kế hoạch an toàn, thuận tiện và chu đáo thì hãy đến&nbsp;<strong>du lịch biển Phú Qúy</strong>&nbsp;có&nbsp;<em><strong><a href="https://dulichbienphuquy.vn/cano-tham-quan-cac-dao-nho-phu-quy-tour34.html" title="tour tham quan các đảo nhỏ" type="tour tham quan các đảo nhỏ">tour tham quan các đảo nhỏ</a>&nbsp;</strong></em>các bạn vào xem để biết được chi tiết và quy trình đi tham quan. Không dừng lại ở đó để đến xem vẻ đẹp&nbsp;<strong>du lịch biển Phú Qúy</strong>&nbsp;các du khách ở đất liền có thể chọn cho mình những&nbsp;<strong><em><a href="https://dulichbienphuquy.vn/tour-dao-phu-quy-den-dao-phu-quy-n110.html" title="tour đảo phú quý" type="tour đảo phú quý">tour đảo Phú Qúy</a></em>&nbsp;</strong>rồi sau đó<strong>&nbsp;</strong>đến đảo rồi các bạn có&nbsp;quyền lựa&nbsp;chọn đăng ký&nbsp;cho mình những tour du lịch khác để trải nghiệm và thử cảm giác.</p>

<h3><span style="font-size:16px"><strong>Các Tour đảo Phú Qúy Mà Bạn Cần Biết Đến</strong></span></h3>

<h4><span style="font-size:14px"><a href="https://dulichbienphuquy.vn/tour-phuot-phan-thiet-phu-quy-3-ngay-2-dem-tour25.html" title="đi tour phượt đảo Phú Qúy" type="đi tour phượt đảo Phú Qúy"><em><strong>Tour Phượt Đảo Phú Qúy 3 Ngày 2 Đêm</strong></em></a></span></h4>

<p>Là tour phượt ra đảo Phú Qúy giá chỉ 1.850.000.đ, thời gian của tour phượt này 3 ngày 2 đêm sẽ đem đến quý khách trải nghiệm hết đảo Phú Qúy,Được tham quan các địa điểm nổi tiếng ở đảo Phú Qúy như là: chùa Linh Quang,Vạn An Thạnh,Mũi Dinh Thầy, ra Nhà Bè tham quan ăn hải sản tắm biển, kết hợp vui chơi tham quan vịnh Triều Dương,&nbsp;<em><a href="https://dulichbienphuquy.vn/trai-nghiem-tour-phuot-dao-phu-quy-n105.html" title="phượt đảo Phú Quý" type="phượt đảo Phú Quý"><strong>phượt đảo Phú Qúy</strong></a></em>&nbsp;đi bằng xe máy.</p>

<h4><span style="font-size:14px"><a href="https://dulichbienphuquy.vn/tour-phan-thiet-phu-quy-3-ngay-2-dem-tour28.html" title="tour đảo phú quý 3 ngày 2 đêm" type="tour đảo phú quý 3 ngày 2 đêm"><strong><em>Tour Đảo Phú Qúy 3 Ngày 2 Đêm</em></strong></a></span></h4>

<p>Giá cả&nbsp;<strong>tour đảo phú quý</strong>&nbsp;3 ngày 2 đêm này là 2.300.000.đ với thời gian này đem đến quý khách đi hết đảo. Ăn ở đi lại tiện nghi trên đảo để đem đến sự hài lòng dành cho quý khách.</p>

<h4><span style="font-size:14px"><a href="https://dulichbienphuquy.vn/tour-phan-thiet-phu-quy-2-ngay-1-dem-tour26.html" title="tour đảo Phú Qúy 2 ngày 1 đêm" type="tour đảo Phú Qúy 2 ngày 1 đêm"><em><strong>Tour Đảo Phú Qúy 2 Ngày 1 Đêm</strong></em></a></span></h4>

<p><strong>Tour đảo phú quý</strong>&nbsp;này 2 ngày 1 đêm, tour du lịch ra đảo ngắn gọn nhưng dịch vụ đem đến không bao giờ ít, vẫn đầy đủ phục vụ nhiệt tình đến quý khách.</p>

<h4><span style="font-size:14px"><a href="https://dulichbienphuquy.vn/tour-cau-ca-lan-ngam-san-ho-tour27.html" title="tour câu cá lặn ngắm san hô" type="tour câu cá lặn ngắm san hô"><em><strong>Tour Câu Cá Lặn Ngắm San Hô</strong></em></a></span></h4>

<p>&nbsp;Qúy khách được đưa đi ra biển bằng chiếc cano cùng mọi người&nbsp;câu cá,bắt những con cá,hải sản cho riêng mình.Trải nghiệm cảnh đẹp cùng chiếc cano chạy ra biển.</p>

<h4><span style="font-size:14px"><a href="https://dulichbienphuquy.vn/cano-tham-quan-cac-dao-nho-phu-quy-tour34.html" title="tour cano tham quan các đảo nhỏ" type="tour cano tham quan các đảo nhỏ"><em><strong>Tour Cano Tham Quan Các Đảo Nhỏ</strong></em></a></span></h4>

<p>Qúy khách đi tour này cũng bằng cano được các thuyền trưởng đưa&nbsp;đi đến các đảo nhỏ xung quanh&nbsp;<strong>đảo Phú Qúy</strong>&nbsp;để tham quan những hòn đảo nhỏ nằm trên mặt nước.</p>
', N'NV1       ')
SET IDENTITY_INSERT [dbo].[ThongTinDuLich] OFF
SET IDENTITY_INSERT [dbo].[TinDuLich] ON 

INSERT [dbo].[TinDuLich] ([IdTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (4, N'CHIA SẺ TOÀN TẬP KINH NGHIỆM DU LỊCH ĐẢO PHÚ QUÝ GIÁ RẺ MỚI NHẤT 2019', N'ngon-hai-dang.jpg', CAST(0x69400B00 AS Date), N'<p><img alt="" src="/CKFinderJava/userfiles/images/ngon-hai-dang.jpg" style="height:400px; width:550px" /></p>

<p>&nbsp;<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#ff0000"><strong>Chia sẻ kinh nghiệm du lịch đảo Phú Qúy giá rẻ mới nhất năm 2019</strong></span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Phú quý là địa điểm lý tưởng cho những ai vừa muốn du lịch biển, vừa muốn nghỉ dưỡng. Du khách đến đảo Phú Qúy chủ yếu là để tắm biển, nghỉ dưỡng, lặn ngắm san hô, ăn hải sản và tim hiểu đời sống người dân bản địa. Nhưng để có một chuyến đi &ldquo;&rsquo;đáng tiền&rdquo; bạn thật sự đã biết cách. Một số&nbsp;</span></span><span style="font-family:Arial"><span style="color:#000000"><strong>kinh nghiệm du lịch đảo Phú Qúy </strong></span></span><span style="font-family:Arial"><span style="color:#000000">được đúc kết từ nhiều khách du lịch đã đến đây sẽ giúp bạn có một kỳ nghỉ trên cả tuyệt vời.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#2e75b5"><strong><em>Đi du lịch đảo Phú Qúy vào thời điểm nào? Thời điểm tốt nhất</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Một kỳ nghỉ tuyệt vời điều quan trọng quyết định chính là việc bạn lựa chọn thời điểm tốt nhất tại Phú Qúy khi đến nghỉ dưỡng.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Theo kinh nghiệm du lịch đảo Phú Qúy</em></strong></span></span><span style="font-family:Arial"><span style="color:#000000"> của những người bản địa thì Phú Qúy có 2 mùa: </span></span><span style="font-family:Arial"><span style="color:#000000"><strong><em>gió Nam &ndash; Gió Bấc</em></strong></span></span><span style="font-family:Arial"><span style="color:#000000">. Mùa Nam kéo dài từ tháng 1 đến tháng 8 ÂL, các tháng còn lại mùa Bấc. Từ tháng 8 đến tháng 10 có mưa nhiều.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>Nên du lịch đảo Phú Qúy vào lúc nào?</strong></span></span><span style="font-family:Arial"><span style="color:#000000"> Tốt nhất nên đi Phú Qúy vào khoảng từ tháng 1 đến tháng 8. Nhưng Phú Qúy đẹp nhất là tháng 7,8,9 dương lịch và tháng 12 âm lịch.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>Không nên đi:</strong></span></span><span style="font-family:Arial"><span style="color:#000000"> Tháng 10 và tháng 11 là thời điểm đảo Phú Qúy trời rất gió.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Chia sẻ kinh nghiệm du lịch đảo Phú Qúy, tháng 6 là tháng cao điểm, thời gian tuyệt vời nhất&nbsp; của du lịch biển Phú Qúy. Thời gian có thời tiết đẹp nhất trong năm.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#2e75b5"><strong><em>Đi Phú Qúy như thế nào? Phương tiện để đến Phú Qúy</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Du lịch biển Phú Qúy có 1 phương tiện duy nhất ra đảo là tàu. Hiện nay, có 3 tàu đang vận hành trên tuyến từ Phan Thiết &ndash; Phú Qúy:</span></span></span></p>

<p style="text-align:left"><span style="color:#008000"><span style="font-size:16px"><span style="font-family:Arial"><strong>1) Tàu Cao Tốc Phú Qúy EXPRESS.&nbsp;</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; -&nbsp; Thời gian từ Phan Thiết - đảo Phú Qúy và ngược lại 2,5 giờ.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>&nbsp; &nbsp; -&nbsp; Giá vé có 2 loại vé:</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; &nbsp; &nbsp;+ Người lớn:&nbsp;</span></span><span style="font-family:Arial"><span style="color:#000000"><strong>350.000đ</strong></span></span><span style="font-family:Arial"><span style="color:#000000">&nbsp;(giường nằm hoặc&nbsp;ghế ngồi)</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Trẻ em , người già:&nbsp;</span></span><span style="font-family:Arial"><span style="color:#000000"><strong>220.000.đ</strong></span></span><span style="font-family:Arial"><span style="color:#000000">(giường nằm hoặc ghế ngồi)</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>&nbsp; Thông tin tàu:</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; &nbsp; &nbsp;+ Tốc độ 27 - 28 hải lý/giờ.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; &nbsp; &nbsp;+ Tải trọng 300 hành khách.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; &nbsp; &nbsp;+ Gồm 230 giường nằm, 70 ghế ngồi và 15 tấn hàng hóa.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; &nbsp; &nbsp;+&nbsp;Bên trong nội thất được trang bị hiện đại, sang trọng, máy lạnh tự động.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; &nbsp; &nbsp;+&nbsp;Tàu Cao Tốc PHÚ QUÝ EXPRESS được trang bị hệ thống cứu sinh (phao bè, áo phao...) đảm bảo sự an toàn hàng hải cao nhất cho quý hành khách.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>Phòng Vé TP.Phan Thiết</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">+ Văn Phòng:&nbsp;169 Võ Thị Sáu, Phường Hưng Long,TP Phan Thiết.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">+ Điện Thoại:&nbsp;(0252) 396 2727 &ndash; (0252) 396 2626 &ndash; 0908 650 584</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>Phòng Vé Đảo Phú Qúy</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">+ Văn Phòng:&nbsp;&nbsp;Cảng Tàu Đảo Phú Quý 21 Ngô Quyền, Huyện Phú Quý.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">+ Điện Thoại:&nbsp;088.926.2277 &ndash; (0252).396.2828</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>Các Bạn Đặt Vé Online Qua Các Phương Tiện Sau</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">+ Website:&nbsp;</span></span><a href="https://phuquyexpress.vn/" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none"><span style="font-family:Arial"><span style="color:#0000ff">https://phuquyexpress.vn</span></span></a></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">+ Facebook:&nbsp;</span></span><a href="https://facebook.com/phuquyexpress/" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none"><span style="font-family:Arial"><span style="color:#0000ff">https://facebook.com/phuquyexpress/</span></span></a></span></p>

<p style="text-align:left"><span style="color:#008000"><span style="font-size:16px"><span style="font-family:Arial"><strong>2) Tàu Superdong Phú Qúy I&nbsp;</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; -&nbsp;&nbsp;&nbsp;Thời gian từ Phan Thiết -&nbsp;Phú Qúy và ngược lại 2,5 giờ&nbsp;</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; -&nbsp; &nbsp;Chỉ có một loại vé ghế ngồi có máy lạnh: 350.000đ</span></span></span></p>

<p style="text-align:left"><span style="color:#008000"><span style="font-size:16px"><span style="font-family:Arial"><strong>3) Tàu Hưng Phát 26&nbsp;</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; -&nbsp;&nbsp;&nbsp;Thời gian từ Phan Thiết -&nbsp;Phú Qúy và ngược lại 4&nbsp;giờ đồng.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>&nbsp; &nbsp; -&nbsp; Giá vé có 2 loại vé:</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp; &nbsp; &nbsp; &nbsp;+&nbsp; Ghế ngồi : 250.000đ</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp; Giường nằm có&nbsp;máy lạnh:&nbsp; 350.000đ</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/dat-ve-tau-tour-dao-phu-quy-banner.jpg" style="height:400px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh hỗ trợ đặt vé tàu&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#2e75b5"><strong><em>Phương tiện di chuyển ở Phú Qúy- cách đi lại Phú Qúy</em></strong></span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><strong><span style="color:#ff8c00"><span style="font-family:Arial">Xe máy, xe đạp</span></span></strong><span style="font-family:Arial"><span style="color:#000000">: bạn có thể thuê xe ngay tại Cảng hoặc liên hệ </span></span><a href="https://dulichbienphuquy.vn/thue-xe-may-dao-phu-quy-tour30.html" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none"><span style="font-family:Arial"><span style="color:#7030a0"><strong>du lịch biển Phú Qúy</strong></span></span></a><span style="font-family:Arial"><span style="color:#000000"><a href="https://dulichbienphuquy.vn/thue-xe-may-dao-phu-quy-tour30.html" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none">.</a> Du lịch đảo Phú Qúy cung cấp dịch vụ thuê xe máy với giá hợp lý và nhiều ưu đãi.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><strong><span style="color:#ff8c00"><span style="font-family:Arial">Xe ô tô:</span></span></strong><span style="font-family:Arial"><span style="color:#00b0f0"> </span></span><span style="font-family:Arial"><span style="color:#000000">du lịch biển có dịch vụ đưa đón khách bằng ô tô và cho thuê xe tự lái với giá cực rẻ và nhiều ưu đãi, rất phù hợp cho du khách đi theo đoàn hay tour.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><strong><span style="color:#ff8c00"><span style="font-family:Arial">Thuyền, cano</span></span></strong><span style="font-family:Arial"><span style="color:#00b0f0">: </span></span><span style="font-family:Arial"><span style="color:#000000">Đây là phương tiện để bạn đi thăm quan các hòn đảo lớn nhỏ ở Phú Qúy.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/thue-xe-may-tour-dao-phu-quy-banner.jpg" style="height:400px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh thuê xe máy cùng tour đảo Phú Qúy&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0070c0"><strong><em>Du lịch biển Phú Qúy thì ở đâu? Khách sạn, nhà nghỉ, homestay đẹp, tốt, rẻ ở Phú Qúy:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Đến du lịch Phú Qúy du khách không phải bận tâm vấn đề giá phòng cao thấp hay chặt chém vì tất cả các khách sạn, nhà nghỉ, homestay đều có giá mặc định không tự ý tăng giảm. Lưu ý, du khách muốn một kỳ nghỉ hoàn hảo cần book phòng trước. Tốt nhất du khách nên book phòng trực tuyến tại </span></span><a href="https://dulichbienphuquy.vn/dat-phong-dao-phu-quy-tour31.html" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none"><span style="font-family:Arial"><span style="color:#7030a0">du lịch biển Phú Qúy</span></span></a></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#993366"><strong><em>Cùng xem những khách sạn, nhà nghỉ, homestay nên ở tại Phú Qúy được du lịch đảo Phú Qúy tổng hợp từ phản hồi của du khách về giá cả, chất lượng dịch vụ, tiện nghi được đề nghị dưới đây:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#0000ff"><span style="font-family:Arial">khách sạn Chấn:</span></span><span style="font-family:Arial"><span style="color:#7030a0"> </span></span><span style="font-family:Arial"><span style="color:#000000">Nằm trung tâm đảo Phú Qúy, phòng ốc thiết kế sang trọng, đầy đủ tiện nghi, có ban công, sạch sẽ. Gần nhiều địa điểm ăn uống, mua sắm. chất lượng phục vụ cao, nhiệt tình, hiếu khách, tiếp đón lịch sự với giả cả hợp lý hỗ trwoj nhiều dịch vụ. khách sạn đầu tiên tại Phú Qúy</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#0000ff"><span style="font-family:Arial">khách sạn Hải Hà</span><span style="font-family:Arial">:</span></span><span style="font-family:Arial"><span style="color:#7030a0"> </span></span><span style="font-family:Arial"><span style="color:#000000">nằm gần trung tâm đảo, gần nhiều địa điểm vui chơi, ăn uống, mua sắm. Phòng ốc thiết kế mang phong cách hiện đại, sạch sẽ, đầy đủ tiện nghi. Phục vụ nhiệt tình, chân thật, trung thực, hỗ trợ nhiều dịch vụ chất lượng và giá cả hợp lý.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#0000ff"><span style="font-family:Arial">Khách sạn Hướng dương</span></span><span style="font-family:Arial"><span style="color:#7030a0">:</span></span><span style="font-family:Arial"><span style="color:#7030a0"> </span></span><span style="font-family:Arial"><span style="color:#000000">khách sạn mới được xây dựng với thiết kế sang trọng và được đánh giá chuẩn 3 sao được nhiều du khách tin dùng vì phòng ốc đầy đủ tiện nghi, phục vụ nhiệt tình, hiếu khách, nhiều dịch vụ chất lượng và tiêu chuẩn sạch sẽ đạt chuẩn 5 sao mà giá cả hợp lý.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#0000ff"><span style="font-family:Arial">Nhà nghỉ 111 đảo Phú Qúy:</span></span><span style="font-family:Arial"><span style="color:#7030a0"> </span></span><span style="font-family:Arial"><span style="color:#000000">nằm gần địa điểm ăn uống, vui chơi, ngân hàng, khu mua sắm rất thuận tiện đi lại cho du khách. Phòng ốc sang trọng, sạch sẽ, phục vụ hiếu khách, trung thực, giá rất bình dân.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/khach-san-truong-huy-dao-phu-quy.jpg" style="height:400px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh nhà nghỉ Trường Huy&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#3498db">Nhà nghỉ&nbsp;Trường Huy</span> đảo Phú Qúy: gồm 12 phòng trong đó có phòng đơn , phòng đôi được thiết kế độc đáo, sang trọng đầy đủ tiện nghi hiện đại, có sân thượng rộng cho quý khách vui chơi và ngắm biển và giá cực rẻ.</span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#0000ff"><span style="font-family:Arial">Homestay Huy Hoàng</span></span><span style="font-family:Arial"><span style="color:#7030a0">: </span></span><span style="font-family:Arial"><span style="color:#000000">thích hợp cho du khách đi theo gia đình và bạn thân. Homestay phòng ốc sạch sẽ, đầy đủ tiện nghi. Gần biển tha hồ ngắm cảnh, tắm biển, giá cực rẻ giúp du khách tiết kiệm chi phí về vấn đề chỗ ở.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0070c0"><strong><em>Địa điểm tham quan, vui chơi ở Phú Qúy:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Đi đâu chơi ở Phú Qúy?</em></strong></span></span><span style="font-family:Arial"><span style="color:#000000"> Ở Phú Qúy có rất nhiều địa điểm tham quan du lịch như: </span></span><span style="font-family:Arial"><span style="color:#002060"><em>bãi Gành Hang, Vịnh Triều Dương, Ngọn hải đăng &ndash; Đuốc Bác, Mộ Thầy, đền thờ Công Chúa Bàn Tranh, Lồng Bè, Bờ Kè, hòn Tranh, Hòn Đen, Hòn Đỏ, Hòn Giữa, Cột Cờ, Chùa Linh Quang, Chùa Linh Sơn &ndash; chùa Núi,&hellip;</em></span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Nếu du khách không có thời gian thì nên đến một số điểm chính sau:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><span style="font-family:Arial">Vịnh Triều Dương:</span></span><span style="font-family:Arial"><span style="color:#00b0f0"> </span></span><span style="font-family:Arial"><span style="color:#000000">địa điểm có bãi biển trải dài toàn cát trắng, dòng biển xanh mát nhìn ra thấy hòn Tranh. Bãi biển này sóng vừa dịu thích hợp tắm biển, vui đùa trên bãi cát. Ngòai ra nơi đây thích hợp cho buổi picnic ngoài trời, cắm trại càng vui, có thể treo vòng nghỉ ngơi &ndash; uống nước dừa.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/tour-dao-phu-quy-3-ngay-2-dem.jpg" style="height:400px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh vịnh Triều Dương&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000">Bãi Gành Hang:</span> địa điểm thích hợp tắm biển, vui chơi và check &ndash; in, sống ảo cực phiêu. Vì bãi này bao quanh bãi đá cao dựng đứng, nhìn từ trên xuống như muốn ôm trọn đại dương xanh.</span></p>

<p style="text-align:left"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/tour-dao-phu-quy-2-ngay-1-dem.jpg" style="height:400px; width:500px" /></span></p>

<p style="text-align:left"><em>hình ảnh Gành Hang</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000">Cột Cờ - cột điện gió:</span> 2 địa điểm mới lạ tại đảo, phong cảnh thích hợp để ra album ảnh sống &ldquo; chất&rdquo; cho du khách.</span></p>

<p style="text-align:left"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/cot-co-dao-phu-quy.jpg" style="height:610px; width:610px" /></span></p>

<p style="text-align:left"><em>hình ảnh Cột cờ&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000">Du lịch 4 đảo:</span> hòn Tranh, Hòn Đen, hòn Giữa, Hòn Đỏ là những địa điểm tham quan nổi tiếng ở Phú Qúy. Theo kinh nghiệm du lịch biển Phú Qúy bạn có thể đặt tour dịch vụ tại <em><span style="color:#3498db">dulichbienPhuQuy.</span></em></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#3498db"><img alt="" src="/CKFinderJava/userfiles/images/du-lich-dao-phu-quy-hon-dao-ngoc.jpg" style="height:332px; width:500px" /></span></span></p>

<p style="text-align:left"><em>hình ảnh hòn Đen&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000">Lồng Bè: </span>hình thức nhà hàng trên biển, tại đây bạn sẽ được các món hải sản tươi ngon với nhiều loại nổi tiếng và tha hô lặn biển câu cá mà giá cả cực bình dân. Chi tiết có thể vào xem tại du lịch đảo phú quý</span></p>

<p style="text-align:left"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/du-lich-long-be-bich-thi.jpg" style="height:332px; width:500px" /></span></p>

<p style="text-align:left"><em>hình ảnh ăn uống tại lồng bè&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Một số địa điểm tham quan nổi tiếng tại du lịch đảo Phú Qúy:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><span style="font-family:Arial">Chùa Linh Quang &ndash; chùa Linh Sơn</span><span style="font-family:Arial">:</span></span><span style="font-family:Arial"><span style="color:#000000"> 2 chùa được xem là di tích lịch sử của đảo. nếu đến Phú Qúy không thể bỏ qua tham quan nơi này được.</span></span></span></p>

<p style="text-align:left"><img alt="" src="/CKFinderJava/userfiles/images/chua-linh-quang-dich-vu-du-lich-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p style="text-align:left"><em>hình ảnh chùa Linh Quang</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><span style="font-family:Arial">Mộ Thầy</span></span><span style="font-family:Arial"><span style="color:#000000">: ngôi mộ được xây dựng cổ trang, sang trọng, ngay trên chóp ngón núi hướng ra biển nên cảnh rất đẹp và là nơi thờ cúng thiêng liêng của người dân bản địa.&nbsp;</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><span style="font-family:Arial">Bộ xương cá Voi</span></span><span style="font-family:Arial"><span style="color:#00b0f0">: </span></span><span style="font-family:Arial"><span style="color:#000000">cá Voi với người dân bản địa xem là thần linh phù hộ và giúp đỡ họ, nên ở đây rất tôn thờ và kính trọng.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/images.jpg" style="height:346px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh xương cá voi&nbsp;</em></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><span style="font-family:Arial">Đền thờ Công Chúa Bàn Tranh:</span></span><span style="font-family:Arial"><span style="color:#00b0f0"> </span></span><span style="font-family:Arial"><span style="color:#000000">là người đầu tiên ra đảo và được người dân thờ cúng và xây dựng đền thờ trang nghiêm.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><span style="font-family:Arial">Đời sống người dân sứ biển</span></span><span style="font-family:Arial"><span style="color:#000000">: đây cũng là điều kì thú mà du khách cũng nên khám phá. Cuộc sống của người bản địa rất mặn như muối biển. con người chân chất, thật thà và rất hiếu khách. Nếu thích họ có thể giúp bạn sống một ngày dân biển để trải nghiệm.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/Galaxy-S9-Plus-12.jpg" style="height:346px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh đời sống người bản địa&nbsp;</em></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:14px"><span style="background-color:#ffffff"><span style="color:#737373"><span style="font-family:Tahoma,Geneva,sans-serif"><span style="color:#000000"><strong><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Những dịch vụ chất lượng &ndash; đặc sắc đến du lịch đảo Phú Qúy phải thử:</span></span></strong></span></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;"><span style="background-color:#ffffff"><span style="color:#000000"><span style="font-size:16px"><span style="font-family:Arial"><em>Dịch vụ thuê xe máy&nbsp; - ô tô</em></span></span></span></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;"><span style="background-color:#ffffff"><span style="color:#000000"><span style="font-size:16px"><span style="font-family:Arial"><em>Dịch vụ lặn biển &ndash; câu cá</em></span></span></span></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;"><span style="background-color:#ffffff"><span style="color:#000000"><span style="font-size:16px"><span style="font-family:Arial"><em>Dịch vụ đi cano ngắm cảnh biển</em></span></span></span></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;"><span style="background-color:#ffffff"><span style="color:#000000"><span style="font-size:16px"><span style="font-family:Arial"><em>Dịch vụ lặn ngắm san hô</em></span></span></span></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;"><span style="background-color:#ffffff"><a href="https://dulichbienphuquy.vn/dich-vu-du-lich-dao-phu-quy" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none" title="dịch vụ du lịch phú quý" type="dịch vụ du lịch phú quý"><span style="color:#000000"><span style="font-size:16px"><span style="font-family:Arial"><em>Dịch vụ hỗ trợ đặt vé tàu - book phòng - đặt nhà hàng</em></span></span></span></a></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;"><span style="background-color:#ffffff"><a href="https://dulichbienphuquy.vn/tour-dao-phu-quy" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none"><span style="color:#000000"><span style="font-family:Arial"><span style="font-size:16px"><em>Dịch vụ tour du lịch biển Phú Qúy</em></span></span></span></a></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;"><span style="background-color:#ffffff"><span style="color:#000000"><span style="font-family:Arial"><span style="font-size:16px"><em><img alt="" src="/CKFinderJava/userfiles/images/dich-vu-du-lich-dao-phu-quy.jpg" style="height:400px; width:500px" /></em></span></span></span></span></span></span></span></p>

<p dir="ltr" style="text-align:left"><em>hình ảnh hỗ trợ các dịch vụ&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</em></p>

<p dir="ltr" style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0070c0"><strong><em>Những món ăn đặc sản ở Phú Qúy &ndash; món ngon ở Phú Qúy:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Đến du lịch đảo Phú Qúy thì nhất định phải ăn những món hải sản tươi sống đặc trưng nơi đây rồi. du khách có thể ghé các vựa thu mua hoặc ra chợ để mua được các hải sản tươi với giá cực rẻ.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#00b0f0"><strong>Những món hải sản nổi tiếng ở Phú Qúy</strong></span></span><span style="font-family:Arial"><span style="color:#000000">:</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Cua huỳnh đế:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Nghe tên đã biết món đặc sản này ngon đến như thế nào, cua huỳnh đế được xưng tụng là vua của các loại cua. Vào thời phong kiến loại cua này được tiến vua bởi vị thịt mềm, ngon, bổ dưỡng. Cua huỳnh đế có bộ áo giáp dày màu đỏ, càng to và vô cùng sắc bén.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Với nhiều đặc điểm nổi bất như vậy, giá cũng không quá đắt chỉ khoảng 350.000 &ndash; 400.000 đồng/1kg bạn sẽ có ngay món ngon tươi sống.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/cua-huynh-de-tour-di-phuot-dao-phu-quy.jpg" style="height:332px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh cua huỳnh đế&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Tôm hùm:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Ở ngoài biển không thể thiếu món tôm hùm, đây là một trong những nghề của người dân tại vùng đảo này. Thịt tôm hùm có vị ngọt, khi ăn sẽ có tiếng &quot;sựt, sựt&quot; nghe rất vui tai, cách ăn món này sao cho ngon thì chắc hẳn mọi người đã quá &quot;sành&quot; rồi nhỉ!. Bên cạnh đó, còn có nhiều cách để chế biến món tôm hùm thơm ngon này để có mùi vị khác nhau như: tôm hùm hấp, nướng, cháo tôm hùm, &hellip;</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Nếu muốn mua về để làm món ăn, quà tặng có thể liên hệ với người dân tại đảo hoặc các nhà hàng đều có bán. Giá tôm hùm khoảng 500.000 đồng - 1.000.000 đồng/Kg.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/tom-du-lich-dao-phu-quy.jpg" style="height:350px; width:526px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh tôm đảo Phú Qúy&nbsp;</em></p>
', N'NV2       ')
INSERT [dbo].[TinDuLich] ([IdTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (5, N'Vì Sao Phải Du Lịch Biển Phú Quý Dù Chỉ Một Lần', N'tau-cao-toc-phu-quy-express.jpg', CAST(0x67400B00 AS Date), N'<p><img alt="" src="/CKFinderJava/userfiles/images/tau-cao-toc-phu-quy-express.jpg" style="height:398px; width:600px" /></p>

<p style="text-align:left"><span style="font-size:14px"><strong>Đảo Phú Quý là một hòn đảo nhỏ nằm cách thành phố Phan Thiết 56 hải lí theo hướng đông- nam, thuộc tỉnh Bình Thuận .Tuy là một hòn đảo nhỏ bé nhưng lại được mệnh danh là &ldquo;&nbsp;hòn đảo ngọc&rdquo;, bởi biển tại đây đậm chất xanh biếc, có một vẻ đẹp hoang sơ chưa khai phá chính vì thế mà ai cũng muốn có.</strong></span></p>

<p style="text-align:center"><span style="color:#ff8c00"><span style="font-size:18px">VÌ SAO PHẢI ĐI DU LỊCH BIỂN PHÚ QUÝ DÙ CHỈ MỘT LẦN</span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#00ff00"><span style="font-family:Arial"><em>Bạn đã có bao giờ nghe đến cái tên đảo Phú Quý chưa?</em></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#00ff00"><span style="font-family:Arial">Nếu chưa thì giờ chúng ta bắt đầu tìm hiểu nhé !</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Đảo Phú Quý là một hòn đảo nhỏ nằm cách thành phố Phan Thiết 56 hải lí theo hướng đông- nam, thuộc tỉnh Bình Thuận .Tuy là một hòn đảo nhỏ bé nhưng lại được mệnh danh là &ldquo; </span></span><span style="font-family:Arial"><span style="color:#000000"><strong>hòn đảo ngọc</strong></span></span><span style="font-family:Arial"><span style="color:#000000">&rdquo;, bởi biển tại đây đậm chất xanh biếc, có một vẻ đẹp hoang sơ chưa khai phá chính vì thế mà ai cũng muốn có.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff">1.Người dân thật thà hiếu khách:</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Khi đến đảo Phú Quý bạn sẽ cảm nhận được người dân trên đảo chất phác, thật thà như thế nào. Họ rất mộc mạc và hiếu khách, sẵn sàng trò chuyện chỉ dẫn đường cho bạn một cách tận tình. Trên đảo bạn có thể đậu xe lề đường mà chẳng cần phải lo sợ vì mất xe. Đến các địa điểm tham quan hay tại các quán ăn bạn sẽ không hề gặp tình trạng xin tiền hay làm phiền cuộc vui của bạn đâu nhé !</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff">2. Tham quan miễn phí :</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Bạn sẽ phải ồ lên vì đến Phú Quý mọi thứ đều FREE ( </span></span><span style="font-family:Arial"><span style="color:#000000"><em>miễn phí</em></span></span><span style="font-family:Arial"><span style="color:#000000"> ) từ bãi biển cho đến các địa danh tham quan đều miễn phí cả, bạn sẽ không thể tìm thấy du lịch biển nào lại có chi phí rẻ như</span></span><span style="font-family:Arial"><span style="color:#000000"><strong> đảo Phú Quý</strong></span></span><span style="font-family:Arial"><span style="color:#000000"> đâu.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff">3. Ngắm cảnh hoàng hôn và bình minh tuyệt đỉnh :</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Bạn có phải là Fan cuồng sống ảo vào mỗi sáng bình minh hay hoàng hôn không nhỉ ?&nbsp;</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Tại </span></span><span style="font-family:Arial"><span style="color:#000000"><strong>đảo Phú Quý</strong></span></span><span style="font-family:Arial"><span style="color:#000000"> bạn có thể thỏa sức sống ảo với cảnh view cực chất luôn và điểm lý tưởng ngắm cảnh hoàng hôn là trên núi cao cát, tại đây bạn có thể tận hưởng gió trời và ngắm cảnh hoàng hôn trên biển một cách chân thực nhất .Cảnh bình minh thì bạn có thể &ldquo; ảo ảo cực chất&rdquo; tại mộ thầy nhé!</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/67819847_2261267153991196_2659402711270686720_n.jpg" style="height:346px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh cảnh hoàng hôn&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff">4.Đến </span></span><span style="font-family:Arial"><span style="color:#0000ff"><strong>đảo Phú Quý</strong></span></span><span style="font-family:Arial"><span style="color:#0000ff"> bạn phải ghé thăm các địa danh ngây ngất lòng người :</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><strong>&rArr;</strong></span><strong> Chùa Linh Sơn</strong> là một ngôi chùa được xây dựng trên núi cao cát và đã&nbsp; được xây dựng từ rất lâu .Chùa có kiến trúc rất tinh tế, do chùa nằm trên cao vì thế phải bước qua mấy chục bậc thang mới lên tới được .Khi lên trên chùa ta sẽ thấy cảnh toàn đảo đẹp vô cùng.</span></p>

<p style="text-align:left"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/cong-chua-linh-son-du-lich-dao-phu-quy.jpg" style="height:332px; width:500px" /></span></p>

<p style="text-align:left"><em>hình ảnh chùa Linh Sơn&nbsp;</em></p>

<p dir="ltr"><span style="font-size:16px"><span style="color:#ff0000">&rArr;</span> <strong>Mộ Thầy</strong> &ndash; nơi tín ngưỡng của người dân bản địa tại đảo . Đến truớc mộ bạn phải giữ im lặng vì là nơi uy nghiêm. Các bạn có thể ra phía sau mộ thả ga Seffie, đẹp tuyệt đình với bức ảnh có cả biển núi, phía xa xa thấy cả đình núi cao cát, còn nhìn qua bên tay phải thì thấy hòn đen mặt nước biển trong xanh pha pha những gợn sóng trắng tinh .ÔI thật không chê vào đâu được .</span></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr"><span style="font-size:16px"><span style="color:#ff0000">&rArr;</span> <strong>Đền thờ Công Chúa Bàn tranh</strong> là nơi thờ cúng vị công chúa người Chăm và cũng là người đầu tiên đặt chân lên đảo .</span></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr"><span style="font-size:16px"><span style="color:#ff0000">&rArr; </span><strong>3 cột điện gió khổng lồ</strong> là địa điểm lý tưởng sống ảo cho giới trẻ khi du lịch Phú Quý, vừa lạ mắt vừa tươi tắn lắm luôn nhé!</span></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr"><span style="font-size:16px"><span style="color:#ff0000">&rArr;</span> <strong>Chùa Linh Quang</strong> là ngôi chùa nổi tiếng bởi kiến trúc độc đáo với 9 tầng lầu, nhìn rất trang nghiêm. Đến tại chùa bạn nên giữ trật trự vì chùa là nơi linh thiêng - uy nghiêm.</span></p>

<p dir="ltr"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/chua-linh-quang-dich-vu-du-lich-dao-phu-quy.jpg" style="height:332px; width:500px" /></span></p>

<p dir="ltr"><em>hình ảnh Chùa Linh Quang&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#ff0000"><strong>&rArr;</strong></span><strong> Vịnh Triều Dương</strong> là nơi thu hút nhiều du khách nhất với mặt nước biển trong xanh bãi cát trắng trải dài, bạn có thể cùng bạn bè hay người thân cùng nhau vui chơi, tổ chức ăn uống tại vịnh với các món nướng,&hellip;Sẽ vô cùng hấp dẫn luôn.</span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">&nbsp;&gt;&gt;&gt;Vào các dịp lễ hay và các ngày cuối tuần người dân thường tụ tập vui chơi ăn uống rất là đông vui .</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/vinh-dao-phu-quy.jpg" style="height:400px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh Vịnh Triều Dương</em></p>

<p dir="ltr"><span style="font-size:16px"><span style="color:#ff0000">&rArr;</span> <strong>Vạn An Thạnh</strong> nơi thờ cúng bộ xương cá Voi lớn nhất nước ta, đến đây bạn sẽ được các cụ già làng kể về các câu chuyện mà cá voi đã cứu giúp ngư dân.</span></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr"><span style="font-size:16px"><span style="color:#ff0000">&rArr; </span><strong>Ngọn Hải Đăng &ndash; Đuốc Bác Hồ</strong> cũng là một địa điểm đáng để cho bạn khám phá .</span></p>

<p dir="ltr"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/ngon-hai-dang-tour-du-lich-dao-phu-quy%20-%20Copy.jpg" style="height:332px; width:500px" /></span></p>

<p dir="ltr"><span style="font-size:16px"><span style="color:#ff0000">&rArr;</span> <strong>Cột cờ - Bãi Nhỏ </strong>là nơi khẳng định chủ quyền biển đảo của ta, đến đây bạn sẽ cảm thấy có cái gì đó rất thiêng liêng và đáng tự hảo vì nước ta đã có một hòn đảo xinh đẹp như vậy, nhìn xuống bên dưới đó là Bãi Nhỏ với mặt nước biển xanh ngát, có thể chụp hình thoả thích la hét ma chẳng cần phải sợ ảnh hưởng đến ai </span></p>

<p dir="ltr"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/cot-co-dao-phu-quy.jpg" style="height:610px; width:610px" /></span></p>

<p dir="ltr"><em>hình ảnh Cột Cờ&nbsp;</em></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:Arial">Chỉ mới thoáng qua mấy địa danh nổi tiếng tại đảo là đã rộn rực muốn đến đảo ngay rồi .</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff">5. Ăn hải sản tươi ngon :</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">100% du khách đến đảo Phú Quý là để ăn hải sản tươi ngon , bạn có nhớ cái vị ngon của cá mực, vị ngạy của tôm vị giòn dai của ốc sò .</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Nói gì chứ hải sản Phú Quý luôn là số 1, bất cứ hải sản nơi nào cũng không bằng, bởi tại đây khi ăn hải sản ta luôn cảm nhận rõ được cái vị ngọt vị giòn của hải sản , hòa nguyện với các loại nước chấm tại đảo , mặc dù chế biến rất dân giã nhưng được độ tươi ngon của hải sản.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#ff0000"><em>Điểm qua các hải sản tươi ngon nào !!</em></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#0000ff"><strong>&rArr;</strong></span><strong> Cua Mặt Trăng</strong> là loại cua khá hiếm vì chỉ khi trăng lên cao thịt cua sẽ ngon và chắc hơn, có du khách phải đặt hàng từ rất lâu mới có được, giá thành tại đảo thì bạn có thể yên tâm vì chẳng bao giờ người dân chặt chém.</span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff"><strong>&rArr; </strong></span></span></span><span style="font-size:16px"><span style="color:#000000"><span style="font-family:Arial"><strong>Cua Huỳnh Đế</strong> là loại cua khá đắt là loại hải sản dành cho vua chúa ngày xưa ăn, có hàm lượng đạm rất cao , ăn rất bổ dưỡng</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#000000"><span style="font-family:Arial"><img alt="" src="/CKFinderJava/userfiles/images/cua-huynh-de-du-lich-dao-phu-quy.jpg" style="height:350px; width:526px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh cua Huỳnh Đế</em></p>

<p style="text-align:left"><span style="font-size:14px"><span style="color:#3498db">&rArr;</span> <strong>Tôm Sao</strong> ở đảo có khá là nhiều, tuy giá thành rẻ hơn tôm Hùm nhưng thịt ăn vào vừa dai , ngon vừa ngọt chẳng khác gì tôm Hùm cả.</span></p>

<p style="text-align:left"><span style="font-size:14px"><img alt="" src="/CKFinderJava/userfiles/images/tom-du-lich-dao-phu-quy.jpg" style="height:350px; width:526px" /></span></p>

<p style="text-align:left"><em>hình ảnh tôm đảo Phú Qúy&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#3498db">&rArr;</span>&nbsp;<strong>Cá Mú đỏ - cá Mú Bông</strong>&nbsp;là loại cá xuất khẩu với giá thành cũng khá cao , đến đảo Phú Quý bạn sẽ được thưởng thử với các cách chế biến khác nhau như hấp, nướng , nấu cháo,.. Trên tuyệt lắm luôn, Cá tươi hòa nguyện với gia vị và rau sống không còn nghe mùi tanh mà chỉ cảm nhận vị ngọt và dai của cá thôi nhé!</span></p>

<p style="text-align:left"><img alt="" src="/CKFinderJava/userfiles/images/ban-tat-ca-cac-loai-ca-bien-1477980710-1100114-1477980710.jpg" style="height:346px; width:500px" /></p>

<p style="text-align:left"><em>hình ảnh cá Mú đảo Phú Qúy</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="color:#3498db">&rArr;</span> Đặc biệt khi bạn ăn <strong>ốc đảo</strong> bạn sẽ nhớ mãi vị ngọt của ốc tươi nhé !! Rất nhiều du khách ăn và luôn trầm trồ rằng &lt;&lt;&lt;chẳng có hải sản ở đâu có vị tươi như ở đảo Phú Quý cả &gt;&gt;&gt;.</span></p>

<p style="text-align:left"><span style="font-size:16px"><img alt="" src="/CKFinderJava/userfiles/images/oc-hoang-hau-du-lich-dao-phu-quy.jpg" style="height:350px; width:526px" /></span></p>

<p style="text-align:left"><em>hình ảnh ốc Hoàng Hậu</em></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#ff0000"><em>Đã có rất nhiều du khách mua hải sản về làm quà đấy còn bạn thì sao ??</em></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Đã có nhiều bạn chia sẻ rằng món bánh tráng nướng tại đảo rất ngon , có hương vị rất thơm đặc biệt giá cực rẻ chỉ có 5k đồng 1 miếng bánh tráng siêu khổng lồ .</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Các bạn có tin được không thức ăn sáng ở đảo chỉ có 5-10k thôi nhé đó là món bánh căn, bánh canh, cháo lòng, bánh mì, bánh bèo,&hellip;Chẳng đi đau tìm được thức ăn vừa ngon mà lại vừa rẻ, để ăn được món bánh căn tại đảo thì bạn phải ngồi đợt. Sau đó là sẽ được thưởng thức ngay cái vị giòn tan của bánh, chấm chấm với nước mắm mỡ hành thì ngon tuyệt vời. HIHI ngon quá !!!</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff">6. Khám phá đảo bằng xe máy:</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>Đảo Phú Quý</strong></span></span><span style="font-family:Arial"><span style="color:#000000"> cũng được xếp vào là địa điểm lý tưởng để du lịch phượt bằng xe máy đấy!!</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Thật vậy với diện tích nhỏ có nhiều con hẻm, phương tiện đi trên đảo tiện nhất là xe máy, vì thế bạn nào chuyên đi phượt thì đừng bỏ qua đảo Phú Quý, Bạn sẽ được chạy vèo vèo trên đèo để khám phá nhiều điều thú vị mới lạ.</span></span></span></p>

<p style="text-align:left"><br />
<img alt="" src="/CKFinderJava/userfiles/images/thue-xe-may-tour-dao-phu-quy-banner.jpg" style="height:400px; width:500px" /></p>

<p style="text-align:left"><em>hình ảnh thuê xe máy cùng tour đảo Phú Qúy&nbsp;</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#0000ff">7. Du ngoại trên biển:</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#ff0000"><em>Bạn đã thử cảm giác ngồi trên thuyền, ghe du ngoại chưa?</em></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong>Đến đảo Phú Quý</strong></span></span><span style="font-family:Arial"><span style="color:#000000"> chúng tôi sẽ cung cấp dịch vụ câu cá &ndash; lặn ngắm san hô tại các đảo nhỏ lân cận đảo như Hòn Tranh, Hòn Trứng, Hòn Đen, Hòn Đỏ. Bạn sẽ thấy được biển Phú Qúy đẹp đến nhường nào.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/tour-cano-tham-quan-dao-phu-quy.jpg" style="height:332px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh cano tham quan các đảo nhỏ</em></p>

<p style="text-align:left"><em><strong><span style="color:#ff0000"><span style="font-size:16px"><span style="font-family:Arial">Trên đó là những lý do mà bạn đến phải đảo Phú Quý dù chỉ một lần .</span></span></span></strong></em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Đối với Cuộc sống mỗi người thì ngoài những giờ làm việc mệt mỏi chúng ta phải có những giây phút thư giãn, những chuyến du lịch giải trí.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Vậy thì chần chừ gì nữa,</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="color:#0000ff"><span style="font-size:16px"><span style="font-family:Arial">&gt;&gt;&gt;Hãy đến đảo Phú Quý làm một chuyến du lịch nào !!!</span></span></span></p>

<p style="text-align:left"><span style="color:#0000ff"><span style="font-size:16px"><span style="font-family:Arial">Chúng tôi sẽ giúp bạn có chuyến du lịch tuyệt vời.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>
', N'NV2       ')
INSERT [dbo].[TinDuLich] ([IdTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (6, N'Tàu Ra Đảo Phú Quý Như Thế Nào', N'tau-ra-dao-phu-quy.jpg', CAST(0x62400B00 AS Date), N'<p><img alt="" src="/CKFinderJava/userfiles/images/tau-ra-dao-phu-quy.jpg" style="height:398px; width:600px" /></p>

<h2>&nbsp;</h2>

<p>Phương tiện tàu ra đảo Phú Qúy bắt đầu từ cảng Phan Thiết gồm những chiếc tàu như thế nào và để đặt vé tàu cũng như biết lịch tàu hãy đến dulichbienphuquy.vn</p>

<h2><strong>PHƯƠNG TIỆN DI CHUYỂN RA ĐẢO PHÚ QUÝ TỪ CẢNG THƯƠNG CHÁNH PHAN THIẾT</strong></h2>

<p><em><strong>Hiện tại&nbsp;bạn rất dễ dàng để di chuyển&nbsp;<a href="https://dulichbienphuquy.vn/dat-ve-tau-dao-phu-quy-tour33.html" title="đặt vé tàu đảo Phú Qúy" type="đặt vé tàu đảo Phú Qúy">tàu ra đảo&nbsp;Phú Quý</a>, vì đã có tàu cao tốc di chuyển từ cảng Thương Chánh Phan Thiết ra đảo Phú Qúy.</strong></em></p>

<h3><strong>1.Tàu cao tốc Phú Quý Experess ( Thời gian di chuyển: 2 tiếng 30 phút )</strong></h3>

<p>Tàu Cao Tốc PHÚ QUÝ EXPRESS do Công Ty TNHH Vận Tải Hành Khách Thành Thành Phát làm chủ đầu tư với 100% vốn trong nước, tàu được Công ty MTV 189 thiết kế và đóng mới đảm bảo theo tiêu chuẩn an toàn về tàu biển quốc tế<br />
Tốc độ 27 - 28 hải lý/giờ.</p>

<p>Tải trọng 300 hành khách.</p>

<p>Gồm 230 giường nằm, 70 ghế ngồi và 15 tấn hàng hóa.</p>

<p>Bên trong nội thất được trang bị hiện đại, sang trọng, máy lạnh tự động,&nbsp;<strong>phục vụ cafe miễn Phí</strong></p>

<p>Tàu có bố trí một quầy mini bar phục vụ thức ăn nhẹ và nước uống.</p>

<p>Tàu Cao Tốc PHÚ QUÝ EXPRESS được trang bị hệ thống cứu sinh (phao bè, áo phao...) đảm bảo sự an toàn hàng hải cao nhất cho quý hành khách. Với phong cách phục vụ chuyên nghiệp uy tín chật lượng cùng đội ngũ&nbsp;thuyền viên được đào tạo giàu kinh nghiệm, am hiểu địa lý vùng biển, chắc chắn quý khách hàng sẽ hài lòng khi lựa chọn đồng hành cùng chúng tôi.</p>

<ul>
	<li>Cách đặc vé các bạn hãy lên hệ : Tàu cao tốc Phú Quý Experess.</li>
	<li>Thời gian làm việc: sáng&nbsp; 08h00-11h30, chiều 13h- 17h.</li>
	<li>Giá vé: + vé người lớn:&nbsp;<strong>350.000 vnđ&nbsp;</strong>(giường nằm hoặc&nbsp;ghế ngồi)<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; + vé trẻ em, người già:&nbsp;<strong>220.000 vnđ&nbsp;</strong>(giường nằm hoặc ghế ngồi)</li>
	<li>Lưu ý: Bạn hãy liên hệ giờ trong giờ hành chính để đặt vé nhé. &nbsp;</li>
</ul>

<p><img alt="" src="/CKFinderJava/userfiles/images/tau-cao-toc-phu-quy-express.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh&nbsp;tàu cao tốc Phú Qúy Express&nbsp;(Ảnh &ndash; Tàu cao tốc Phú Qúy Express)</em></p>

<p>Phòng Vé TP.Phan Thiết</p>

<p>+ Văn Phòng:&nbsp;169 Võ Thị Sáu, Phường Hưng Long,TP Phan Thiết.</p>

<p>+ Điện Thoại:&nbsp;(0252) 396 2727 &ndash; (0252) 396 2626 &ndash; 0908 650 584</p>

<p>Phòng Vé Đảo Phú Qúy</p>

<p>+ Văn Phòng:&nbsp;&nbsp;Cảng Tàu Đảo Phú Quý 21 Ngô Quyền, Huyện Phú Quý.</p>

<p>+ Điện Thoại:&nbsp;088.926.2277 &ndash; (0252).396.2828</p>

<p>Các Bạn Đặt Vé Online Qua Các Phương Tiện Sau</p>

<p>+ Website:&nbsp;<a href="https://phuquyexpress.vn/">https://phuquyexpress.vn</a></p>

<p>+ Facebook:&nbsp;<a href="https://facebook.com/phuquyexpress/">https://facebook.com/phuquyexpress/</a></p>

<p>+ Email:phuquysale.datlich@gmail.com</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/giuong-nam-phu-quy-express.jpg" style="height:333px; width:500px" /></p>

<p><em>hình ảnh giường nằm tàu cao tốc Phú Qúy express(Ảnh &ndash; tàu cao tốc phú quý express)</em></p>

<p>--&nbsp;<em><strong>Đi&nbsp;<a href="https://dulichbienphuquy.vn/du-lich-dao-phu-quy-n108.html" title="du lịch đảo Phú Qúy" type="du lịch đảo Phú Qúy">du lịch đảo Phú Qúy</a>&nbsp;bằng tàu cao Tốc Phú Qúy Express là rất tuyệt vời với hiện nay</strong></em></p>

<p>&nbsp;</p>

<h3><strong>2.Tàu Cao Tốc Superdong Phú Quý (Thời gian di chuyển: 2 tiếng 30 phút)</strong></h3>

<p><strong>Sơ lượt về nhà tàu:</strong></p>

<p>Tàu đạt chuẩn quốc tế được đóng mới 100% và nhập khẩu từ Malaysia;</p>

<p>Tốc độ 26-28&nbsp;hải lý/giờ;</p>

<p>Tải trọng 171-306 khách;</p>

<p>Trọng tải hàng hóa 8 tấn;</p>

<p>Trang trí nội thất hiện đại,sang trọng ,máy lạnh tự động;</p>

<p>Tất cả các khoang đều được trang bị máy lạnh, hệ thống nghe nhạc và xem phim giúp Quý khách thư giãn suốt hành trình. Phục vụ khăn lạnh, nước suối và wifi miễn phí.</p>

<p>Tàu Superdong có thể chạy trong gió cấp 7, được trang bị hệ thống cứu sinh ( phao bè, áo phao cá nhân, pháo sáng, thiết bị thông tin &hellip;.) đảm bảo sự an toàn hàng hải cao nhất cho hành khách.</p>

<p>Với phong cách phục vụ chuyên nghiệp, uy tín, chất lượng cùng đội ngũ thuyền viên giàu kinh nghiệm, am hiểu địa lý vùng biển, chắc chắn Quý hành khách sẽ hài lòng nhất khi lựa chọn đồng hành cùng chúng tôi.</p>

<p>Cách đặt vé các bạn hãy lên hệ : Tàu Superdong Phú Qúy.</p>

<p>Thời gian làm việc: sáng&nbsp; 08h00-11h30, chiều 13h- 17h.</p>

<p>Giá vé: + vé người lớn: 350.000 vnđ</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; + Vé người cao tuổi: 295.000 vnđ<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; + Vé người khuyết tật: 260.000 vnđ</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/tau-superdong-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh tàu superdong Phú Qúy&nbsp;(Ảnh &ndash; tàu superdong Phú Qúy)</em></p>

<p><strong>PHÒNG VÉ PHAN THIẾT:</strong><br />
0252.3817.337 hoặc 0252.3817.338<br />
Hotline: 0946.198.768<br />
Địa chỉ: 535 Trần Hưng Đạo, P. Lạc Đạo, TP. Phan Thiết, Bình Thuận.</p>

<p><strong>PHÒNG VÉ PHÚ QUÝ:</strong><br />
0252.3765.999 hoặc 0252.3768.666<br />
Hotline: 0919.597.468<br />
Địa chỉ: 11 Ngô Quyền, Xã Tam Thanh, Huyện Phú Quý, Bình Thuận.<br />
Email: phanthiet.sales@superdong.com.vn<br />
Mua vé và thanh toán trực tuyến:&nbsp;<a href="http://online.superdong.com.vn/?fbclid=IwAR0M3___Wf8ZASV28DtOfR1tDqMnyiX92g6Y2L5qYXbifAafnVc4azCv4zI" target="_blank">http://online.superdong.com.vn/</a></p>
', N'NV2       ')
INSERT [dbo].[TinDuLich] ([IdTin], [Tieude], [Hinhanh], [Ngaydang], [Noidung], [IdUser]) VALUES (7, N'Du Lịch Đảo Phú Qúy', N'hon-den.jpg', CAST(0x64400B00 AS Date), N'<p><img alt="" src="/CKFinderJava/userfiles/images/du-lich-dao-phu-quy-hon-dao-ngoc.jpg" style="height:398px; width:600px" /></p>

<h2>&nbsp;</h2>

<p><strong>Hòn đảo ngọc hoang sơ Phú Qúy ngày nay đã phát triển lên du lịch cấp tỉnh đem đến thuận lợi cho khách du lịch đến đây từ phương tiện tour du lịch đảo, dịch vụ đảo Phú Qúy</strong></p>

<h2><span style="font-size:20px"><strong>DU LỊCH ĐẢO PHÚ QUÝ | THIÊN ĐƯỜNG NGHĨ DƯỠNG LÃNG MÃN NHẤT</strong></span></h2>

<p>Là một quốc gia có đường bờ biển dài 3260 km, với nhiều vũng vịnh và đảo lớn nhỏ nên Việt Nam có nhiều tiềm năng để phát triển kinh tế biển, trong đó ngành du lịch rất được đầu tư và trên đà phát triển mạnh. Bởi có nhiều sự lựa chọn về nơi nghĩ dưỡng biển nên khi chán đất liền ta có thể di chuyển đến các đảo để mạng lại những cảm giác mới lạ hơn. Chúng ta có thể ghé thăm đảo&nbsp;<strong>Đảo Phú Quý</strong>&nbsp;- nơi được ví là &ldquo;Maldives của Việt Nam&rdquo;, với danh xưng này sẽ khiến du khách tăng thêm sự thích thú và tò mò, bởi hòn đảo xinh đẹp Maldives đã quá nổi tiếng trên thế giới rồi.</p>

<p><strong>Phú Quý</strong>&nbsp;là một đảo nhỏ với 17,4 km2, thuộc tỉnh Bình Thuận. Đảo nằm cách Tp. Phan Thiết khoảng 56 hải lí theo hướng đông-nam.</p>

<h2><span style="font-size:20px"><strong>Bạn Biết Gì Về Đảo Phú Qúy</strong></span></h2>

<p>Đảo Phú Quý nằm cách đất liền 54 hải lí, thuộc huyện đảo Phú Qúy -&nbsp; tỉnh Bình Thuận,diện tích đảo 16 km<sup>2</sup>&nbsp;. Nơi đó tưởng chừng chả có gì thú vị, hoang sơ vì bao quanh toàn biển, nhưng thật sự là diệu kì hơn bạn tưởng tượng đó, để đến đảo phải đi&nbsp;<strong>tàu ra đảo Phú Quý</strong>.</p>

<p>Thì hiện nay có ba loại tàu ra đảo: Tàu Cao Tốc&nbsp;Phú Quý Express,&nbsp;cao tốc Hưng Phát, SuperDong,&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp;Tàu Cao Tốc Phú Qúy EXPRESS.&nbsp;</p>

<p>&nbsp; &nbsp; -&nbsp; Thời gian từ Phan Thiết - đảo Phú Qúy và ngược lại&nbsp;<strong>2,5 giờ.</strong></p>

<p>&nbsp; &nbsp; -&nbsp; Giá vé có 2 loại vé:</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Người lớn:&nbsp;<strong>350.000đ</strong>&nbsp;(giường nằm hoặc&nbsp;ghế ngồi)</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Trẻ em , người già:&nbsp;<strong>220.000.đ&nbsp;</strong>(giường nằm hoặc ghế ngồi)</p>

<p>đây thì nhớ thuê xe máy để tiện cho việc di chuyển nhé!</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/giuong-nam-phu-quy-express.jpg" style="height:333px; width:500px" /></p>

<p><em>hình ảnh Tàu cao Tốc Phú Qúy Express&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</em></p>

<p>&nbsp;-&nbsp; Thông tin tàu:</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Tốc độ 27 - 28 hải lý/giờ.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Tải trọng 300 hành khách.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+ Gồm 230 giường nằm, 70 ghế ngồi và 15 tấn hàng hóa.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;+&nbsp;Bên trong nội thất được trang bị hiện đại, sang trọng, máy lạnh tự động,&nbsp;phục vụ cafe miễn Phí</p>

<p><strong>&nbsp; &nbsp;LIÊN HỆ ĐỂ ĐẶT VÉ TÀU:</strong></p>

<p>&nbsp; &nbsp;<strong>PHÒNG VÉ TP.PHAN THIẾT</strong><br />
&nbsp; &nbsp;Địa chỉ: 169 Võ Thị Sáu, Phường Hưng Long, TP.Phan Thiết</p>

<p>&nbsp; &nbsp;Điện Thoại: (0252) 396 2727 &ndash; (0252) 396 2626 &ndash; 0908 650 584</p>

<p>&nbsp;</p>

<p>&nbsp; &nbsp;<strong>PHÒNG VÉ ĐẢO PHÚ QÚY</strong><br />
&nbsp; &nbsp;Địa chỉ : Cảng Phú Quý 21 Ngô Quyền, Xã Tam Thanh, Huyện Phú Quý.<br />
&nbsp; &nbsp;Điện Thoại: 088 926 2277 - (0252) 396 2828<br />
&nbsp; &nbsp;Facebook:&nbsp;<strong><a href="https://www.facebook.com/phuquyexpress/?__tn__=K-R&amp;eid=ARChXk3EjMYZmEQ4L2RVCO3U0d32nj6AMvGTFvV_wO4m3relMwJYG9rDgeWcFhLg9r3KPvESeYpOQ7II&amp;fref=mentions&amp;__xts__%5B0%5D=68.ARCcpkO4BjgDxo1NrV_vAXlkyrXSrErFG6qIIizS9Eb4j79i63ajhVieBKc9DcuDS7n0iJNm2Lk0QDyOfKOiDTSwSyxAkRELT7tQKk2wRdigGbSG3gYgNIOc7jR5kFSEUixClzzYntVL9vegyg6ZUx2Tfc22PP79W5M88iAjTt4WzFVmJos1URzwgcParcFpOoEQaiEhVaKlYgjOxb9Q0ltABbgsXB095ZhLHI6zBqo00E00h8WUIJJt8ay9Q_SdGBMi4yzwfur7ioidqS0EIh7p4sEcxcNHh2MMJ7aycADvkIdJVT_EqDmvNaCDdIvq-VymIA44G8nrUunwC6Q2ZdU">Tàu Cao Tốc Phú Quý Express</a></strong></p>

<h2><span style="font-size:20px"><strong>Cảm giác bình yên buổi sáng tại đảo Phú Quý?</strong></span></h2>

<p>Buổi sáng&nbsp;<a href="https://dulichbienphuquy.vn/du-lich-dao-phu-quy-n108.html" title="du lịch đảo Phú Qúy" type="du lịch đảo Phú Qúy"><em><strong>du lịch đảo&nbsp;Phú Quý</strong></em></a>&nbsp;không ồn ào như phố thị hay quá tập nập xe cộ ngược xuôi. Bạn có thể thoải mái ăn sáng với những món dân dã như bánh canh chả chỉ năm hay bảy nghìn đồng, món bánh căn hay bánh mì cũng rẻ không kém. Ở đây, người dân sống bình dị nên khi bạn đến đây sự đối tiếp cũng rất chân thật và gần gũi. À đến đây thì nhớ thuê xe máy để tiện cho việc di chuyển nhé!</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/tren-cao-du-lich-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh du lịch&nbsp;đảo Phú Qúy&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</em></p>

<p>Buổi sáng, lên cột mốc&nbsp;<strong>Phú Quý</strong>&nbsp;ngắm bình mình, đón cái nắng đầu ngày và lưu giữ lại vài bức ảnh kỉ niệm. Đi dọc theo con đường ven biển để đến thăm những điểm khác như chùa Linh Sơn, một ngôi chùa với kiến trúc khá đặc sắc và độc đáo. Leo hàng trăm bậc thang thì cái trước mắt hiện ra quả thực sẽ khiến bạn sẽ rất hài lòng. Bạn sẽ phải ngỡ ngàng trước một nơi linh thiêng mà cảnh sắc lại hữu tình đến vậy, Những tảng đá vôi bị bào mòn bởi thời gian tạo nên một quần thể hết sức sống động, thả mình vào làn hương trầm, suy nghĩ về cuộc đời trước sự tĩnh lặng của cảnh vật, bạn sẽ thấy tâm mình thật bình an. Và đừng quên lưu giữ những bức hình để chuyến đi thêm phần thú vị.</p>

<h2><span style="font-size:20px"><strong>Đặt Chân Đến Du Lịch Đảo Phú Qúy</strong></span></h2>

<p>Vừa bước xuống đảo mình đã cảm nhận được không khí trong lành của đảo.</p>

<h3><strong>&nbsp;<span style="font-size:18px">&nbsp;1.Đặt Phòng Khách Sạn</span></strong></h3>

<p>Mình book một phòng trong các&nbsp;<strong>khách sạn ở đảo Phú Qúy</strong>&nbsp;đều gần trung tâm huyện đảo khách sạn ở đây có đầy đủ phòng phù hợp cho khách&nbsp;<strong><em>du lịch ở đảo Phú Qúy</em></strong>&nbsp;&nbsp;(giá phòng đơn: 250.000.đ - &nbsp;phòng đôi: 350.000.đ) tụi mình ở phòng đôi nên chia tiền ra cũng rẻ, khách sạn cực đẹp, không gian ấm cúng, nhân viên thân thiện. Mình đến đảo lúc 12h về khách sạn nghỉ ngơi ăn trưa vì khách sạn có luôn dịch vụ nấu đồ ăn mà không cần ra ngoài ăn. Đến chiều tụi mình đi những nơi cách khách sạn không xa đi bằng xe máy mình mướn luôn ở khách sạn trung bình một chiếc&nbsp;100.000.đ/ 1 ngày, và cũng tùy theo loại xe mà giá khác nhau.<img alt="" src="/CKFinderJava/userfiles/images/du-lich-dao-phu-quy.jpg" style="height:345px; width:500px" /></p>

<p><em>hình ảnh du lịch&nbsp;đảo Phú Qúy&nbsp;</em></p>

<h3><span style="font-size:18px">&nbsp;&nbsp;<strong>2.Tham Quan Đảo Phú Qúy</strong></span></h3>

<p>Đến chùa Linh Quang ngôi chùa tháp nổi tiếng tại đây, chùa có tầng nhưng không mở cửa chỉ mở vào dịp lễ chùa.Sau đó chúng mình đi dạo vòng các bãi tắm của đảo VỊNH TRIỀU DƯƠNG ( gần cảng Phú Quý) bãi cát trải dài, nước trong xanh, đây cũng là bãi yêu thích của người dân trên đảo, tụi mình tắm biển ở đây rất mát mẻ, ngắm hoàng hôn trên đảo thật tuyệt vời.</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/chua-linh-quang-dich-vu-du-lich-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh chùa Linh Quang du lịch&nbsp;đảo Phú Qúy&nbsp;</em></p>

<p>Đến tối chúng mình đi ăn lẫu tại&nbsp;<strong>nhà hàng Hải Đảo</strong>&nbsp;còn có các nhà hàng khác như&nbsp;<strong>Cột Buồm</strong>&nbsp;giá(170.000-200.000/ 1 lẫu, có nhiều món nên giá khác nhau) gần đó vừa ngon lại rẻ, rồi dạo một vòng quanh đảo, không khí đảo mát mẻ những ánh đèn của các quán ăn đèn điện như một thành phố nhỏ yên bình, ít khói bụi. Ghé vào quán ăn vặt haro để ăn tiếp( giá 10.000đ-70.000đ) đồ ăn rất ngon, trà sữa rất tuyệt, quán nhỏ không gian ấm cúng, kiểu quán xưa xưa nhưng vẫn hiện đại , đèn đẹp lung linh.</p>

<p>Sáng sớm trên đảo, tại khách sạn có ban công thoáng mát&nbsp;sáng sớm tụi mình ra tận hưởng chút vitamin nắng, rửa mặt thay đồ ăn xong xuôi tụi mình đi bộ đến một chỗ quán 108 quán bán phở, mì quảng( Giá 20.000-50.000/1 tô ) quán đơn giản, thức ăn ngon là trên hết, ăn xong lại tấp vô một quán Sóng cà phê giá (12.000-50.000/ ly đồ uống) ngâm nhi tách cà phê sáng ,view quán lại đẹp đậm chất dân dã , hít không khí sáng sớm cực sáng khoải, những điểm đến của tụi mình đều không tốn tiền người dân ở đây tiếp đón tận tình lắm, tụi mình đi rất nhiều nơi trong ngày.</p>

<p>Đền thờ Công Chúa Bàn Tranh và Mộ Thầy là hai người sơ khai đảo và được người dân ở đây tôn thờ tại đảo rất linh thiêng.Tụi mình cũng đã đến cho biết, sau đó lại đến Ngọn Hải Đăng- đuốc Bác trèo lên ngọn núi mệt nhọc nhưng đến nơi rồi thì không hối hận chút nào thật tuyệt ngắm toàn đảo rất đẹp.</p>

<p>Book lịch đi&nbsp;<strong>lồng bè hải sản Bích Thi</strong>, hải sản ở đây rất ngon lại có view đẹp ăn no căn cả bụng, nghỉ ngơi tại bè vừa mát gió biển cảnh biển xanh mênh mông tuyệt vời.Ở đây có dịch vụ lặn ngắn San Hô nên chúng mình lặn tại biển của bè luôn ( có thể lặn chỗ khác đẹp hơn) &nbsp;đến với giá hải sản ăn trên bè&nbsp; (380.000đ-1.000.000đ) tùy bạn chọn loại hải sản gì.</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/du-lich-long-be-bich-thi.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh du lịch lồng bè Bích Thi&nbsp;(Ảnh &ndash; lồng bè Bích Thi)</em></p>

<h2><span style="font-size:20px"><strong>Những Địa Điểm Khác Du Lịch Đảo Phú Quý</strong></span></h2>

<p>Linh Sơn Tự-Núi cao cát nơi có nhiều bật thang cao, trong chùa rất yên tĩnh, chùa nằm trên núi nên nhìn rất đẹp mắt, đi lên đỉnh chùa có thể ngắm nhìn những ngôi nhà nhỏ xinh của người dân, biển rộng xa xa, từ chùa nhìn được một phần của đảo.</p>

<p>Ba cột phong điện khổng lồ trên đảo hướng ra biển là điểm check-in không thể thiếu đối với hoạt động&nbsp;<a href="https://dulichbienphuquy.vn/" title="du lịch đảo phú quý" type="du lịch đảo phú quý"><strong>du lịch tại đảo Phú Qúy</strong></a></p>

<p>Bãi nhỏ gành hang bãi biển đẹp không kém gì vịnh triều dương kế bên lại có cột mốc chủ quyền của đảo, muốn xuống được bãi phải đi xuống vách đá hơi nhọc xí mà vui.</p>

<p>Vạn An Thạnh (gần cảng Phú Quý) nơi thờ cúng một trong những bộ xương cá Ông lớn nhất Việt Nam.Mà bất cứ khách du lịch đảo ai cũng muốn đến xem một lần.</p>

<p>Bữa tối tụi mình xuống lề đường ăn bánh xèo cực rẻ luôn cả nhóm ăn no căn bụng mà một người chưa đến 100.000đ, ăn xong lại còn chưa đã mua một ít bánh tại quán Mỹ Duyên ( 5.000 - 50.000) ngồi hàng ghế ở quán bên lề nhìn xe đi qua lại ngắm người và tám chuyện đến tận khuya mới chịu về khách sạn.</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/cong-chua-linh-son-du-lich-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p>&nbsp;</p>

<h2><span style="font-size:20px"><strong>Dịch Vụ Du Lịch Đảo Phú Qúy</strong></span></h2>

<p>Những khách du lịch đến đây đều phải biết đến các dịch vụ&nbsp;<em><strong>du lịch ở đảo Phú Qúy</strong></em>&nbsp;mà trang bị cho mình một chuyến đi hoàn hảo và an toàn.</p>

<p><em><strong>&nbsp; &nbsp;Thuê xe máy</strong></em></p>

<p><em><strong>&nbsp;&nbsp; Thuê xe ô tô</strong></em></p>

<p><em><strong>&nbsp; &nbsp;Hỗ trợ đặt vé tàu</strong></em></p>

<p><em><strong>&nbsp; &nbsp;Hỗ trợ đặt phòng khách sạn</strong></em></p>

<p><em><strong>&nbsp; &nbsp;Hỗ trợ ăn uống tại đảo</strong></em></p>

<p><em><strong>&nbsp; Cano tham quan cảnh biển</strong></em></p>

<p>Và còn rất nhiều các dịch vụ khác để bạn tìm đến mà khám phá hoặc để thuận tiện khi muốn đi&nbsp;<em><strong>tour du lịch ở đảo Phú Qúy</strong></em>&nbsp;thì các bạn vào website:&nbsp;<strong>dulichbienphuquy.vn</strong>&nbsp;đây là công ty du lịch đầu tiên và chất lượng tại đảo Phú Qúy.</p>

<h2><span style="font-size:20px"><strong>Nỗi Nhớ Đảo Phú Qúy Hòn Đảo Ngọc Hoang Sơ</strong></span></h2>

<p>Khi về đến đất liền nỗi nhớ của chúng mình luôn kể đến những nơi nổi tiếng trên đảo, và muốn nếu có thời gian sẽ khám phá những ngỏ ngách trên đảo. Những con hẻm nhỏ yên bình, những làng chài, rồi những vách đá không tên. Thật sự những ngày ở đảo thật tuyệt vời đối với mình, thức ăn ở đảo thì miễn chê vừa ngon đậm đà, lại vừa rẻ. Người dân thì hiền hòa, vui tính, nhiệt tình. Cảnh đẹp thì rất nhiều,ban ngày thì hoang sơ, kì thú, bạn đêm thì như một thành phố giữa biển thơ mộng không bao giờ hối hận đến đây&nbsp;<em><strong>hãy đến du lịch đảo Phú Qúy</strong></em>&nbsp;nếu ai chưa từng đến.</p>

<p>Ngoài đảo lớn&nbsp;<strong>Phú Quý</strong>, bạn có thể ghé thăm những đảo nhỏ khác như Hòn Tranh, Hòn Hải, Hòn Đen, Hòn Đỏ... qua các dịch vụ tour&nbsp;<em><strong>du lịch đảo Phú Quý&nbsp;</strong></em>, rất tiện lợi và nhanh chóng có cho mình một hành trình trải nghiệm đầy thú vị.</p>

<h2><span style="font-size:20px"><strong>Cảm xúc về chiều khiến bạn thêm yêu Phú Quý?</strong></span></h2>

<p>Buổi chiều trên đảo thật sự rất bình yên, giữa thời đại công nghệ phát triển nhưng&nbsp;<strong>đảo Phú Quý</strong>&nbsp;vẫn giữ được nét đẹp giản dị. Những đứa trẻ mặt hớn hở đi tắm biển, gương mặt sạm đi vì cái nắng cái gió nhưng vẫn rất niềm nở. Trẻ con vui vẻ, tuổi thơ chúng vẫn may mắn hơn những đứa trẻ thành thị, vẫn có cái gọi là tuổi thơ đúng nghĩa. Còn người dân thì yên ả trước hiên nhà, sinh hoạt hay kể nhau nghe dăm ba câu chuyện thường nhật. Thực sự, những cảnh ấy khiến bạn sẽ thấy bình yên trong tâm hồn, thả mình trong bầu không khí dễ chịu đó, mà đi bất cứ đâu bạn cũng sẽ phải nhớ về.</p>

<p><img alt="" src="/CKFinderJava/userfiles/images/du-lich-dao-phu-quy-2019.jpg" style="height:333px; width:500px" /></p>

<p><em>hình ảnh du lịch đảo Phú Qúy</em></p>

<p>Để có một chuyến đi&nbsp;<u><em><strong>du lịch đảo Phú Qúy</strong></em></u>&nbsp;thuận lợi và đẹp nhất thì bạn nên đi vào những tháng đầu năm, bởi đây là mùa đẹp nhất và hải sản cũng nhiều. Nếu là lần đầu đến đảo, chưa có nhiều kinh nghiệm thì việc chọn một tour hướng dẫn du lịch từ A đến Z là điều rất cần thiết, việc này sẽ giúp cho chuyến đi của bạn được suôn sẻ và có nhiều trải nghiệm chân thực nhất. Không quá lo nghĩ về cho ở và phương tiện đi lại, dịch vụ tour sẽ hướng dẫn cho bạn kĩ càng nhất có thể, mang lại một cảm giác an toàn hơn khi du lịch.</p>

<h2><span style="font-size:20px"><strong>Con người trên đảo hiền hòa mến khách</strong></span></h2>

<p>Nhiều du khách đến&nbsp;<strong><em>du lịch đảo Phú Quý&nbsp;</em></strong>thường tâm sự, mối quan tâm hàng đầu khi đến nghỉ dưỡng vui chơi một địa điểm nào đó là người dân bản địa, cuộc sống cũng như tính cách của họ. phần lớn du khách lo sợ lừa đảo, phong tục, cướp giật, tệ nạn,..</p>

<p>đến với&nbsp;<strong><em>đảo Phú Quý&nbsp;</em></strong>mọi lo ngại vấn đề đó hoàn toàn tan biến, du khách nghiệm ra một điều là trong cuộc sống bộn bề, tính toán, chật vật&hellip;lại còn những con người dân đảo phú quý. tâm hồn họ trong sáng, chân chất, cực kỳ hiếu khách và hay cười.</p>

<p>Những người con của biển đảo không vồn vã hỏi han nhưng rất niềm nở, hiền hòa, bình dị.&nbsp;<strong><em>Phú Quý&nbsp;</em></strong>mang lại cho du khách cảm giác cuộc sống yên bình, nhẹ nhàng, sâu lắng bởi tình thương giữa con người với con người.</p>

<h4><em><strong>&nbsp;&nbsp;</strong></em></h4>

<p>&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Hải sâm:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Theo ngư dân, ở đây có khoảng 100 loài hải sâm nhưng chủ yếu phân biệt được 10 loại. Hải sâm còn gọi là đồn đột, là món ăn quý và đắt tiền vì chúng cung cấp nguồn dinh dưỡng cao, đồng thời có tác dụng như một loại thuốc bổ. Hải sâm thường được nấu với các vị thuốc bắc cùng thịt bồ câu, gà ác, móng heo, chân bò, gân nai.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Cá thu:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Đảo Phú Quý vốn có tên là cù lao Thu, vì ở đây có rất nhiều cá thu. Cá thu trên đảo đặc biệt thơm ngon và được chế biến thành rất nhiều món mang hương vị rất đặc trưng. Mùa trở gió ngồi bên món lẩu cá thu không gì bằng.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Gỏi ốc giác:</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Ốc giác là loại hải sản quen thuộc của người dân Phú Quý nhưng lại lạ lẫm với du khách thập phương. Một con ốc giác lớn nặng từ 1.5 kg &ndash; 2 kg, với ốc giác, người ta có thể biến tấu thành nhiều món khác nhau nhưng món gỏi ốc giác là món ăn khoái khẩu của khách du lịch khi đến đây.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><img alt="" src="/CKFinderJava/userfiles/images/oc-giac-o-vietnam.jpg" style="height:333px; width:500px" /></span></span></span></p>

<p style="text-align:left"><em>hình ảnh ốc Gíac&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</em></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000"><strong><em>Cá mú bông :</em></strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Cá mú bông ở Tour đảo Phú Quý tươi rói, thân đẫy đà trơn mướt. Cá mú bông chỉ ăn mồi sống như tôm, cua nên thịt thơm và ngon ngọt, thường được nấu chua hoặc xào với cà, khế, rau mùi.</span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Tuy nhiên, đặc sắc nhất phải kể đến lớp da của cá màu đen dày 1cm, lốm đốm vàng nghệ, đôi chỗ ngả màu cam, tưởng chừng tươm mỡ. Da cá được đem phơi thật khô rồi cắt miếng nhỏ, rang cát, ngâm nước cho nở phồng, trộn đều với đậu phộng rang, rau răm cắt nhỏ, tỏi, ớt, nước mắm.</span></span></span></p>

<p><br />
<img alt="" src="/CKFinderJava/userfiles/images/ban-tat-ca-cac-loai-ca-bien-1477980710-1100114-1477980710.jpg" style="height:346px; width:500px" /></p>

<p><em>hình ảnh Cá mú&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</em></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#00b0f0"><strong>Mua gì làm quà khi du lịch đảo Phú Qúy?</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Mua quà khi du lịch biển Phú Qúy bạn có thể mua các loại hải sản như: cua huỳnh đế, tôm hùm, cá mú, ốc các loại, cá chình,&hellip; Hoặc một số món ăn đặc trưng của Phú Qúy như: chả Cá, mực khô các loại, rượu Dứa, bánh Dế,.. đó là một số món đặc sản tại đảo. du khách có thể mua về làm quà tặng hoặc để dành ăn vì giá cả ở đảo thường rẻ hơn rất nhiều nơi khác và chất lượng hơn.</span></span></span></p>

<p style="text-align:left"><img alt="" src="/CKFinderJava/userfiles/images/27044310998_f98317fed8_z.jpg" style="height:255px; width:500px" /></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#ff0000"><strong>Lời kết:</strong></span></span></span></p>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:Arial"><span style="color:#000000">Hy vọng một số&nbsp;</span></span><span style="font-family:Arial"><span style="color:#000000"><strong>kinh nghiệm du lịch đảo Phú Qúy 2019: Đi lại, tham quan &amp; ăn uống</strong></span></span><span style="font-family:Arial"><span style="color:#000000">&nbsp;trên đây sẽ giúp các bạn có một chuyến du lịch đảo Phú Qúy vừa rẻ, tiết kiệm, an toàn lại bổ ích. Những thông tin chúng tôi tổng hợp có thể còn nhiều thiếu sót, các bạn có thể chia sẻ kinh nghiệm du lịch đảo Phú Qúy của mình tại Facebook: <a href="https://www.facebook.com/dulichbienphuquy.vn/?__tn__=%2Cd%2CP-R&amp;eid=ARBTBKM2H7rzAFmu1owqIRf9RUxF6VWYzoZotTvrbBypnyCjf-UXrfWjDNdMl8VE8_gsLcIRQan_ZdN-" style="box-sizing:border-box; padding:0px; color:#007bff; text-decoration:none">du lịch biển Phú Qúy</a> nhé. Cảm ơn và chúc các bạn có một chuyến du lịch tuyệt vời.</span></span></span></p>
', N'NV2       ')
SET IDENTITY_INSERT [dbo].[TinDuLich] OFF
INSERT [dbo].[TourDuLich] ([IdTour], [TenTour], [Hinhanh], [Khachsan], [Dichuyen], [Thoigian], [Khoihanh], [Gia], [Noidung], [IdUser]) VALUES (N'IDT1      ', N'Tour Phượt Phan Thiết - Phú Quý(3N2Đ)', N'tour-phuot-dao-phu-quy-3-ngay-2-dem.jpg', N'Bảo Trân', N'Tàu Thủy Cao Tốc', N'3 ngày 2 đêm', N'Hằng ngày', 1900000, N'<p><strong><span style="font-size:18px">MÔ TẢ DỊCH VỤ</span></strong></p>

<h2><span style="color:#ff0000">Chính sách Tour</span></h2>

<p><span style="color:#ff0000"><textarea cols="80" name="Chính Sách Tour" rows="20">THÔNG TIN CẦN BIẾT:

          1/ GIÁ TOUR CHO TRẺ EM:

          - Trẻ em từ 12 tuổi trở lên: 100% giá tour như người lớn.

          - Khách đi tour kèm theo 02 trẻ em dưới 05 tuổi: quý khách mua thêm 50% giá tour để có tiêu chuẩn ăn uống, ghế ngồi trên xe, tham quan cho bé. 
          - Trẻ em dưới 02 tuổi đến 5 tuổi: miễn giá tour (cha mẹ tự lo cho bé).

          - Trẻ em trên 05 dưới 12 tuổi: 50% giá tour, bao gồm các dịch vụ ăn uống, ghế ngồi trên xe nhưng bé ngủ chung với cha mẹ, không có giường riêng.
          2/ ĐIỀU KIỆN HỦY DỊCH VỤ :

          &bull; Tour Du Lịch :

          Sau khi xác nhận và thanh toán (ít nhất 50% tiền cọc giữ chỗ và thanh toán 100% tối thiểu 24 tiếng trước ngày khởi hành), nếu:

          - Sau khi đặt cọc đến 3 ngày trước ngày khởi hành: phí hủy 20% tiền tour 

          - Hủy tour 3-2 ngày trước ngày khởi hành: phí hủy 30% tiền tour 

          - Hủy tour 24 tiếng trước ngày khởi hành: phí hủy 40% tiền tour 

          - Hủy tour ngay trong ngày khởi hành: phí hủy 50% tiền tour. Trường hợp quý khách đến trễ giờ khởi hành được tính là hủy ngay trong ngày. 

          &bull; Hủy vé tàu thủy: áp dụng theo quy định của từng hãng tàu vận chuyển.
          &bull; Trong trường hợp hủy chuyến đi vì lý do khách quan (thiên tai, dịch bệnh&hellip;) hay do tàu thủy sẽ hoàn lại toàn bộ những chi phí chưa được sử dụng cho việc tổ chức dịch vụ và không bồi thường thêm bất kỷ khoản nào khác.

          LƯU Ý:

          &bull; Khi tham gia chương trình tour, quý khách vui lòng mang theo giấy tờ tùy thân (bản chính đối với khách Việt Nam là CMND và Passport đối với Kiều bào &amp; ngoại quốc). Đối với khách Kiều bào &amp; ngoại quốc nhập cảnh bằng visa rời, vui lòng mang theo visa và tờ khai hải quan khi đi du lịch.

          &bull; Trẻ em không có CMND khi đi du lịch, nếu không có cha hoặc mẹ đi cùng phải có giấy ủy quyền của cha mẹ và có xác nhận của công an địa phương để thủ tục hành chính.

          &bull; Quý khách có mặt tại điểm hẹn ít nhất 10 phút trước giờ khởi hành và nên mang theo hành lý gọn nhẹ, không quá cồng kềnh.

          &bull; Một số thứ tự và chi tiết trong chương trình có thể thay đổi để phù hợp với tình hình khách quan (thời tiết, giao thông &hellip;). 

          &bull; Trường hợp ra đến Phú Quý do thời tiết xấu tàu ngưng hoạt động thì quý khách phải chịu mọi chi phí phát sinh trong những ngày ngoại Tour.

          Hành trình tổ chức tour làm theo lịch hoạt động thực tế của tàu. Vì phải phụ thuộc vào thủy triều của cảng Thương Chánh Phan Thiết

          &bull; Giá trên tour áp dụng cho từ 5 khách trở lên.</textarea></span></p>

<p>&nbsp;</p>

<h1><span style="font-size:24px"><strong>LỊCH TRÌNH TOUR PHƯỢT ĐẢO PHÚ QUÝ 3 NGÀY 2 ĐÊM</strong></span></h1>

<h2><span style="font-size:20px"><strong>NGÀY 1: TP.PHAN THIẾT - PHÚ QÚY</strong></span></h2>

<p><strong>&nbsp; &nbsp;Buổi Sáng :</strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>7 giờ 00:</strong>&nbsp; HDV sẽ đưa quý khách ra cảng Thương chánh Phan Thiết và làm thủ tục xuống tàu khởi hành đi Phú Quý bằng tàu cao tốc lúc&nbsp;<strong>8 h 00</strong>&nbsp;sáng.Để bắt đầu hành trình&nbsp;<a href="https://dulichbienphuquy.vn/" title="phượt đảo Phú Qúy" type="phượt đảo Phú Qúy"><em><strong>phượt đảo Phú Qúy</strong></em></a></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>10 giờ 30:</strong>&nbsp;Tàu cặp cảng Phú Quý. Đoàn nhận xe máy 2 người/ 1 xe di chuyển về nhà nghỉ&nbsp;nhận phòng.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>11 giờ 00:&nbsp;</strong>&nbsp;Đoàn dùng cơm tại nhà hàng Hải Đảo nằm cạnh bãi biển đẹp. Về lại nhà nghỉ nghỉ ngơi.</p>

<p>&nbsp;&nbsp;&nbsp;<strong>Buổi chiều :</strong></p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;14 giờ 00:&nbsp;</strong>Du khách sẽ được tham quan chùa&nbsp;<strong>Linh Quang</strong>&nbsp;là di tích lịch sử cấp quốc gia tọa lạc trên một đồi cao tại thôn Mỹ Khê xã Tam Thanh. Chùa được xây dựng vào thời Cảnh Hưng thứ 8 đến nay đã có hơn 250 tuổi. Chùa còn lưu giữ các sắc phong của Triều Nguyễn</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>15 giờ 00:</strong>&nbsp;Viếng thăm bộ&nbsp; xương cá voi tại Vạn An Thạnh</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>16 giờ 00</strong>: du khách sẽ được tiếp tục đến với một bãi biển được coi là đẹp nhất trên đảo Phú Quý, bãi biển được mang tên&nbsp;<strong>&ldquo; Vịnh Triều Dương &ldquo;</strong>&nbsp;với bờ cát trắng mịn trãi dài, nước biển xanh ngắt một màu du khách sẽ được tắm biển tại đây để cùng hòa mình vào làn sóng biển êm dịu, cảm giác như thiên đường này là của ta, từ Vịnh Triều Dương du khách có thể nhìn thấy xa xa là&nbsp;<strong>&ldquo; Hòn Tranh &ldquo;</strong>&nbsp;một trong những hòn đảo nhỏ được nhiều người biết đến nhất.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;17&nbsp;giờ&nbsp;20:</strong>&nbsp;Quay về nhà nghỉ tắm nước ngọt, thư giãn.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>18 giờ 00:&nbsp;</strong>&nbsp;Đoàn dùng cơm tại nhà hàng. Về lại nhà nghỉ&nbsp;nghỉ ngơi.Kết thúc 1 ngày cùng&nbsp;<strong>tour phượt Phú Qúy</strong></p>

<p><img alt="tour phượt đảo Phú Qúy" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/phuot-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh&nbsp;phượt đảo Phú Qúy&nbsp;</em></p>

<p>&nbsp;</p>

<h2><span style="font-size:20px"><strong>NGÀY 02: TOUR PHƯỢT ĐẢO PHÚ QUÝ HÒN ĐẢO NGỌC HOANG SƠ</strong></span></h2>

<p><strong>&nbsp;&nbsp;&nbsp;Buổi sáng:</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>6 giờ 00<em>:&nbsp;</em></strong>Đoàn dùng điểm tâm sáng</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>7 giờ 00:</strong>&nbsp;du khách sẽ được tận hưởng 1 cảm giác vô cùng thích thú chỉ có tại Phú Quý khi đến với ngôi chùa&nbsp;<strong>&ldquo;Linh Sơn Tự &ldquo;</strong>&nbsp;một ngôi chùa nằm trên ngọn núi &ldquo;<strong>Cao Cát&rdquo;</strong>, lên đỉnh núi Cao Cát tận hưởng làn gió mát rượi từ biển, nhìn tứ phía chỉ có biển khơi, cư dân Phú Quý ai cũng biết câu:&nbsp;<strong>&quot;Tứ phương vô sự lầu&rdquo;.</strong>&nbsp;Ý nói lên đến đỉnh núi, nhìn quanh ra biển, yên bình đến quên hết sự đời.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>9 giờ 00</strong>: Đoàn di chuyển tham quan&nbsp;<strong>&quot;Mũi Dinh Thầy&quot;</strong>. Nằm trên mũi bải đá nhô ra biển&nbsp;<em>Mũi Dinh Thầy</em>&nbsp;hay&nbsp;<em>Mộ Thầy</em>&nbsp;đối với người dân nơi đây là một nơi vô cùng thiêng liêng và kính trọng. như vị thần che chở cho vùng đất đó. Mộ Thầy chính là nơi thờ cúng hay tổ chức Lễ hội của người dân. Có đến được nơi đây du khách mới có thể hiểu hết được sự thần kỳ của mẹ thiên nhiên đã tạo nên vẻ đẹp cho Mũi Thầy.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>10 giờ 30</strong>: &nbsp;Đoàn di chuyển đến<strong><em>&nbsp;Nhà bè (còn gọi là Bè nuôi cá)&nbsp;</em></strong>tham quan. Được thiên nhiên ưu ái và trao cho người dân trên đảo trữ lượng hải sản rất trù phú, đa dạng. Những nhà bè ở Phú Quý là một điểm đến vô cùng đặc sắc mà du khách đến đây cũng không thể bỏ qua. Với những loại đặc sản như Cua Mặt Trăng, cá Mú Sao Đỏ, cá Bóp,... những nhà bè ở đây sẽ mang đến cho du khách những trải nghiệm thú vị và tươi ngon của ẩm thực Phú Quý.&nbsp;<strong>Qúy khách sẽ ăn trưa trên nhà bè (cháo cá mú và ốc nhảy). Tại đây quý khách có thể tắm biển và ngắm san hô.</strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>12&nbsp;giờ 30:</strong>&nbsp;Đoàn di chuyển về nhà nghỉ&nbsp;nghỉ ngơi</p>

<p><strong>&nbsp; &nbsp; Buổi chiều:</strong></p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14&nbsp;giờ00:</strong>&nbsp;Đoàn khởi hành tham quan khu điện gió, trên đường đi du khách sẽ được thưởng ngoạn cảnh sống và sinh hoạt của ngư dân làng chài. Cùng với sự bào mòn của gió và nước biển đã tạo cho những bãi đá vôi nằm cạnh biển đảo những hang động vô cùng kỳ thú và hấp dẫn, du khách sẽ được lưu lại những khoảnh khắc vô cùng tuyệt vời.</p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;15&nbsp;giờ&nbsp;00:</strong>&nbsp;Tham quan chùa Linh Bửu và chinh phục ngọn&nbsp;<strong>&ldquo;Hải Đăng&rdquo;</strong>&nbsp;nằm trên đỉnh&nbsp;<strong>&ldquo;Núi Cấm&rdquo;</strong>&nbsp;tham quan Đuốc Bác Hồ. Sau đó leo lên ngọn Hải đăng cao 108m so với mực nước biển du khách sẽ được nhìn toàn cảnh của ngư dân làng chài cũng như là quan sát toàn bộ huyện đảo Phú Quý.</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16</strong>&nbsp;<strong>giờ&nbsp;30:&nbsp;</strong>Tham quan Đền thờ một vị công chúa, mà nhân dân địa phương thường gọi là miếu Bà Chúa. Theo dân trên đảo, ngôi miếu này rất linh thiêng và nó gắn liền với một câu chuyện bi thương của người con gái tài sắc thuộc dòng dõi hoàng tộc Champa. Người con gái ấy chính là Bàn Tranh mà theo truyền thuyết&nbsp; là con của vua Indravarmar III&nbsp; (918 - 959).</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17&nbsp;giờ&nbsp;00:</strong>&nbsp;Quay về nhà nghỉ nghỉ ngơi</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>18</strong>&nbsp;<strong>giờ&nbsp;00:&nbsp;</strong>Đoàn dùng cơm tại nhà hàng thưởng thức rượu đặc sản Phú Qúy tại nhà hàng Hải Đảo với một không gian sát biển vô cùng lý tưởng và nên thơ, du khách sẽ có được những giây phút vui vẻ và ấm áp. Về lại nhà nghỉ&nbsp;nghỉ&nbsp;ngơi. Chuyến đi&nbsp;<strong>phượt đảo Phú Qúy</strong>&nbsp;ngày 2 đã kết thúc</p>

<p><img alt="cùng tour phượt đảo Phú Qúy" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-phuot-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh tour phượt đảo Phú Qúy</em></p>

<p>&nbsp;</p>

<h2><span style="font-size:20px"><strong>NGÀY 03: PHÚ QUÝ - PHAN THIẾT</strong></span></h2>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;Buổi sáng:</strong></p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 giờ 00:</strong>&nbsp;Quý khách dùng điểm tâm sáng</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7&nbsp;giờ30:&nbsp;Đoàn di chuyển xuống</strong>&nbsp;&ldquo;&nbsp;<strong>Gành Hang</strong>&nbsp;&ldquo; phóng tầm nhìn không xa du khách sẽ được nhìn thấy 1 bãi biển được bao bọc xung quanh là núi đá vôi ,cùng với một con đường dẫn xuống bãi biển vô cùng đẹp mắt ,du khách sẽ được tham quan bãi biển mang tên là&nbsp;<strong>&ldquo;Bãi Nhỏ&ldquo;</strong>, nhỏ về diện tích nhưng ko hề nhỏ về vẻ đẹp và vẻ hùng vĩ của bãi biển này, đây là câu nói mà những ai đã đặt chân đến&nbsp;<strong>&ldquo;&nbsp;Bãi Nhỏ&nbsp;&ldquo;</strong>&nbsp;dành tặng cho nó. Tham quan&nbsp;<strong>Cột cờ chủ quyền</strong>&nbsp;và chụp hình lưu niệm.</p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8&nbsp;giờ&nbsp;30:</strong>&nbsp;Du khách mua sắm các mặt hàng hải sản và quà lưu niệm</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>9&nbsp;giờ 30:</strong>&nbsp;Đoàn di chuyển về nhà nghỉ&nbsp;lấy hành.&nbsp;Di chuyển ra Cảng Phú Qúy làm thủ tục khởi hành về Phan Thiết lúc&nbsp;<strong>10h00</strong>.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>12&nbsp;giờ&nbsp;30:</strong>&nbsp;Tàu về đến Cảng Thương Chánh Phan Thiết. Kết thúc chuyến đi&nbsp;<strong><a href="https://dulichbienphuquy.vn/trai-nghiem-tour-phuot-dao-phu-quy-n105.html" title="tour phượt tại đảo Phú Qúy" type="tour phượt tại đảo Phú Qúy"><em>tour phượt tại Phú Qúy</em></a></strong></p>

<p>&nbsp;&nbsp;*&nbsp;<strong>Phương tiện: Tàu thủy, ca nô, xe máy.</strong></p>

<p><img alt="tour phượt đảo phú quý" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tham-quan-tour-phuot-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>Hiện nay tour phượt đảo Phú Qúy rất nhiều</em></p>

<h2><span style="font-size:20px"><strong>ĐẶC ĐIỂM CHÍNH CỦA TOUR PHƯỢT ĐẢO PHÚ QUÝ:</strong></span></h2>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Được thỏa mãn với cảnh đẹp ở Phú Qúy&nbsp;biển xanh cát trắng.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Khám phá Phú Qúy&nbsp;từ Bắc đảo cho tới cực Nam Đảo.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Được thưởng thức hải sản tươi sống, tự nhiên điều mà ở các đô thị không có được.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Được tìm hiểu văn hóa và trải nghiệm cuộc sống biển đảo, tận hưởng không khí trong lành mát mẻ của vùng biển quê hương.</p>

<p><strong>&nbsp; &nbsp;* DỊCH VỤ BAO GỒM:</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Các bữa ăn trong chương trình (02&nbsp;bữa sáng, 04&nbsp;bữa chính).</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Hướng dẫn viên tại địa phương tiếng Việt.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Phí tham quan các nơi theo chương trình.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Bảo hiểm du lịch theo tiêu chuẩn khách du lịch Việt Nam.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - 02 lượt vé tàu cao tốc.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Xe máy tham quan tại Đảo.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Nhà nghỉ Phú Qúy đầy đủ tiện nghi.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Nước khoáng 4 chai loại 350ml+ 2 khăn lạnh.</p>

<p>&nbsp; &nbsp; *&nbsp;<strong>QÙA TẶNG:</strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 1 nón du lịch</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;KHÔNG BAO GỒM&nbsp;:</strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Phòng đơn. Các chi phí cá nhân khác: điện thoại, giặt ủi, thức ăn, uống ngoài chương trình &hellip;&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Thuế VAT.</p>
', N'NV1       ')
INSERT [dbo].[TourDuLich] ([IdTour], [TenTour], [Hinhanh], [Khachsan], [Dichuyen], [Thoigian], [Khoihanh], [Gia], [Noidung], [IdUser]) VALUES (N'IDT2      ', N'Tour Phan Thiết - Phú Quý(3N2Đ)', N'tour-dao-phu-quy-3-ngay.jpg', N'Ninh Thạnh', N'Tàu Thủy Cao Tốc', N'3 ngày 2 đêm', N'Hằng ngày', 2500000, N'<p><strong>MÔ TẢ DỊCH VỤ</strong></p>

<h2><span style="color:#ff0000"><span style="font-size:18px">Chính sách Tour</span></span></h2>

<p><span style="color:#ff0000"><span style="font-size:18px"><textarea cols="80" rows="25">THÔNG TIN CẦN BIẾT:

          1/ GIÁ TOUR CHO TRẺ EM:

          - Trẻ em từ 12 tuổi trở lên: 100% giá tour như người lớn.

          - Khách đi tour kèm theo 02 trẻ em dưới 05 tuổi: quý khách mua thêm 50% giá tour để có tiêu chuẩn ăn uống, ghế ngồi trên xe, tham quan cho bé. 
          - Trẻ em dưới 02 tuổi đến 5 tuổi: miễn giá tour (cha mẹ tự lo cho bé).

          - Trẻ em trên 05 dưới 12 tuổi: 50% giá tour, bao gồm các dịch vụ ăn uống, ghế ngồi trên xe nhưng bé ngủ chung với cha mẹ, không có giường riêng.


          2/ ĐIỀU KIỆN HỦY DỊCH VỤ :

          &bull; Tour Du Lịch :

          Sau khi xác nhận và thanh toán (ít nhất 50% tiền cọc giữ chỗ và thanh toán 100% tối thiểu 24 tiếng trước ngày khởi hành), nếu:

          - Sau khi đặt cọc đến 3 ngày trước ngày khởi hành: phí hủy 20% tiền tour 

          - Hủy tour 3-2 ngày trước ngày khởi hành: phí hủy 30% tiền tour 

          - Hủy tour 24 tiếng trước ngày khởi hành: phí hủy 40% tiền tour 

          - Hủy tour ngay trong ngày khởi hành: phí hủy 50% tiền tour. Trường hợp quý khách đến trễ giờ khởi hành được tính là hủy ngay trong ngày. 

          &bull; Hủy vé tàu thủy: áp dụng theo quy định của từng hãng tàu vận chuyển.
          &bull; Trong trường hợp hủy chuyến đi vì lý do khách quan (thiên tai, dịch bệnh&hellip;) hay do tàu thủy sẽ hoàn lại toàn bộ những chi phí chưa được sử dụng cho việc tổ chức dịch vụ và không bồi thường thêm bất kỷ khoản nào khác.

          LƯU Ý:

          &bull; Khi tham gia chương trình tour, quý khách vui lòng mang theo giấy tờ tùy thân (bản chính đối với khách Việt Nam là CMND và Passport đối với Kiều bào &amp; ngoại quốc). Đối với khách Kiều bào &amp; ngoại quốc nhập cảnh bằng visa rời, vui lòng mang theo visa và tờ khai hải quan khi đi du lịch.

          &bull; Trẻ em không có CMND khi đi du lịch, nếu không có cha hoặc mẹ đi cùng phải có giấy ủy quyền của cha mẹ và có xác nhận của công an địa phương để thủ tục hành chính.

          &bull; Quý khách có mặt tại điểm hẹn ít nhất 10 phút trước giờ khởi hành và nên mang theo hành lý gọn nhẹ, không quá cồng kềnh.

          &bull; Một số thứ tự và chi tiết trong chương trình có thể thay đổi để phù hợp với tình hình khách quan (thời tiết, giao thông &hellip;). 

          &bull; Trường hợp ra đến Phú Quý do thời tiết xấu tàu ngưng hoạt động thì quý khách phải chịu mọi chi phí phát sinh trong những ngày ngoại Tour.

          Hành trình tổ chức tour làm theo lịch hoạt động thực tế của tàu. Vì phải phụ thuộc vào thủy triều của cảng Thương Chánh Phan Thiết

          &bull; Gía trên tour áp dụng cho từ 5 khách trở lên.</textarea></span></span></p>

<h1><span style="font-size:22px"><strong>LỊCH TRÌNH TOUR&nbsp;ĐẢO PHÚ QUÝ 3 NGÀY 2 ĐÊM</strong></span></h1>

<h2><span style="font-size:20px"><strong>NGÀY 1: TP.PHAN THIẾT - PHÚ QÚY</strong></span></h2>

<p><strong>&nbsp; &nbsp;<u>Buổi Sáng</u>:</strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>7 giờ 00:</strong>&nbsp; HDV sẽ đưa quý khách ra cảng Thương chánh Phan Thiết và làm thủ tục xuống tàu khởi hành đi Phú Quý bằng tàu cao tốc lúc&nbsp;<strong>8 h00</strong>&nbsp;sáng.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>10 giờ 30:</strong>&nbsp;Tàu cặp cảng Phú Quý. Đoàn di chuyển về khách sạn nhận phòng.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>11 giờ 30:&nbsp;</strong>&nbsp;Đoàn dùng cơm tại nhà hàng Hải Đảo nằm cạnh bãi biển đẹp. Về lại khách sạn nghỉ ngơi.</p>

<p>&nbsp;&nbsp;&nbsp;<u><strong>Buổi chiều :</strong></u></p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;14 giờ 00:&nbsp;</strong>Du khách sẽ được tham quan chùa&nbsp;<strong>Linh Quang</strong>&nbsp;là di tích lịch sử cấp quốc gia tọa lạc trên một đồi cao tại thôn Mỹ Khê xã Tam Thanh. Chùa được xây&nbsp;dựng vào thời Cảnh Hưng thứ 8 đến nay đã có hơn 250 tuổi. Chùa còn lưu giữ các sắc phong của Triều Nguyễn.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>15 giờ 00:</strong>&nbsp;Viếng thăm bộ&nbsp; xương cá voi tại Vạn An Thạnh</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>16 giờ 00</strong>: Du khách sẽ được tiếp tục đến với một bãi biển được coi là đẹp nhất trên đảo Phú Quý, bãi biển được mang tên&nbsp;<strong>&ldquo; Vịnh Triều Dương &ldquo;</strong>&nbsp;với bờ cát trắng mịn trãi dài, nước biển xanh ngắt một màu du khách sẽ được tắm biển tại đây để cùng hòa mình vào làn sóng biển êm dịu, cảm giác như thiên đường này là của ta, từ Vịnh Triều Dương du khách có thể nhìn thấy xa xa là&nbsp;<strong>&ldquo; Hòn Tranh &ldquo;</strong>&nbsp;một trong những hòn đảo nhỏ được nhiều người biết đến nhất. Tại đây quý khách sẽ ngâm mình dưới làng nước trong&nbsp;xanh biết.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;17&nbsp;giờ&nbsp;20:</strong>&nbsp;Quay về khách sạn tắm nước ngọt,thư giãn.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>18 giờ 00:&nbsp;</strong>&nbsp;Đoàn dùng cơm tại nhà hàng. Về lại khách sạn nghỉ ngơi.Kết thúc ngày 1 của&nbsp;<strong><a href="https://dulichbienphuquy.vn/tour-dao-phu-quy" title="tour đảo Phú Qúy" type="tour đảo Phú Qúy">tour đảo Phú Qúy</a>&nbsp;.</strong></p>

<p><img alt="tour đảo Phú Qúy 3 ngày 2 đêm" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-dao-phu-quy-3-ngay-2-dem.jpg" style="height:332px; width:500px" /></p>

<p>hình ảnh tour đảo Phú Quý 3 ngày 2 đêm&nbsp;</p>

<p>&nbsp;</p>

<h2><span style="font-size:20px"><strong>&nbsp;</strong><strong>NGÀY 02: TOUR ĐẢO PHÚ QUÝ HÒN ĐẢO NGỌC HOANG SƠ</strong></span></h2>

<p><strong>&nbsp;&nbsp;&nbsp;<u>Buổi sáng:</u></strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>6 giờ 00<em>:&nbsp;</em></strong>Đoàn dùng điểm tâm sáng.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>7 giờ 00:</strong>&nbsp;du khách sẽ được tận hưởng 1 cảm giác vô cùng thích thú chỉ có tại Phú Quý khi đến với ngôi chùa&nbsp;<strong>&ldquo;Linh Sơn Tự &ldquo;</strong>&nbsp;một ngôi chùa nằm trên ngọn núi &ldquo;<strong>Cao Cát&rdquo;</strong>, lên đỉnh núi Cao Cát tận hưởng làn gió mát rượi từ biển, nhìn tứ phía chỉ có biển khơi, cư dân Phú Quý ai cũng biết câu:&nbsp;<strong>&quot;Tứ phương vô sự lầu&rdquo;.</strong>&nbsp;Ý nói lên đến đỉnh núi, nhìn quanh ra biển, yên bình đến quên hết sự đời.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>9 giờ 00</strong>: Đoàn di chuyển tham quan&nbsp;<strong>&quot;Mũi Dinh Thầy&quot;</strong>. Nằm trên mũi bải đá nhô ra biển&nbsp;<em>Mũi Dinh Thầy</em>&nbsp;hay&nbsp;<em>Mộ Thầy</em>&nbsp;đối với người dân nơi đây là một nơi vô cùng thiêng liêng và kính trọng. như vị thần che chở cho vùng đất đó. Mộ Thầy chính là nơi thờ cúng hay tổ chức Lễ hội của người dân. Có đến được nơi đây du khách mới có thể hiểu hết được sự thần kỳ của mẹ thiên nhiên đã tạo nên vẻ đẹp cho Mũi Thầy.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>10 giờ 30</strong>: &nbsp;Đoàn di chuyển đến<strong><em>&nbsp;Nhà bè (còn gọi là Bè nuôi cá)&nbsp;</em></strong>tham quan. Được thiên nhiên ưu ái và trao cho người dân trên đảo trữ lượng hải sản rất trù phú, đa dạng. Những nhà bè ở Phú Quý là một điểm đến vô cùng đặc sắc mà du khách đến đây cũng không thể bỏ qua. Với những loại đặc sản như Cua Mặt Trăng, cá Mú Sao Đỏ, cá Bóp,... những nhà bè ở đây sẽ mang đến cho du khách những trải nghiệm thú vị và tươi ngon của ẩm thực Phú Quý.&nbsp;<strong>Qúy khách sẽ ăn trưa trên nhà bè (cháo cá mú và ốc nhảy). Tại đây quý khách có thể tắm biển và ngắm san hô.</strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>12&nbsp;giờ 30:</strong>&nbsp;Đoàn di chuyển về khách sạn nghỉ ngơi.</p>

<p><strong>&nbsp;&nbsp;&nbsp;<u>Buổi chiều:</u></strong></p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14&nbsp;giờ00:</strong>&nbsp;Đoàn khởi hành tham quan khu điện gió, trên đường đi du khách sẽ được thưởng ngoạn cảnh sống và sinh hoạt của ngư dân làng chài. Cùng với sự bào mòn của gió và nước biển đã tạo cho những bãi đá vôi nằm cạnh biển đảo những hang động vô cùng kỳ thú và hấp dẫn, du khách sẽ được lưu lại những khoảnh khắc vô cùng tuyệt vời.</p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;15&nbsp;giờ&nbsp;00:</strong>&nbsp;Tham quan chùa Linh Bửu và chinh phục ngọn&nbsp;<strong>&ldquo;Hải Đăng&rdquo;</strong>&nbsp;nằm trên đỉnh&nbsp;<strong>&ldquo;Núi Cấm&rdquo;</strong>&nbsp;tham quan Đuốc Bác Hồ. Sau đó leo lên ngọn Hải đăng cao 108m so với mực nước biển du khách sẽ được nhìn toàn cảnh của ngư dân làng chài cũng như là quan sát toàn bộ huyện đảo Phú Quý.</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16</strong>&nbsp;<strong>giờ&nbsp;30:&nbsp;</strong>Tham quan Đền thờ một vị công chúa, mà nhân dân địa phương thường gọi là miếu Bà Chúa. Theo dân trên đảo, ngôi miếu này rất linh thiêng và nó gắn liền với một câu chuyện bi thương của người con gái tài sắc thuộc dòng dõi hoàng tộc Champa. Người con gái ấy chính là Bàn Tranh mà theo truyền thuyết&nbsp; là con của vua Indravarmar III&nbsp; (918 - 959).</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17&nbsp;giờ&nbsp;00:</strong>&nbsp;Quay về khách sạn nghỉ ngơi.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>18</strong>&nbsp;<strong>giờ&nbsp;00:&nbsp;</strong>Đoàn dùng cơm tại nhà hàng thưởng thức rượu&nbsp;<strong>đặc sản Phú Qúy</strong>&nbsp;tại nhà hàng Hải Đảo với một không gian sát biển vô cùng lý tưởng và nên thơ, du khách sẽ có được những giây phút vui vẻ và ấm áp.Về lại khách sạn nghỉ&nbsp;ngơi.</p>

<p><img alt="tour đảo Phú Qúy 3 ngày 2 đêm" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-phan-thiet-dao-phu-quy-3N2%C4%90.jpg" style="height:332px; width:500px" /></p>

<p>hình ảnh tour Phan Thiết - Phú Qúy&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</p>

<p>&nbsp;</p>

<h2><span style="font-size:20px"><strong>NGÀY 03: PHÚ QUÝ - PHAN THIẾT</strong></span></h2>

<p><strong>&nbsp; &nbsp;<u>Buổi sáng:</u></strong></p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 giờ 00:</strong>&nbsp;Quý khách dùng điểm tâm sáng</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7&nbsp;giờ30:&nbsp;Đoàn di chuyển xuống</strong>&nbsp;&ldquo;&nbsp;<strong>Gành Hang</strong>&nbsp;&ldquo; phóng tầm nhìn không xa du khách sẽ được nhìn thấy 1 bãi biển được bao bọc xung quanh là núi đá vôi ,cùng với một con đường dẫn xuống bãi biển vô cùng đẹp mắt ,du khách sẽ được tham quan bãi biển mang tên là&nbsp;<strong>&ldquo;Bãi Nhỏ&ldquo;</strong>, nhỏ về diện tích nhưng ko hề nhỏ về vẻ đẹp và vẻ hùng vĩ của bãi biển này, đây là câu nói mà những ai đã đặt chân đến&nbsp;<strong>&ldquo;&nbsp;Bãi Nhỏ&nbsp;&ldquo;</strong>&nbsp;dành tặng cho nó. Tham quan&nbsp;<strong>Cột cờ chủ quyền</strong>&nbsp;và chụp hình lưu niệm.</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8&nbsp;giờ&nbsp;00:</strong>&nbsp;Du khách mua sắm các mặt hàng hải sản và quà lưu niệm</p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9 giờ 00:&nbsp;</strong>&nbsp;Đoàn di chuyển về khách sạn lấy hành.&nbsp;Di chuyển ra Cảng Phú Qúy làm thủ tục khởi hành về Phan Thiết lúc&nbsp;<strong>10h00</strong>.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>12&nbsp;giờ&nbsp;30:</strong>&nbsp;Tàu về đến Cảng Thương Chánh Phan Thiết. Kết thúc chuyến đi&nbsp;<em><strong><a href="https://dulichbienphuquy.vn/hinh-anh-dao-phu-quy-n87.html" title="hình ảnh tour đảo Phú Qúy" type="hình ảnh tour đảo Phú Qúy">tour đảo Phú Qúy(3N2Đ</a></strong></em><a href="https://dulichbienphuquy.vn/hinh-anh-dao-phu-quy-n87.html"><em><strong>)</strong></em></a></p>

<p>&nbsp;*&nbsp;<strong>Phương tiện: Tàu thủy, ca nô, xe máy, Ô tô.</strong></p>

<p><img alt="tour đảo phú quý" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-dao-phu-quy-hien-nay.jpg" style="height:332px; width:500px" /></p>

<p>hình ảnh&nbsp;tour&nbsp;đảo Phú Qúy&nbsp;(Ảnh &ndash; dulichbienphuquy.vn)</p>

<p>&nbsp;</p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp;<u>DỊCH VỤ BAO GỒM:</u></strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&nbsp;Các bữa ăn trong chương trình (03 bữa sáng, 04&nbsp;bữa chính).</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Hướng dẫn viên tại địa phương tiếng Việt.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Phí tham quan các nơi theo chương trình.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Bảo hiểm du lịch theo tiêu chuẩn khách du lịch Việt Nam.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 02 lượt vé tàu cao tốc.&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Xe ôtô, xe máy tham quan tại Đảo.&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Khách sạn&nbsp;đầy đủ tiện nghi.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Nước khoáng 4 chai loại 350ml+ 2 khăn lạnh.</p>

<p>&nbsp; &nbsp; &nbsp;&nbsp;<u><strong>QÙA TẶNG:</strong></u></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 1 nón du lịch</p>

<p><strong>&nbsp; &nbsp; &nbsp;&nbsp;<u>KHÔNG BAO GỒM:</u></strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Phòng đơn. Các chi phí cá nhân khác: điện thoại, giặt ủi, thức ăn, uống ngoài chương trình &hellip;&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Thuế VAT.</p>
', N'NV1       ')
INSERT [dbo].[TourDuLich] ([IdTour], [TenTour], [Hinhanh], [Khachsan], [Dichuyen], [Thoigian], [Khoihanh], [Gia], [Noidung], [IdUser]) VALUES (N'IDT3      ', N'Tour Phan Thiết - Phú Quý(2N1Đ)', N'tour-dao-phu-quy.jpg', N'Hùng Long', N'Tàu Thủy Cao Tốc', N'2 ngày 1 đêm', N'Hằng ngày', 2100000, N'<p><strong>MÔ TẢ DỊCH VỤ</strong></p>

<h2><span style="color:#ff0000"><span style="font-size:18px">Chính sách Tour</span></span></h2>

<p><span style="color:#ff0000"><span style="font-size:18px"><textarea cols="80" rows="20"> THÔNG TIN CẦN BIẾT:

          1/ GIÁ TOUR CHO TRẺ EM:

          - Trẻ em từ 12 tuổi trở lên: 100% giá tour như người lớn.

          - Khách đi tour kèm theo 02 trẻ em dưới 05 tuổi: quý khách mua thêm 50% giá tour để có tiêu chuẩn ăn uống, ghế ngồi trên xe, tham quan cho bé. 
          - Trẻ em dưới 02 tuổi đến 5 tuổi: miễn giá tour (cha mẹ tự lo cho bé).

          - Trẻ em trên 05 dưới 12 tuổi: 50% giá tour, bao gồm các dịch vụ ăn uống, ghế ngồi trên xe nhưng bé ngủ chung với cha mẹ, không có giường riêng.
          2/ ĐIỀU KIỆN HỦY DỊCH VỤ :

          &bull; Tour Du Lịch :

          Sau khi xác nhận và thanh toán (ít nhất 50% tiền cọc giữ chỗ và thanh toán 100% tối thiểu 24 tiếng trước ngày khởi hành), nếu:

          - Sau khi đặt cọc đến 3 ngày trước ngày khởi hành: phí hủy 10% tiền tour 

          - Hủy tour 3-2 ngày trước ngày khởi hành: phí hủy 20% tiền tour 

          - Hủy tour 24 tiếng trước ngày khởi hành: phí hủy 30% tiền tour 

          - Hủy tour ngay trong ngày khởi hành: phí hủy 50% tiền tour. Trường hợp quý khách đến trễ giờ khởi hành được tính là hủy ngay trong ngày. 

          &bull; Hủy vé tàu thủy: áp dụng theo quy định của từng hãng tàu vận chuyển.
          &bull; Trong trường hợp hủy chuyến đi vì lý do khách quan (thiên tai, dịch bệnh&hellip;) hay do tàu thủy sẽ hoàn lại toàn bộ những chi phí chưa được sử dụng cho việc tổ chức dịch vụ và không bồi thường thêm bất kỷ khoản nào khác.

          LƯU Ý:

          &bull; Khi tham gia chương trình tour, quý khách vui lòng mang theo giấy tờ tùy thân (bản chính đối với khách Việt Nam là CMND và Passport đối với Kiều bào &amp; ngoại quốc). Đối với khách Kiều bào &amp; ngoại quốc nhập cảnh bằng visa rời, vui lòng mang theo visa và tờ khai hải quan khi đi du lịch.

          &bull; Trẻ em không có CMND khi đi du lịch, nếu không có cha hoặc mẹ đi cùng phải có giấy ủy quyền của cha mẹ và có xác nhận của công an địa phương để thủ tục hành chính.

          &bull; Quý khách có mặt tại điểm hẹn ít nhất 10 phút trước giờ khởi hành và nên mang theo hành lý gọn nhẹ, không quá cồng kềnh.

          &bull; Một số thứ tự và chi tiết trong chương trình có thể thay đổi để phù hợp với tình hình khách quan (thời tiết, giao thông &hellip;). 

          &bull; Trường hợp ra đến Phú Quý do thời tiết xấu tàu ngưng hoạt động thì quý khách phải chịu mọi chi phí phát sinh trong những ngày ngoại Tour.

          Gía trên áp dụng cho 5 khách trở lên

          Hành trình tổ chức tour làm theo lịch hoạt động thực tế của tàu. Vì phải phụ thuộc vào thủy triều của cảng Thương Chánh Phan thiết.</textarea></span></span></p>

<h1><span style="font-size:22px"><strong>LỊCH TRÌNH TOUR&nbsp;ĐẢO PHÚ QUÝ 2 NGÀY 1 ĐÊM</strong></span></h1>

<h2><span style="font-size:20px"><strong>NGÀY 1: TP.PHAN THIẾT - PHÚ QÚY</strong></span></h2>

<p><strong>&nbsp; &nbsp;<u>Buổi sáng:</u></strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>7 giờ 00:&nbsp;</strong>HDV sẽ đón quý khách tại cảng Thương chánh Phan Thiết và làm thủ tục xuống tàu khởi hành đi&nbsp;Phú Quý bằng tàu cao tốc&nbsp;lúc<strong>&nbsp;8 h&nbsp; 00</strong>&nbsp;sáng.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>10 giờ 30:</strong>&nbsp;Tàu cặp cảng Phú Quý. Đoàn di chuyển về khách sạn nhận phòng.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>11giờ 00:&nbsp;</strong>&nbsp;Đoàn dùng cơm tại&nbsp;<strong>nhà hàng Hải Đảo</strong>&nbsp;nằm cạnh bãi biển đẹp. Về lại khách sạn nghỉ ngơi.</p>

<p>&nbsp;&nbsp;<u><strong>Buổi chiều :</strong></u></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>13 giờ 30:&nbsp;</strong>Đoàn khởi hành tham quan khu điện gió, trên đường đi du khách sẽ được thưởng ngoạn cảnh sống và sinh hoạt của ngư dân<strong>&nbsp;làng chài</strong>. Cùng với sự bào mòn của gió và nước biển đã tạo cho những bãi đá vôi nằm cạnh biển đảo những hang động vô cùng kỳ thú và hấp dẫn, du khách sẽ được lưu lại những khoảnh khắc vô cùng tuyệt vời.</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14&nbsp;giờ&nbsp;30&nbsp;:</strong>&nbsp;du khách sẽ được tận hưởng 1 cảm giác vô cùng thích thú chỉ có tại Phú Quý khi đến với ngôi chùa&nbsp;<strong>&ldquo;Linh Sơn Tự &ldquo;</strong>&nbsp;một ngôi chùa nằm trên ngọn núi &ldquo;<strong>Cao Cát&rdquo;</strong>, lên đỉnh núi Cao Cát tận hưởng làn gió mát rượi từ biển, nhìn tứ phía chỉ có biển khơi, cư dân Phú Quý ai cũng biết câu:&nbsp;<strong>&quot;Tứ phương vô sự lầu&rdquo;.</strong>&nbsp;Ý nói lên đến đỉnh núi, nhìn quanh ra biển, yên bình đến quên hết sự đời</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15&nbsp;giờ&nbsp;30:&nbsp;Đoàn di chuyển xuống</strong>&nbsp;&ldquo;&nbsp;<strong>Gành Hang</strong>&nbsp;&ldquo; phóng tầm nhìn không xa du khách sẽ được nhìn thấy 1 bãi biển được bao bọc xung quanh là núi đá vôi ,cùng với một con đường dẫn xuống bãi biển vô cùng đẹp mắt ,du khách sẽ được tham quan bãi biển mang tên là&nbsp;<strong>&ldquo;Bãi Nhỏ&ldquo;</strong>, nhỏ về diện tích nhưng ko hề nhỏ về vẻ đẹp và vẻ hùng vĩ của bãi biển này, đây là câu nói mà những ai đã đặt chân đến&nbsp;<strong>&ldquo;&nbsp;Bãi Nhỏ&nbsp;&ldquo;</strong>&nbsp;dành tặng cho nó. Tham quan&nbsp;<strong>Cột cờ chủ quyền</strong>&nbsp;và chụp hình lưu niệm.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>16 giờ 30</strong>: du khách sẽ được tiếp tục đến với một bãi biển được coi là đẹp nhất trên đảo Phú Quý, bãi biển được mang tên&nbsp;<strong>&ldquo; Vịnh Triều Dương &ldquo;</strong>&nbsp;với bờ cát trắng mịn trãi dài, nước biển xanh ngắt một màu du khách sẽ được tắm biển tại đây để cùng hòa mình vào làn sóng biển êm dịu, cảm giác như thiên đường này là của ta, từ Vịnh Triều Dương du khách có thể nhìn thấy xa xa là&nbsp;<strong>&ldquo; Hòn Tranh &ldquo;</strong>&nbsp;một trong những hòn đảo nhỏ được nhiều người biết đến nhất.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;17&nbsp;giờ&nbsp;30:</strong>&nbsp;Quay về khách sạn tắm nước ngọt, thư giãn.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>18 giờ 00:&nbsp;</strong>Đoàn dùng cơm tại nhà hàng.Về lại khách sạn nghỉ ngơi.Kết thúc chuyến đi&nbsp;<a href="https://dulichbienphuquy.vn/tour-dao-phu-quy" title="tour đảo Phú Qúy" type="tour đảo Phú Qúy"><em><strong>tour đảo Phú Qúy</strong></em></a>&nbsp;2 ngày 1 đêm</p>

<p><img alt="tour đảo phú quý" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-phan-thiet-dao-phu-quy-2N1%C4%90-.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh tour&nbsp;đảo Phú Qúy 2 ngày 1 đêm&nbsp;</em></p>

<p>&nbsp;</p>

<h2><span style="font-size:20px"><strong>NGÀY 02: TOUR ĐẢO PHÚ QUÝ HÒN ĐẢO NGỌC HOANG SƠ</strong></span></h2>

<p><strong>&nbsp; &nbsp;&nbsp;<u>Buổi sáng:</u></strong></p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 giờ 00:</strong>&nbsp;Quý khách dùng điểm tâm sáng</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 giờ 30:&nbsp;</strong>Tham qua<strong>n bộ xương cá voi t</strong>ại Vạn An Thạnh</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8 giờ 00:&nbsp;</strong>Du khách tham quan các điểm nuôi hải sản và mua sắm các mặt hàng hải sản, quà lưu niệm</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9&nbsp;giờ&nbsp;00:&nbsp;</strong>Tham quan chùa Linh Bửu và chinh phục ngọn&nbsp;<strong>&ldquo;Hải Đăng&rdquo;</strong>&nbsp;nằm trên đỉnh&nbsp;<strong>&ldquo;Núi Cấm&rdquo;</strong>&nbsp;tham quan&nbsp;<strong>Đuốc Bác Hồ</strong>. Sau đó leo lên ngọn Hải đăng cao 108m so với mực nước biển du khách sẽ được nhìn toàn cảnh của ngư dân làng chài cũng như là quan sát toàn bộ huyện đảo Phú Quý.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>9 giờ 30:</strong>&nbsp;Đoàn di chuyển về khách sạn lấy hành lý.&nbsp;Di chuyển ra Cảng Phú Qúy làm thủ tục khởi hành về Phan Thiết lúc&nbsp;<strong>10h00. 12h30</strong>&nbsp;Tàu về đến Cảng Thương Chánh Phan Thiết. Kết thúc chuyến đi ra&nbsp;<strong>đảo Phú Qúy</strong>&nbsp;bằng&nbsp;<a href="https://dulichbienphuquy.vn/" title="tour Phan Thiết-Phú Qúy 2 Ngày 1 đêm" type="tour Phan Thiết-Phú Qúy 2 Ngày 1 đêm"><strong>tour Phan Thiết-Phú Qúy (2N1Đ)</strong></a></p>

<p>*&nbsp;<strong>Phương tiện: Tàu thủy, xe máy, Ô tô.</strong></p>

<p><img alt="tour đảo Phú Qúy 2 ngày 1 đêm" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-dao-phu-quy-2-ngay-1-dem.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh tour phan thiết-Phú Qúy 2 ngày 1 đêm&nbsp;</em></p>

<p>&nbsp;</p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>DỊCH VỤ BAO GỒM</u>:</strong>&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Các bữa ăn trong chương trình (01&nbsp;bữa sáng, 02&nbsp;bữa chính).</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Hướng dẫn viên tại địa phương tiếng Việt.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Phí tham quan các nơi theo chương trình.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Bảo hiểm du lịch theo tiêu chuẩn khách du lịch Việt Nam.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - 02 lượt vé tàu.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Xe ôtô&nbsp;tham quan tại Đảo.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; - Khách sạn&nbsp;đầy đủ tiện nghi.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Nước khoáng 3 chai loại 350ml+ 2 khăn lạnh.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><strong>QÙA TẶNG:</strong></u></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 1 nón du lịch</p>

<p><strong>&nbsp; &nbsp; &nbsp;&nbsp;<u>KHÔNG BAO GỒM&nbsp;:</u></strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Phòng đơn. Các chi phí cá nhân khác: điện thoại, giặt ủi, thức ăn, uống ngoài chương trình &hellip;&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Thuế VAT.</p>

<p>&nbsp;</p>
', N'NV1       ')
INSERT [dbo].[TourDuLich] ([IdTour], [TenTour], [Hinhanh], [Khachsan], [Dichuyen], [Thoigian], [Khoihanh], [Gia], [Noidung], [IdUser]) VALUES (N'IDT4      ', N'Cano Thăm Quan Các Đảo Nhỏ', N'tour-cano-tham-quan-dao-nho-phu-quy.jpg', N'Hải Hà', N'Ca Nô', N'3 giờ', N'Hằng ngày', 200000, N'<p><strong>MÔ TẢ DỊCH VỤ</strong></p>

<h2><span style="color:#ff0000"><span style="font-size:18px">Chính sách Tour</span></span></h2>

<p><strong><span style="color:#ff0000"><span style="font-size:18px"><textarea cols="80" rows="10">Với chương trình Tour tham quan các đảo nhỏ, quý khách sẽ có một ngày thật sản khoái trên biển và ngắm các hòn đảo nhỏ nhô lên giữa lòng đại dương.Qúy khách sẽ nhìn thấy những con chim hải âu bay lượng trên những dãy đá cực kỳ đẹp.

- Đón khách tại cảng Phú Qúy hoặc bến Lạch Dù xã Long Hải :

- Trãi Nghiệm: Thuyền trưởng sẽ đưa đoàn đến tại các hòn như: Hòn Tranh, Hòn đen, Hòn Trứng, Hòn Đỏ ...</textarea></span></span></strong></p>

<h2><span style="font-size:20px"><strong>Cano Tham Quan Các Đảo Nhỏ</strong></span></h2>

<p><img alt="tour cano tham quan đảo Phú Qúy" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-cano-tham-quan-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh&nbsp;cano tham quan đảo nhỏ</em></p>
', N'NV2       ')
INSERT [dbo].[TourDuLich] ([IdTour], [TenTour], [Hinhanh], [Khachsan], [Dichuyen], [Thoigian], [Khoihanh], [Gia], [Noidung], [IdUser]) VALUES (N'IDT5', N'Tour Câu Cá Lặn Ngắm san Hô', N'tour-phu-quy-cau-ca-lan-ngam-san-ho.jpg', N'Bảo Trân', N'Ca Nô', N'4 giờ', N'Hằng ngày', 250000, N'<p><strong>MÔ TẢ DỊCH VỤ</strong></p>

<p><em>Với chương trình Tour&nbsp;<strong>Câu cá - lặn ngắm san hô</strong>, quý khách sẽ có một ngày thật sản khoái trên biển, tận tay mình bắt lên những con cá tươi rói từ đại dương xanh thẩm và ngâm mình trong làng nước biển xanh mát để ngắm nhìn những rặng san hô đầy màu sắc.</em></p>

<p>Đảo Phú Quý là nơi có&nbsp;điểm lặn biển&nbsp;đẹp nhất cả nước so với những nơi&nbsp;đã và đang được đưa vào du lịch. Nơi đây có nhiều điểm lặn,rạn san hô nhiều màu sắc và có hầu hết các loại&nbsp;san hộ trên thế giới.</p>

<p>- Đón khách tại&nbsp;<strong>cảng Phú Qúy</strong>&nbsp;hoặc bến Lạch Dù xã Long Hải :</p>

<p>&nbsp; &nbsp; &nbsp;+ Địa điểm: Tùy vào thời điểm trong năm và do ảnh hưởng của gió, từ tháng 1 đến tháng 6 hàng năm chúng ta sẽ đón khách tại&nbsp;<strong>Cảng Phú Qúy</strong>&nbsp;ngắm san hô và câu cá tại khu vực Hòn Tranh. Và từ tháng 7 đến tháng 12 hàng năm chúng ta sẽ đón khách tại Bến Lạch Dù&nbsp;<strong>xã Long Hải</strong>.</p>

<p>-&nbsp;<strong>Trãi Nghiệm</strong>: Thuyền trưởng sẽ đưa đoàn đến những địa điểm có nhiều cá và hợp pháp để cả đoàn câu cá rồi neo lại tại một trong những hòn đảo nhỏ phục vụ nhu cầu lặn ngắm san hô như: Hòn Tranh, Hòn Trứng, Hòn Đỏ ...</p>

<p><img alt="tour lặn ngắm san hô" src="https://dulichbienphuquy.vn/uploads/hinh-anh-tour-dao-phu-quy/tour-cau-ca-ngam-san-ho-dao-phu-quy.jpg" style="height:332px; width:500px" /></p>

<p><em>hình ảnh tour câu cá - lặn ngắm san hô&nbsp;</em></p>
', N'NV2       ')
INSERT [dbo].[Users] ([IdUser], [Password], [Hoten], [Diachi], [Ngaysinh], [Sodienthoai], [Gioitinh], [Email]) VALUES (N'NV1       ', N'123456', N'Trương Nhật Dật', N'C9/06/Đường 455/Phường Tăng Nhơn Phú A/Quận 9', CAST(0x5D200B00 AS Date), N'0357137815', 1, N'truognhatdat3.ndt@gmail.com                                                                                                                                                                             ')
INSERT [dbo].[Users] ([IdUser], [Password], [Hoten], [Diachi], [Ngaysinh], [Sodienthoai], [Gioitinh], [Email]) VALUES (N'NV2       ', N'678910', N'Nguyễn Kim Hương', N'15/05/Trần Hưng Đạo/Quận 5', CAST(0x8A1D0B00 AS Date), N'0362175882', 0, N'nguyekimhuong@gmail.com                                                                                                                                                                                 ')
ALTER TABLE [dbo].[CTDichVu]  WITH CHECK ADD  CONSTRAINT [FK_CTDichVu_DichVuDuLich] FOREIGN KEY([IdDV])
REFERENCES [dbo].[DichVuDuLich] ([IdDV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDichVu] CHECK CONSTRAINT [FK_CTDichVu_DichVuDuLich]
GO
ALTER TABLE [dbo].[CTDichVu]  WITH CHECK ADD  CONSTRAINT [FK_CTDichVu_Khachhang] FOREIGN KEY([IdKH])
REFERENCES [dbo].[Khachhang] ([IdKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDichVu] CHECK CONSTRAINT [FK_CTDichVu_Khachhang]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_Khachhang1] FOREIGN KEY([IdKH])
REFERENCES [dbo].[Khachhang] ([IdKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_Khachhang1]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_TourDuLich1] FOREIGN KEY([IdTour])
REFERENCES [dbo].[TourDuLich] ([IdTour])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_TourDuLich1]
GO
ALTER TABLE [dbo].[DichVuDuLich]  WITH CHECK ADD  CONSTRAINT [FK_DichVuDuLich_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[DichVuDuLich] CHECK CONSTRAINT [FK_DichVuDuLich_Users]
GO
ALTER TABLE [dbo].[ThongTinDuLich]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinDuLich_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[ThongTinDuLich] CHECK CONSTRAINT [FK_ThongTinDuLich_Users]
GO
ALTER TABLE [dbo].[TinDuLich]  WITH CHECK ADD  CONSTRAINT [FK_TinDuLich_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[TinDuLich] CHECK CONSTRAINT [FK_TinDuLich_Users]
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD  CONSTRAINT [FK_TourDuLich_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[TourDuLich] CHECK CONSTRAINT [FK_TourDuLich_Users]
GO
