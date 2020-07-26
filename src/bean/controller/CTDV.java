package bean.controller;

import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

public class CTDV {

	private String IdDV;
	private String Tendv;
	private Integer IdKH;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày nhận")
	private Date Ngaynhan;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày trả")
	private Date Ngaytra;
	@DecimalMin(value="0",message="Số người không hợp lệ")
	@NotNull(message="Vui lòng chọn số lượng")
	private int Soluong;
	private String Loai;
	private String hinhanh;
	private boolean Thanhtoan;
	public String getIdDV() {
		return IdDV;
	}
	public void setIdDV(String idDV) {
		IdDV = idDV;
	}
	public Integer getIdKH() {
		return IdKH;
	}
	public void setIdKH(Integer idKH) {
		IdKH = idKH;
	}
	public Date getNgaynhan() {
		return Ngaynhan;
	}
	public void setNgaynhan(Date ngaynhan) {
		Ngaynhan = ngaynhan;
	}
	public Date getNgaytra() {
		return Ngaytra;
	}
	public void setNgaytra(Date ngaytra) {
		Ngaytra = ngaytra;
	}
	
	public int getSoluong() {
		return Soluong;
	}
	public void setSoluong(int soluong) {
		this.Soluong = soluong;
	}
	public String getLoai() {
		return Loai;
	}
	public void setLoai(String loai) {
		Loai = loai;
	}
	public boolean isThanhtoan() {
		return Thanhtoan;
	}
	public void setThanhtoan(boolean thanhtoan) {
		Thanhtoan = thanhtoan;
	}
	public String getTendv() {
		return Tendv;
	}
	public void setTendv(String tendv) {
		Tendv = tendv;
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	
}
