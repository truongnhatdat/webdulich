package bean.controller;

import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

public class CTHoaDonTour {
	private String idtour;
	private String tentour;
	private String hinhanh;
	private Integer IdKH;
	private double dongia;
	@DecimalMin(value="0",message="Số người không hợp lệ")
	@NotNull(message="Vui lòng chọn số người lớn")
	private int Songuoilon;
	@DecimalMin(value="0",message="Số người không hợp lệ")
	@NotNull(message="Vui lòng chọn số trẻ em")
	private int Sotreem;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày đi")
	private Date Ngaydi;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày về")
	private Date Ngayve;
	private double thanhtien;
	public String getIdtour() {
		return idtour;
	}
	public void setIdtour(String idtour) {
		this.idtour = idtour;
	}
	public String getTentour() {
		return tentour;
	}
	public void setTentour(String tentour) {
		this.tentour = tentour;
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	public Integer getIdKH() {
		return IdKH;
	}
	public void setIdKH(Integer idKH) {
		IdKH = idKH;
	}
	public double getDongia() {
		return dongia;
	}
	public void setDongia(double dongia) {
		this.dongia = dongia;
	}

	public int getSonguoilon() {
		return Songuoilon;
	}
	public void setSonguoilon(int songuoilon) {
		Songuoilon = songuoilon;
	}
	public int getSotreem() {
		return Sotreem;
	}
	public void setSotreem(int sotreem) {
		Sotreem = sotreem;
	}
	public Date getNgaydi() {
		return Ngaydi;
	}
	public void setNgaydi(Date ngaydi) {
		this.Ngaydi = ngaydi;
	}
	public Date getNgayve() {
		return Ngayve;
	}
	public void setNgayve(Date ngayve) {
		this.Ngayve = ngayve;
	}
	public double getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(double thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	
}
