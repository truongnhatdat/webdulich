package poly.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="TourDuLich")
public class TourDuLich {
	@Id
	@NotBlank(message="Vui lòng nhập vào ID")
	private String IdTour;
	@NotBlank(message="Vui lòng nhập vào tên tour")
	private String TenTour;
	private String Hinhanh;
	@NotBlank(message="Vui lòng nhập vào khách sạn")
	private String Khachsan;
	@NotBlank(message="Vui lòng nhập vào di chuyển")
	private String Dichuyen;
	@NotBlank(message="Vui lòng nhập vào thời gian")
	private String Thoigian;
	@NotBlank(message="Vui lòng nhập vào khởi hành ")
	private String Khoihanh;
	@DecimalMin(value="0",message="Giá không hợp lệ")
	@NotNull(message="Vui lòng nhập vào giá")
	private double Gia;
	@NotBlank(message="Vui lòng nhập vào nội dung")
	private String Noidung;
	@ManyToOne
	@JoinColumn(name="IdUser")
	private User IdUser;
	public String getIdTour() {
		return IdTour;
	}
	public void setIdTour(String idTour) {
		IdTour = idTour;
	}
	public String getTenTour() {
		return TenTour;
	}
	public void setTenTour(String tenTour) {
		TenTour = tenTour;
	}
	public String getHinhanh() {
		return Hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		Hinhanh = hinhanh;
	}
	public String getKhachsan() {
		return Khachsan;
	}
	public void setKhachsan(String khachsan) {
		Khachsan = khachsan;
	}
	public String getDichuyen() {
		return Dichuyen;
	}
	public void setDichuyen(String dichuyen) {
		Dichuyen = dichuyen;
	}
	public String getThoigian() {
		return Thoigian;
	}
	public void setThoigian(String thoigian) {
		Thoigian = thoigian;
	}
	public String getKhoihanh() {
		return Khoihanh;
	}
	public void setKhoihanh(String khoihanh) {
		Khoihanh = khoihanh;
	}
	public double getGia() {
		return Gia;
	}
	public void setGia(double gia) {
		Gia = gia;
	}
	public String getNoidung() {
		return Noidung;
	}
	public void setNoidung(String noidung) {
		Noidung = noidung;
	}
	public User getIdUser() {
		return IdUser;
	}
	public void setIdUser(User idUser) {
		IdUser = idUser;
	}
	
}
