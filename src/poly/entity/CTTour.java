package poly.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="CTTour")
public class CTTour {
	@Id
	@GeneratedValue
	private Integer IdHDT;
	@ManyToOne
	@JoinColumn(name="IdTour")
	private TourDuLich IdTour;
	@ManyToOne
	@JoinColumn(name="IdKH")
	private KhachHang IdKH;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày đi")
	private Date Ngaydi;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày về")
	private Date Ngayve;
	@DecimalMin(value="0",message="Số người không hợp lệ")
	@NotNull(message="Vui lòng chọn số lượng")
	private Integer Soluongnguoilon;
	@DecimalMin(value="0",message="Số người không hợp lệ")
	@NotNull(message="Vui lòng chọn số lượng")
	private Integer Soluongtreem;
	private boolean Thanhtoan;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date Ngaydat;
	private double Tongtien;
	public Integer getIdHDT() {
		return IdHDT;
	}
	public void setIdHDT(Integer idHDT) {
		IdHDT = idHDT;
	}
	public TourDuLich getIdTour() {
		return IdTour;
	}
	public void setIdTour(TourDuLich idTour) {
		IdTour = idTour;
	}
	public KhachHang getIdKH() {
		return IdKH;
	}
	public void setIdKH(KhachHang idKH) {
		IdKH = idKH;
	}
	public Date getNgaydi() {
		return Ngaydi;
	}
	public void setNgaydi(Date ngaydi) {
		Ngaydi = ngaydi;
	}
	public Date getNgayve() {
		return Ngayve;
	}
	public void setNgayve(Date ngayve) {
		Ngayve = ngayve;
	}
	public Integer getSoluongnguoilon() {
		return Soluongnguoilon;
	}
	public void setSoluongnguoilon(Integer soluongnguoilon) {
		Soluongnguoilon = soluongnguoilon;
	}
	public Integer getSoluongtreem() {
		return Soluongtreem;
	}
	public void setSoluongtreem(Integer soluongtreem) {
		Soluongtreem = soluongtreem;
	}
	public boolean isThanhtoan() {
		return Thanhtoan;
	}
	public void setThanhtoan(boolean thanhtoan) {
		Thanhtoan = thanhtoan;
	}
	public Date getNgaydat() {
		return Ngaydat;
	}
	public void setNgaydat(Date ngaydat) {
		Ngaydat = ngaydat;
	}
	public double getTongtien() {
		return Tongtien;
	}
	public void setTongtien(double tongtien) {
		Tongtien = tongtien;
	}
	
}
