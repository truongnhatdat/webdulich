package poly.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Users")
public class User {
	@Id
	private String IdUser;
	private String Password;
	private String Hoten;
	private String Diachi;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date Ngaysinh;
	private String Sodienthoai;
	private boolean Gioitinh;
	private String Email;
	public String getIdUser() {
		return IdUser;
	}
	public void setIdUser(String idUser) {
		IdUser = idUser;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getHoten() {
		return Hoten;
	}
	public void setHoten(String hoten) {
		Hoten = hoten;
	}
	public String getDiachi() {
		return Diachi;
	}
	public void setDiachi(String diachi) {
		Diachi = diachi;
	}
	public Date getNgaysinh() {
		return Ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		Ngaysinh = ngaysinh;
	}
	public String getSodienthoai() {
		return Sodienthoai;
	}
	public void setSodienthoai(String sodienthoai) {
		Sodienthoai = sodienthoai;
	}
	public boolean isGioitinh() {
		return Gioitinh;
	}
	public void setGioitinh(boolean gioitinh) {
		Gioitinh = gioitinh;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
}
