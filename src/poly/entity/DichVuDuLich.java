package poly.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="DichVuDuLich")
public class DichVuDuLich {
	@Id
	@NotBlank(message="Vui lòng nhập vào ID")
	private String IdDV;
	@NotBlank(message="Vui lòng nhập vào tên dịch vụ")
	private String TenDV;
	private String Hinhanh;
	@NotBlank(message="Vui lòng nhập vào tên nội dung")
	private String Noidung;
	@ManyToOne
	@JoinColumn(name="IdUser")
	private User IdUser;
	public String getIdDV() {
		return IdDV;
	}
	public void setIdDV(String idDV) {
		IdDV = idDV;
	}
	public String getTenDV() {
		return TenDV;
	}
	public void setTenDV(String tenDV) {
		TenDV = tenDV;
	}
	public String getHinhanh() {
		return Hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		Hinhanh = hinhanh;
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
