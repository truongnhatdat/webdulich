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
@Table(name="CTDichVu")
public class CTDichVu {
	@Id
	@GeneratedValue
	private Integer ID;
	@ManyToOne
	@JoinColumn(name="IdDV")
	private DichVuDuLich IdDV;
	@ManyToOne
	@JoinColumn(name="IdKH")
	private KhachHang IdKH;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày nhận")
	private Date Ngaynhan;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Vui lòng chọn ngày trả")
	private Date Ngaytra;
	@DecimalMin(value="0",message="Số lượng không hợp lệ")
	@NotNull(message="Vui lòng chọn số lượng")
	private int soluong;
	private String Loai;
	private boolean Thanhtoan;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date Ngaydat;
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public DichVuDuLich getIdDV() {
		return IdDV;
	}
	public void setIdDV(DichVuDuLich idDV) {
		IdDV = idDV;
	}
	public KhachHang getIdKH() {
		return IdKH;
	}
	public void setIdKH(KhachHang idKH) {
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
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
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
	public Date getNgaydat() {
		return Ngaydat;
	}
	public void setNgaydat(Date ngaydat) {
		Ngaydat = ngaydat;
	}
	
}
