package poly.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="CTTour")
public class HoaDonTour {
	@Id
	@GeneratedValue
	private Integer IdHDT;
	private String idTour;
	private Integer IdKH;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date Ngaydi;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date Ngayve;
	private Integer Soluongnguoilon;
	private Integer Soluongtreem;
	private boolean Thanhtoan;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date Ngaydat;
	private double Tongtien;
	public Integer getIdHDT() {
		return IdHDT;
	}
	public void setIdHDT(Integer idHDT) {
		IdHDT = idHDT;
	}
	public String getIdTour() {
		return idTour;
	}
	public void setIdTour(String idTour) {
		this.idTour = idTour;
	}
	public Integer getIdKH() {
		return IdKH;
	}
	public void setIdKH(Integer idKH) {
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
