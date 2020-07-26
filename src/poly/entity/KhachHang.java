package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.validation.constraints.NotBlank;
import org.hibernate.validator.constraints.CreditCardNumber;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.Email;

@Entity
@Table(name="KhachHang")
public class KhachHang {
	@Id
	@GeneratedValue
	private Integer IdKH;
	@NotBlank(message="Không để trống họ tên")
	private String TenKH;
	@NotBlank(message="Không được để trống sdt")
	private String Sodienthoai;
	
	private String Diachi;
	@Email(message="Email định dạng chưa đúng")
	@NotBlank(message="Không được để trống email")
	private String Email;
	private String Noidung;
	public Integer getIdKH() {
		return IdKH;
	}
	public void setIdKH(Integer idKH) {
		IdKH = idKH;
	}
	public String getTenKH() {
		return TenKH;
	}
	public void setTenKH(String tenKH) {
		TenKH = tenKH;
	}
	
	public String getSodienthoai() {
		return Sodienthoai;
	}
	public void setSodienthoai(String sodienthoai) {
		Sodienthoai = sodienthoai;
	}
	public String getDiachi() {
		return Diachi;
	}
	public void setDiachi(String diachi) {
		Diachi = diachi;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getNoidung() {
		return Noidung;
	}
	public void setNoidung(String noidung) {
		Noidung = noidung;
	}
	
}
