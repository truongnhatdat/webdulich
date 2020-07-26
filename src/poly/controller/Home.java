package poly.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bean.controller.CTDV;
import bean.controller.CTHoaDonTour;
import poly.entity.CTTour;
import poly.entity.DichVuDuLich;
import poly.entity.HDDV;
import poly.entity.HoaDonTour;
import poly.entity.KhachHang;
import poly.entity.ThongTinDuLich;
import poly.entity.TinDuLich;
import poly.entity.TourDuLich;
import poly.entity.User;
@Transactional
@Controller
@RequestMapping("/dulichbien/")
public class Home {
	List<CTHoaDonTour> dstour = new ArrayList<>();
	double tongsotien = 0;
	List<CTDV> dsdv = new ArrayList<>();
	int a = 0;
	int b = 0;
	@Autowired
	SessionFactory factory;
	@RequestMapping("trangchu")
	public String trangchu(ModelMap model) {
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		
		// lay du lieu tin du lich
		Session session3 = factory.getCurrentSession();
		String hql3 = "FROM TinDuLich";
		Query query3 = session3.createQuery(hql3);
		List<TinDuLich> list3 = query3.list();
		model.addAttribute("tdl",list3);
		
		// lay du lieu tu thong tin du lich
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl",list4);
		
		/// lay du lieu user
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM User";
		Query query5 = session5.createQuery(hql5);
		List<User> list5 = query5.list();
		model.addAttribute("users",list5);
		
		return "dulichbien/trangchu";
	}
	@RequestMapping("giohang")
	public String giohang(ModelMap model) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		model.addAttribute("thanhtien", tongsotien);
		model.addAttribute("cthd", dstour);
		model.addAttribute("dsdv", dsdv);
		return "dulichbien/giohang";
	}
	@RequestMapping("gioithieu")
	public String gioithieu(ModelMap model) {
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
						
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
				
		model.addAttribute("tb", "Giới thiệu");
		return "dulichbien/gioithieu";
	}
	@RequestMapping("tourphuquy")
	public String tour(ModelMap model) {
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		
		model.addAttribute("tb", "Tour Du Lịch");
		return "dulichbien/tourphuquy";
	}
	@RequestMapping("dichvu")
	public String dichvu(ModelMap model) {
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		
		model.addAttribute("tb", "Dịch Vụ");
		return "dulichbien/dichvu";
	}
	@RequestMapping("thongtin")
	public String thongtin(ModelMap model) {
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		
		// lay du lieu tu thong tin du lich
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl",list4);
		
		model.addAttribute("tb", "Thông Tin Du Lịch");
		return "dulichbien/thongtin";
	}
	@RequestMapping("lienhe")
	public String lienhe(ModelMap model) {
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
				
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		
		model.addAttribute("tb", "Liên hệ");
		model.addAttribute("khlienhe", new KhachHang());
		return "dulichbien/lienhe";
	}
	
	@RequestMapping(value="quantri", method = RequestMethod.POST)
	public String quantri(ModelMap model, HttpServletRequest request) {
		// lay du lieu user
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM User";
		Query query5 = session5.createQuery(hql5);
		List<User> list5 = query5.list();
		model.addAttribute("users",list5);
		String tk = request.getParameter("account");
		String pw = request.getParameter("password");
		for(int i=0;i<list5.size();i++)
		{
			if((tk.toString().compareTo(list5.get(i).getIdUser().trim())==0 && (pw.toString().compareTo(list5.get(i).getPassword().trim())==0)))
			{
				model.addAttribute("tb1", "Chào Mừng " +list5.get(i).getHoten().trim() + " Đến Với Trang Quản Trị");
				return "dulichbien/quantri";
			}
		}
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
				
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
				
		// lay du lieu tin du lich
		Session session3 = factory.getCurrentSession();
		String hql3 = "FROM TinDuLich";
		Query query3 = session3.createQuery(hql3);
		List<TinDuLich> list3 = query3.list();
		model.addAttribute("tdl",list3);
				
		// lay du lieu tu thong tin du lich
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl",list4);
		
		model.addAttribute("tb1", "Bạn nhập sai thông tin");
		return "dulichbien/trangchu";
	}
	@RequestMapping(value="/{tieude}", params = "loadtin", method = RequestMethod.GET)
	public String theotin(ModelMap model,@PathVariable("tieude") String title) {
		// lay du lieu tour
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		// lay du lieu dich vu
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		// lay du lieu tin du lich
		Session session3 = factory.getCurrentSession();
		String hql3 = "FROM TinDuLich";
		Query query3 = session3.createQuery(hql3);
		List<TinDuLich> list3 = query3.list();
		model.addAttribute("tdl",list3);
		TinDuLich tindulich = new TinDuLich();
		for(int i=0; i<list3.size();i++) {
			if(list3.get(i).getTieude().compareTo(title)==0) {
				tindulich.setTieude(list3.get(i).getTieude());
				tindulich.setNgaydang(list3.get(i).getNgaydang());
				tindulich.setNoidung(list3.get(i).getNoidung());
			}
		}
		model.addAttribute("tin", tindulich);
		return "dulichbien/tindulich";
	}
	// trang thong tin chi tiet tour
	@RequestMapping(value="/{tenTour}", params = "load", method = RequestMethod.GET)
	public String thongtintour(ModelMap model, @PathVariable("tenTour") String tenTour) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		// du lieu dich vu
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		TourDuLich tour = new TourDuLich();
		for(int i=0;i<list1.size();i++) {
			if(list1.get(i).getTenTour().compareTo(tenTour)==0) {
				tour.setTenTour(list1.get(i).getTenTour());
				tour.setGia(list1.get(i).getGia());
				tour.setThoigian(list1.get(i).getThoigian());
				tour.setNoidung(list1.get(i).getNoidung());
				tour.setDichuyen(list1.get(i).getDichuyen());
				tour.setKhoihanh(list1.get(i).getKhoihanh());
			}
		}
		CTHoaDonTour cthdt = new CTHoaDonTour();
		model.addAttribute("cthd",cthdt);
		model.addAttribute("tour", tour);
		return"dulichbien/thongtintour";
	}
	@RequestMapping(value="/{tenDV}", params = "Loaddv", method = RequestMethod.GET)
	public String thongtindv(ModelMap model, @PathVariable("tenDV") String tenDV) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		// du lieu dich vu
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdl",list2);
		DichVuDuLich dv = new DichVuDuLich();
		CTDV ctdv = new CTDV();
		model.addAttribute("ctdv", ctdv);
		for(int i=0;i<list2.size();i++) {
			if(list2.get(i).getTenDV().compareTo(tenDV)==0) {
				dv.setIdDV(list2.get(i).getIdDV());
				dv.setTenDV(list2.get(i).getTenDV());
				dv.setHinhanh(list2.get(i).getHinhanh());
				dv.setNoidung(list2.get(i).getNoidung());
				dv.setIdUser(list2.get(i).getIdUser());
			}
		}
		
		if(list2.get(0).getTenDV().compareTo(tenDV)==0) {
			model.addAttribute("dv", dv);
			return "dulichbien/datnhahang";
		}
		else if(list2.get(1).getTenDV().compareTo(tenDV)==0) {
			model.addAttribute("dv", dv);
			return "dulichbien/datphong";
		}
		else if(list2.get(2).getTenDV().compareTo(tenDV)==0) {
			
			model.addAttribute("dv", dv);
			return "dulichbien/thuexemay";
		}
		else if(list2.get(3).getTenDV().compareTo(tenDV)==0) {
		
			model.addAttribute("dv", dv);
			return "dulichbien/thuexedulich";
		}
		else if(list2.get(4).getTenDV().compareTo(tenDV)==0) {
			
			model.addAttribute("dv", dv);
			return "dulichbien/datvetau";
		}
		return "dulichbien/dichvu";
	}
	@RequestMapping(value="/{tieude}", params = "loadttdulich")
	public String loadttdulich(ModelMap model, @PathVariable("tieude") String tieude) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl", list4);
		ThongTinDuLich ttdlich = new ThongTinDuLich();
		for(int i=0;i<list4.size();i++) {
			if(list4.get(i).getTieude().compareTo(tieude)==0) {
				ttdlich.setIdTTin(list4.get(i).getIdTTin());
				ttdlich.setTieude(list4.get(i).getTieude());
				ttdlich.setHinhanh(list4.get(i).getHinhanh());
				ttdlich.setNgaydang(list4.get(i).getNgaydang());
				ttdlich.setNoidung(list4.get(i).getNoidung());
				ttdlich.setIdUser(list4.get(i).getIdUser());
			}
		}
		model.addAttribute("ttdlich", ttdlich);
		return "dulichbien/chitietthongtin";
	}
	// do du lieu ra gio hang cho don tour
	@RequestMapping(value="giohang1", method = RequestMethod.POST)
	public String giohang(@Validated @ModelAttribute("cthd") CTHoaDonTour ctiet,BindingResult errors,HttpServletRequest re,ModelMap model){
		tongsotien = 0;
		String ten = re.getParameter("tenTour");
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		// du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		model.addAttribute("tdlich",list1);
		TourDuLich tour = new TourDuLich();
		for(int i=0;i<list1.size();i++) {
			if(list1.get(i).getTenTour().compareTo(ten)==0) {
				tour.setTenTour(list1.get(i).getTenTour());
				tour.setGia(list1.get(i).getGia());
				tour.setThoigian(list1.get(i).getThoigian());
				tour.setNoidung(list1.get(i).getNoidung());
				tour.setDichuyen(list1.get(i).getDichuyen());
				tour.setKhoihanh(list1.get(i).getKhoihanh());
			}
		}
		model.addAttribute("tour", tour);
		if(errors.hasErrors()) {
			return "dulichbien/thongtintour";
		}
		else {
			CTHoaDonTour cthd = new CTHoaDonTour();
			for(int i=0;i<list1.size();i++) {
				if(list1.get(i).getTenTour().compareTo(ten)==0) {
					cthd.setIdtour(list1.get(i).getIdTour());
					cthd.setTentour(ten);
					cthd.setHinhanh(list1.get(i).getHinhanh());
					cthd.setSonguoilon(ctiet.getSonguoilon());
					cthd.setSotreem(ctiet.getSotreem());
					cthd.setNgaydi(ctiet.getNgaydi());
					cthd.setNgayve(ctiet.getNgayve());
					cthd.setDongia(list1.get(i).getGia());
					if(cthd.getSonguoilon()==0) {
						double tong = ((cthd.getSotreem()*cthd.getDongia())*0.5);
						cthd.setThanhtien(tong);
					}
					else if(cthd.getSotreem()==0) {
						double tong = ((cthd.getSonguoilon()*cthd.getDongia()));
						cthd.setThanhtien(tong);
					}
					else {
						double tong = ((cthd.getSonguoilon()*cthd.getDongia()) + (cthd.getSotreem()*cthd.getDongia())*0.5);
						cthd.setThanhtien(tong);
					}
					dstour.add(cthd);
				}
			}
			for(int i=0;i<dstour.size();i++) {
				tongsotien = tongsotien + dstour.get(i).getThanhtien();
			}
		}
		model.addAttribute("dsdv", dsdv);
		model.addAttribute("thanhtien", tongsotien);
		model.addAttribute("cthd", dstour);
		return "dulichbien/giohang";
	}
	// do du lieu ra gio hang cho don dich vu
	@RequestMapping(value="giohang", method = RequestMethod.POST)
	public String giohangdv(@Validated @ModelAttribute("ctdv") CTDV dvu,BindingResult errors,HttpServletRequest re,ModelMap model){
		String ten = re.getParameter("tendv");
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		// du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		model.addAttribute("dvdl", list2);
		model.addAttribute("tdlich",list1);
		DichVuDuLich dv1 = new DichVuDuLich();
		for(int i=0;i<list2.size();i++) {
			if(list2.get(i).getTenDV().compareTo(ten)==0) {
				dv1.setIdDV(list2.get(i).getIdDV());
				dv1.setTenDV(list2.get(i).getTenDV());
				dv1.setHinhanh(list2.get(i).getHinhanh());
				dv1.setNoidung(list2.get(i).getNoidung());
				dv1.setIdUser(list2.get(i).getIdUser());
			}
		}
		model.addAttribute("dv", dv1);
		if(errors.hasErrors()) {
				if(list2.get(0).getTenDV().compareTo(ten.trim())==0) {
					return "dulichbien/datnhahang";
				}
				else if(list2.get(1).getTenDV().compareTo(ten.trim())==0) {
					return "dulichbien/datphong";
				}
				else if(list2.get(2).getTenDV().compareTo(ten.trim())==0) {
					return "dulichbien/thuexemay";
				}
				else if(list2.get(3).getTenDV().compareTo(ten.toString())==0) {
					return "dulichbien/thuexedulich";
				}
				else {
					return "dulichbien/datvetau";
				}
		}
		else {
			CTDV dv = new CTDV();
			for(int i=0;i<list2.size();i++) {
				if(list2.get(i).getTenDV().compareTo(ten)==0) {
					dv.setIdDV(list2.get(i).getIdDV());
					dv.setTendv(ten);
					dv.setLoai(dvu.getLoai());
					dv.setNgaynhan(dvu.getNgaynhan());
					dv.setNgaytra(dvu.getNgaytra());
					dv.setSoluong(dvu.getSoluong());
					dv.setHinhanh(list2.get(i).getHinhanh());
					dsdv.add(dv);
				}
			}
			model.addAttribute("cthd", dstour);
			model.addAttribute("dsdv", dsdv);
		}
		return "dulichbien/giohang";
	}
	
	@RequestMapping(value="{tentour}", params = "xoatour", method = RequestMethod.GET)
	public String xoatour(ModelMap model, @PathVariable("tentour") String ten) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		// du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		model.addAttribute("tdlich",list1);
		for(int i=0;i<dstour.size();i++) {
			if(dstour.get(i).getTentour().toString().compareTo(ten)==0) {
				tongsotien = tongsotien - dstour.get(i).getThanhtien();
				dstour.remove(i);
			}
		}
		model.addAttribute("thanhtien", tongsotien);
		model.addAttribute("cthd", dstour);
		model.addAttribute("dsdv", dsdv);
		return "dulichbien/giohang";
	}
	@RequestMapping(value="{tendv}", params = "xoadv", method = RequestMethod.GET)
	public String xoadv(ModelMap model,@PathVariable("tendv") String ten) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		// du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		model.addAttribute("tdlich",list1);
		for(int i=0;i<dsdv.size();i++) {
			if(dsdv.get(i).getTendv().compareTo(ten)==0) {
				dsdv.remove(i);
			}
		}
		model.addAttribute("cthd", dstour);
		model.addAttribute("dsdv", dsdv);
		return "dulichbien/giohang";
	}
	@RequestMapping("thanhtoan")
	public String thanhtoan(ModelMap model) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		// du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		model.addAttribute("tdlich",list1);
		KhachHang kh = new  KhachHang();
		int soluong1 = dstour.size();
		int soluong2 = dsdv.size();
		int soluong = soluong1 + soluong2;
		model.addAttribute("soluong", soluong);
		model.addAttribute("cthd", dstour);
		model.addAttribute("dsdv", dsdv);
		model.addAttribute("thanhtien", tongsotien);
		model.addAttribute("khachhang", kh);
		return "dulichbien/thanhtoan";
	}
	@RequestMapping(value="xacnhan", method = RequestMethod.POST)
	public String xacnhantt(@Validated @ModelAttribute("khachhang") KhachHang kh,BindingResult errors,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("thongbao", "Vui lòng sửa các lỗi sau");
			model.addAttribute("dsdv", dsdv);
			model.addAttribute("cthd", dstour);
			return "dulichbien/thanhtoan";
		}
		else {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(kh);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Thêm mới thất bại");
			}finally {
				session.close();
			}
			for(int i=a;i<dstour.size();i++) {
				Session session1 = factory.openSession();
				Transaction t1 = session1.beginTransaction();
				HoaDonTour hd = new HoaDonTour();
			try {
				
					hd.setIdTour(dstour.get(i).getIdtour());
					hd.setIdKH(kh.getIdKH());
					hd.setNgaydi(dstour.get(i).getNgaydi());
					hd.setNgayve(dstour.get(i).getNgayve());
					hd.setSoluongnguoilon(dstour.get(i).getSonguoilon());
					hd.setSoluongtreem(dstour.get(i).getSotreem());
					hd.setNgaydat(new Date());
					hd.setTongtien(dstour.get(i).getThanhtien());
					session1.save(hd);
					t1.commit();
					model.addAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				t1.rollback();
				model.addAttribute("message","Thêm mới thất bại");
			}finally {
				session1.close();
			}
		}
			for(int i=b;i<dsdv.size();i++) {
				Session se = factory.openSession();
				Transaction t2 = se.beginTransaction();
				HDDV hddv = new HDDV();
				try {
					hddv.setIdDV(dsdv.get(i).getIdDV());
					hddv.setIdKH(kh.getIdKH());
					hddv.setLoai(dsdv.get(i).getLoai());
					hddv.setNgaydat(new Date());
					hddv.setNgaynhan(dsdv.get(i).getNgaynhan());
					hddv.setNgaytra(dsdv.get(i).getNgaytra());
					hddv.setSoluong(dsdv.get(i).getSoluong());
					hddv.setThanhtoan(dsdv.get(i).isThanhtoan());
					se.save(hddv);
					t2.commit();
					model.addAttribute("message", "Thêm mới thành công");
				} catch (Exception e) {
					t2.rollback();
					model.addAttribute("message", "Thêm mới thất bại");
				}finally {
					se.close();
				}
			}
			a = dstour.size();
			b = dsdv.size();
			model.addAttribute("dsdv", dsdv);
			model.addAttribute("cthd", dstour);
		}
		
		return "dulichbien/thanhtoan";
	}
	@RequestMapping(value="khachhanglienhe",method = RequestMethod.POST)
	public String lienhe(@Validated @ModelAttribute("khlienhe") KhachHang kh,BindingResult errors,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau");
			return "dulichbien/lienhe";
		}
		else {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(kh);
				t.commit();
				model.addAttribute("message", "Thông tin được ghi nhận");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","TThông tin chưa được ghi nhận");
			}finally {
				session.close();
			}
			
		}
		return "dulichbien/lienhe";
	}
}
