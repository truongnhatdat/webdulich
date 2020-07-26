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
import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="ThongTinDuLich")
public class ThongTinDuLich {
	@Id
	@GeneratedValue
	private Integer IdTTin;
	@NotBlank(message="Vui lòng nhập vào tiêu đề")
	private String Tieude;
	private String Hinhanh;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date Ngaydang;
	@NotBlank(message="Vui lòng nhập vào nội dung")
	private String Noidung;
	@ManyToOne
	@JoinColumn(name="IdUser")
	private User IdUser;
	public Integer getIdTTin() {
		return IdTTin;
	}
	public void setIdTTin(Integer idTTin) {
		IdTTin = idTTin;
	}
	public String getTieude() {
		return Tieude;
	}
	public void setTieude(String tieude) {
		Tieude = tieude;
	}
	public String getHinhanh() {
		return Hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		Hinhanh = hinhanh;
	}
	public Date getNgaydang() {
		return Ngaydang;
	}
	public void setNgaydang(Date ngaydang) {
		Ngaydang = ngaydang;
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
