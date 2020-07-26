package poly.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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
import org.springframework.web.multipart.MultipartFile;

import bean.controller.CTHoaDonTour;
import poly.entity.CTDichVu;
import poly.entity.CTTour;
import poly.entity.DichVuDuLich;
import poly.entity.KhachHang;
import poly.entity.ThongTinDuLich;
import poly.entity.TinDuLich;
import poly.entity.TourDuLich;
import poly.entity.User;

@Transactional
@Controller
@RequestMapping("/quantri/")
public class Quantri {
	@Autowired
	SessionFactory factory;
	@RequestMapping("donhangtourdulich")
	public String cttour(ModelMap model) {
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTTour";
		Query query3 = session6.createQuery(hql6);
		List<CTTour> list6 = query3.list();
		model.addAttribute("ctt", list6);
		model.addAttribute("tb","hóa đơn tour du lịch");
		return "quantri/chitiettour";
	}
	@RequestMapping("tindulich")
	public String tindulich(ModelMap model) {
		// lay du lieu tin du lich
		Session session3 = factory.getCurrentSession();
		String hql3 = "FROM TinDuLich";
		Query query3 = session3.createQuery(hql3);
		List<TinDuLich> list3 = query3.list();
		model.addAttribute("tdl",list3);
		model.addAttribute("tb", "Tin Du Lịch");
		return "quantri/tindulich";
	}
	// them tin du lich
		@RequestMapping(value="themtin", method = RequestMethod.GET)
		public String themtin(ModelMap model) {
			Session se = factory.getCurrentSession();
			String hql = "FROM User";
			Query query = se.createQuery(hql);
			List<User> list = query.list();
			model.addAttribute("users", list);
			Session session3 = factory.getCurrentSession();
			String hql3 = "FROM TinDuLich";
			Query query3 = session3.createQuery(hql3);
			List<TinDuLich> list3 = query3.list();
			model.addAttribute("tdl",list3);
			model.addAttribute("tins", new TinDuLich());
			return "quantri/themtin";
		}
		@RequestMapping(value="themtindulich", method = RequestMethod.POST)
		public String indextour(@Validated @ModelAttribute("tins") TinDuLich tins,BindingResult errors ,ModelMap model,@RequestParam("photo") MultipartFile photo) {
			if(errors.hasErrors()) {
				model.addAttribute("message","Quay trở lại thêm tin");
				return "quantri/themtin";
			}
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				tins.setHinhanh(photo.getOriginalFilename());
				tins.setNgaydang(new Date());
				session.save(tins);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Thêm mới thất bại");
			}finally {
				session.close();
			}
			Session session3 = factory.getCurrentSession();
			String hql3 = "FROM TinDuLich";
			Query query3 = session3.createQuery(hql3);
			List<TinDuLich> list3 = query3.list();
			model.addAttribute("tdl",list3);
			return "quantri/tindulich";
		}
		// xoa tin du lich
		@RequestMapping(value="/{tieude}",params = "Delete", method = RequestMethod.GET)
		public String xoatin(ModelMap model,@PathVariable("tieude") String title) {
			Session session3 = factory.getCurrentSession();
			String hql3 = "FROM TinDuLich";
			Query query3 = session3.createQuery(hql3);
			List<TinDuLich> list3 = query3.list();
			model.addAttribute("tdl",list3);
			TinDuLich tindulich = new TinDuLich();
			for(int i=0; i<list3.size();i++) {
				if(list3.get(i).getTieude().compareTo(title)==0) {
					
					tindulich.setIdTin(list3.get(i).getIdTin());
					tindulich.setTieude(list3.get(i).getTieude());
					tindulich.setHinhanh(list3.get(i).getHinhanh());
					tindulich.setNgaydang(list3.get(i).getNgaydang());
					tindulich.setNoidung(list3.get(i).getNoidung());
					tindulich.setIdUser(list3.get(i).getIdUser());
				}
			}
			model.addAttribute("tin", tindulich);
			return "quantri/xoatindulich";
		}
		@RequestMapping(value="xoatindulich", method = RequestMethod.POST)
		public String xoatindulich(ModelMap model,@ModelAttribute("tin") TinDuLich tin ) {
			Session session1 = factory.openSession();
			Transaction t = session1.beginTransaction();
			try {
				session1.delete(tin);
				t.commit();
				model.addAttribute("message","Xoa thanh cong");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Xoa that bai");
			}finally {
				session1.close();
			}
			Session session3 = factory.getCurrentSession();
			String hql3 = "FROM TinDuLich";
			Query query3 = session3.createQuery(hql3);
			List<TinDuLich> list3 = query3.list();
			model.addAttribute("tdl",list3);
			return "quantri/tindulich";
		}
		// sua tin du lich
		@RequestMapping(value="/{tieude}", params = "Edit", method = RequestMethod.GET)
		public String suatin(ModelMap model,@PathVariable("tieude") String title) {
			Session se = factory.getCurrentSession();
			String hql = "FROM User";
			Query query = se.createQuery(hql);
			List<User> list = query.list();
			model.addAttribute("users", list);
			Session session3 = factory.getCurrentSession();
			String hql3 = "FROM TinDuLich";
			Query query3 = session3.createQuery(hql3);
			List<TinDuLich> list3 = query3.list();
			model.addAttribute("tdl",list3);
			TinDuLich tindulich = new TinDuLich();
			for(int i=0; i<list3.size();i++) {
				if(list3.get(i).getTieude().compareTo(title)==0) {
					
					tindulich.setIdTin(list3.get(i).getIdTin());
					tindulich.setTieude(list3.get(i).getTieude());
					tindulich.setHinhanh(list3.get(i).getHinhanh());
					tindulich.setNgaydang(list3.get(i).getNgaydang());
					tindulich.setNoidung(list3.get(i).getNoidung());
					tindulich.setIdUser(list3.get(i).getIdUser());
				}
			}
			model.addAttribute("tin", tindulich);
			return "quantri/suatindulich";
		}
		@RequestMapping(value="suatindulich", method = RequestMethod.POST)
		public String suatindulich(@Validated @ModelAttribute("tin") TinDuLich tin,BindingResult errors, @RequestParam("photo") MultipartFile photo,ModelMap model) {
			if(errors.hasErrors()) {
				model.addAttribute("message","Quay trở lại sửa tin");
				return "quantri/suatindulich";
			}
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			if(photo.isEmpty()) {
				try {
					
					session.update(tin);
					t.commit();
					model.addAttribute("message", "Sửa mới thành công");
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message","Sửa mới thất bại");
				}finally {
					session.close();
				}
			}
			else {
				try {
					tin.setHinhanh(photo.getOriginalFilename());
					//tins.setNgaydang(new Date());
					
					session.update(tin);
					t.commit();
					model.addAttribute("message", "Sửa mới thành công");
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message","Sửa mới thất bại");
				}finally {
					session.close();
				}	
			}
			Session session3 = factory.getCurrentSession();
			String hql3 = "FROM TinDuLich";
			Query query3 = session3.createQuery(hql3);
			List<TinDuLich> list3 = query3.list();
			model.addAttribute("tdl",list3);
			return "quantri/tindulich";
		}
	@RequestMapping("tourdulich")
	public String tourdulich(ModelMap model) {
		// lay du lieu tour du lich
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		model.addAttribute("tb", "Danh Sách Tour");
		return "quantri/tour";
	}
	// them tour du lich
		@RequestMapping(value="themtour", method = RequestMethod.GET)
		public String themtour(ModelMap model) {
			Session se = factory.getCurrentSession();
			String hql = "FROM User";
			Query query = se.createQuery(hql);
			List<User> list = query.list();
			model.addAttribute("users", list);
			Session session1 = factory.getCurrentSession();
			String hql1 = "FROM TourDuLich";
			Query query1 = session1.createQuery(hql1);
			List<TourDuLich> list1 = query1.list();
			model.addAttribute("tdlich",list1);
			model.addAttribute("tours", new TourDuLich());
			return "quantri/themtour";
		}
		@RequestMapping(value="themtourdulich", method = RequestMethod.POST)
		public String indextour(@Validated @ModelAttribute("tours") TourDuLich tours,BindingResult errors,@RequestParam("photo") MultipartFile photo,ModelMap model) {
			if(errors.hasErrors()) {
				model.addAttribute("message","Quay trở về trang thêm tour");
				return "quantri/themtour";
			}
			model.addAttribute("message","Vui lòng chon file !");
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				tours.setHinhanh(photo.getOriginalFilename());
				session.save(tours);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Thêm mới thất bại");
			}finally {
				session.close();
			}
			
			Session session1 = factory.getCurrentSession();
			String hql1 = "FROM TourDuLich";
			Query query1 = session1.createQuery(hql1);
			List<TourDuLich> list1 = query1.list();
			model.addAttribute("tdlich",list1);
			return "quantri/tour";
		}
		// xoa tour du lich
		@RequestMapping(value="/{tenTour}", params = "delete", method = RequestMethod.GET)
		public String xoatour(ModelMap model, @PathVariable("tenTour") String tenTour) {
			
			Session session1 = factory.getCurrentSession();
			String hql1 = "FROM TourDuLich";
			Query query1 = session1.createQuery(hql1);
			List<TourDuLich> list1 = query1.list();
			model.addAttribute("tdlich",list1);
			TourDuLich tour = new TourDuLich();
			for(int i=0;i<list1.size();i++) {
				if(list1.get(i).getTenTour().compareTo(tenTour)==0) {
					tour.setIdTour(list1.get(i).getIdTour());
					tour.setTenTour(list1.get(i).getTenTour());
					tour.setGia(list1.get(i).getGia());
					tour.setHinhanh(list1.get(i).getHinhanh());
					tour.setKhachsan(list1.get(i).getKhachsan());
					tour.setKhoihanh(list1.get(i).getKhoihanh());
					tour.setThoigian(list1.get(i).getThoigian());
					tour.setNoidung(list1.get(i).getNoidung());
					tour.setDichuyen(list1.get(i).getDichuyen());
					tour.setIdUser(list1.get(i).getIdUser());
				}
				model.addAttribute("tours", tour);
			}
			return "quantri/xoatour";
		}
		@RequestMapping(value="xoatourdulich", method = RequestMethod.POST)
		public String xoatourdulich(ModelMap model, @ModelAttribute("tours") TourDuLich tours) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.delete(tours);
				t.commit();
				model.addAttribute("message", "Xóa thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Xóa thất bại");
			}finally {
				session.close();
			}
			Session session1 = factory.getCurrentSession();
			String hql1 = "FROM TourDuLich";
			Query query1 = session1.createQuery(hql1);
			List<TourDuLich> list1 = query1.list();
			model.addAttribute("tdlich",list1);
			return "quantri/tour";
		}
		// sua tour du lich
		@RequestMapping(value="/{tenTour}", params = "edit",method = RequestMethod.GET)
		public String suatour(ModelMap model, @PathVariable("tenTour") String tenTour) {
			Session se = factory.getCurrentSession();
			String hql = "FROM User";
			Query query = se.createQuery(hql);
			List<User> list = query.list();
			model.addAttribute("users", list);
			Session session1 = factory.getCurrentSession();
			String hql1 = "FROM TourDuLich";
			Query query1 = session1.createQuery(hql1);
			List<TourDuLich> list1 = query1.list();
			model.addAttribute("tdlich",list1);
			TourDuLich tour = new TourDuLich();
			for(int i=0;i<list1.size();i++) {
				if(list1.get(i).getTenTour().compareTo(tenTour)==0) {
					tour.setTenTour(list1.get(i).getTenTour());
					tour.setGia(list1.get(i).getGia());
					tour.setThoigian(list1.get(i).getThoigian());
					tour.setNoidung(list1.get(i).getNoidung());
					tour.setDichuyen(list1.get(i).getDichuyen());
					tour.setKhoihanh(list1.get(i).getKhoihanh());
					tour.setIdTour(list1.get(i).getIdTour());
					tour.setKhachsan(list1.get(i).getKhachsan());
					tour.setHinhanh(list1.get(i).getHinhanh());
					tour.setIdUser(list1.get(i).getIdUser());
				}
			}
			model.addAttribute("tours", tour);
			return"quantri/suatourdulich";
		}
		@RequestMapping(value="suatourdulich", method = RequestMethod.POST)
		public String suatour(@Validated @ModelAttribute("tours") TourDuLich tours,BindingResult errors,MultipartFile photo,ModelMap model) {
			if(errors.hasErrors()) {
				model.addAttribute("message","Quay trở về trang sửa tour");
				return "quantri/suatourdulich";
			}
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			if(photo.isEmpty()) {
				try {
					
					session.update(tours);
					t.commit();
					model.addAttribute("message", "Sửa mới thành công");
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message","Sửa mới thất bại");
				}finally {
					session.close();
				}
			}
			else {
				try {
					tours.setHinhanh(photo.getOriginalFilename());
					session.update(tours);
					t.commit();
					model.addAttribute("message", "Sửa mới thành công");
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message","Sửa mới thất bại");
				}finally {
					session.close();
				}	
			}
			Session session1 = factory.getCurrentSession();
			String hql1 = "FROM TourDuLich";
			Query query1 = session1.createQuery(hql1);
			List<TourDuLich> list1 = query1.list();
			model.addAttribute("tdlich",list1);
			return "quantri/tour";
		}
	@RequestMapping("dichvu")
	public String dichvu(ModelMap model) {
		// lay du lieu dich vu du lich
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM DichVuDuLich";
		Query query2 = session2.createQuery(hql2);
		List<DichVuDuLich> list2 = query2.list();
		model.addAttribute("dvdlich",list2);
		model.addAttribute("tb", "Dịch vụ du lịch");
		return "quantri/dichvu";
	}
	// them dich vu du lich
		@RequestMapping(value="themdichvu", method = RequestMethod.GET)
		public String themdv(ModelMap model) {
			Session se = factory.getCurrentSession();
			String hql = "FROM User";
			Query query = se.createQuery(hql);
			List<User> list = query.list();
			model.addAttribute("users", list);
			model.addAttribute("dichvu", new DichVuDuLich());
			return "quantri/themdichvu";
		}
		@RequestMapping(value="themdichvudulich", method = RequestMethod.POST)
		public String themdichvu(@Validated @ModelAttribute("dichvu") DichVuDuLich dv,BindingResult errors, @RequestParam("photo") MultipartFile photo,ModelMap model) {
			if(errors.hasErrors()) {
				model.addAttribute("message","Quay trở về trang them dịch vụ");
				return "quantri/themdichvu";
			}
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				dv.setHinhanh(photo.getOriginalFilename());
				session.save(dv);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Thêm mới thất bại");
			}finally {
				session.close();
			}
			Session session2 = factory.getCurrentSession();
			String hql2 = "FROM DichVuDuLich";
			Query query2 = session2.createQuery(hql2);
			List<DichVuDuLich> list2 = query2.list();
			model.addAttribute("dvdlich",list2);
			return "quantri/dichvu";
		}
		
		//xoa dich vu
		@RequestMapping(value="/{tenDV}", params = "lnkdelete", method = RequestMethod.GET)
		public String xoadv(ModelMap model, @PathVariable("tenDV") String tenDV) {
			Session session2 = factory.getCurrentSession();
			String hql2 = "FROM DichVuDuLich";
			Query query2 = session2.createQuery(hql2);
			List<DichVuDuLich> list2 = query2.list();
			DichVuDuLich dv = new DichVuDuLich();
			for(int i=0;i<list2.size();i++) {
				if(list2.get(i).getTenDV().compareTo(tenDV)==0) {
					dv.setIdDV(list2.get(i).getIdDV());
					dv.setTenDV(list2.get(i).getTenDV());
					dv.setHinhanh(list2.get(i).getHinhanh());
					dv.setNoidung(list2.get(i).getNoidung());
					dv.setIdUser(list2.get(i).getIdUser());
				}
			}
			model.addAttribute("dv", dv);
			return "quantri/xoadichvu";
		}
		@RequestMapping(value="xoadichvu", method = RequestMethod.POST)
		public String xoadichvu(ModelMap model, @ModelAttribute("dv") DichVuDuLich dv) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.delete(dv);
				t.commit();
				model.addAttribute("message", "Xóa thành công dịch vụ");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Xóa thất bại");
			}finally {
				session.close();
			}
			Session session2 = factory.getCurrentSession();
			String hql2 = "FROM DichVuDuLich";
			Query query2 = session2.createQuery(hql2);
			List<DichVuDuLich> list2 = query2.list();
			model.addAttribute("dvdlich", list2);
			return "quantri/dichvu";
		}

		//sua dich vu du lich
		@RequestMapping(value="/{tenDV}", params = "lnkedit", method = RequestMethod.GET)
		public String suadv(ModelMap model, @PathVariable("tenDV") String tenDV) {
			Session se = factory.getCurrentSession();
			String hql = "FROM User";
			Query query = se.createQuery(hql);
			List<User> list = query.list();
			model.addAttribute("users", list);
			Session session2 = factory.getCurrentSession();
			String hql2 = "FROM DichVuDuLich";
			Query query2 = session2.createQuery(hql2);
			List<DichVuDuLich> list2 = query2.list();
			DichVuDuLich dv = new DichVuDuLich();
			for(int i=0;i<list2.size();i++) {
				if(list2.get(i).getTenDV().compareTo(tenDV)==0) {
					dv.setIdDV(list2.get(i).getIdDV());
					dv.setTenDV(list2.get(i).getTenDV());
					dv.setHinhanh(list2.get(i).getHinhanh());
					dv.setNoidung(list2.get(i).getNoidung());
					dv.setIdUser(list2.get(i).getIdUser());
				}
			}
			model.addAttribute("dv", dv);
			return "quantri/suadichvu";
		}
		@RequestMapping(value="suadichvu", method = RequestMethod.POST)
		public String suadichvu(@Validated @ModelAttribute("dv") DichVuDuLich dv,BindingResult errors, @RequestParam("photo") MultipartFile photo,ModelMap model) {
			if(errors.hasErrors()) {
				model.addAttribute("message","Quay trở về trang sửa dịch vụ");
				return "quantri/suadichvu";
			}
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			if(photo.isEmpty()) {
				try {
				
					session.update(dv);
					t.commit();
					model.addAttribute("message", "Sửa mới thành công");
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message","Sửa mới thất bại");
				}finally {
					session.close();
				}
			}
			else {
				try {
					dv.setHinhanh(photo.getOriginalFilename());
					//tins.setNgaydang(new Date());
			
					session.update(dv);
					t.commit();
					model.addAttribute("message", "Sửa mới thành công");
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message","Sửa mới thất bại");
				}finally {
					session.close();
				}	
			}
			Session session2 = factory.getCurrentSession();
			String hql2 = "FROM DichVuDuLich";
			Query query2 = session2.createQuery(hql2);
			List<DichVuDuLich> list2 = query2.list();
			model.addAttribute("dvdlich", list2);
			return "quantri/dichvu";
		}
	@RequestMapping("thongtin")
	public String thongtindulich(ModelMap model) {
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl",list4);
		
		model.addAttribute("message", "Thông Tin Du Lịch");
		return "quantri/thongtindulich";
	}
	//them thong tin du lich
	@RequestMapping(value="themthongtin", method = RequestMethod.GET)
	public String themttdulich(ModelMap model) {
		Session se = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = se.createQuery(hql);
		List<User> list = query.list();
		model.addAttribute("users", list);
		ThongTinDuLich ttdlich = new ThongTinDuLich();
		model.addAttribute("ttdlich", ttdlich);
		return "quantri/themttdulich";
	}
	@RequestMapping(value="themttdulich", method = RequestMethod.POST)
	public String themttdlich(@Validated @ModelAttribute("ttdlich") ThongTinDuLich ttdlich,BindingResult errors, @RequestParam("photo") MultipartFile photo,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message","Quay trở lại thêm thông tin du lịch");
			return "quantri/themttdulich";
		}
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			ttdlich.setHinhanh(photo.getOriginalFilename());
			ttdlich.setNgaydang(new Date());
			session.save(ttdlich);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Thêm mới thất bại");
		}finally {
			session.close();
		}
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl",list4);
		return "quantri/thongtindulich";
	}
	// xoa thong tin du lich
	@RequestMapping(value="/{tieude}", params = "Lnkdelete", method = RequestMethod.GET)
	public String xoattdlich(ModelMap model,@PathVariable("tieude") String tieude) {
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
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
		return "quantri/xoattdulich";
	}
	@RequestMapping(value="xoattdulich",method = RequestMethod.POST)
	public String xoathongtindlich(ModelMap model, @ModelAttribute("ttdlich") ThongTinDuLich ttdl) {
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.delete(ttdl);
			t.commit();
			model.addAttribute("message","Xoa thanh cong");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Xoa that bai");
		}finally {
			session1.close();
		}
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl",list4);
		return "quantri/thongtindulich";
	}
	// sua thong tin du lich
	@RequestMapping(value="/{tieude}", params = "Lnkedit", method = RequestMethod.GET)
	public String suattdlich(ModelMap model, @PathVariable("tieude") String tieude) {
		Session se = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = se.createQuery(hql);
		List<User> list = query.list();
		model.addAttribute("users", list);
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
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
		return "quantri/suattdulich";
	}
	@RequestMapping(value="suattdulich", method = RequestMethod.POST)
	public String suattdl(@Validated @ModelAttribute("ttdlich") ThongTinDuLich ttdl,BindingResult errors, @RequestParam("photo") MultipartFile photo,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message","Quay trở lại sửa thông tin du lịch");
			return "quantri/suattdulich";
		}
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if(photo.isEmpty()) {
			try {
				
				session.update(ttdl);
				t.commit();
				model.addAttribute("message", "Sửa mới thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Sửa mới thất bại");
			}finally {
				session.close();
			}
		}
		else {
			try {
				ttdl.setHinhanh(photo.getOriginalFilename());
				
				session.update(ttdl);
				t.commit();
				model.addAttribute("message", "Sửa mới thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Sửa mới thất bại");
			}finally {
				session.close();
			}	
		}
		Session session4 = factory.getCurrentSession();
		String hql4 = "FROM ThongTinDuLich";
		Query query4 = session4.createQuery(hql4);
		List<ThongTinDuLich> list4 = query4.list();
		model.addAttribute("ttdl",list4);
		return "quantri/thongtindulich";
	}
	// lay du lieu khach hang
	@RequestMapping("thongtinkhachhang")
	public String tinkhach(ModelMap model) {
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khach", list5);
		return "quantri/thongtinkhach";
	}
	// them hoa don tour
	@RequestMapping(value="hieuchinhhoadon", params = "btnthem", method = RequestMethod.GET)
	public String themhdtour(ModelMap model) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		// du lieu khach hang
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khachhang", list5);
		model.addAttribute("cttour", new CTTour());
		model.addAttribute("message", "Thêm hóa đơn tour du lịch");
		return "quantri/themhoadontour";
	}
	@RequestMapping(value="themcttour", method = RequestMethod.POST)
	public String themhoadontour(@Validated @ModelAttribute("cttour") CTTour hd,BindingResult errors, HttpServletRequest request,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message", "Quay lại phần thêm hóa đơn tour du lịch");
			return "quantri/themhoadontour";
		}
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		// tour du lich
		Session session = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		CTTour ct = new CTTour();
		try {
			for(int i=0;i<list1.size();i++) {
				if(list1.get(i).getIdTour().toString().compareTo(hd.getIdTour().getIdTour().toString())==0){
					double tong = ((hd.getSoluongnguoilon() * list1.get(i).getGia()) + (hd.getSoluongtreem() *list1.get(i).getGia())*0.5);
					hd.setTongtien(tong);
				}
			}
			hd.setNgaydat(new Date());
			session1.save(hd);
			t.commit();
			model.addAttribute("message","Thêm thanh cong");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Thêm that bai");
		}finally {
			session1.close();
		}
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTTour";
		Query query3 = session6.createQuery(hql6);
		List<CTTour> list6 = query3.list();
		model.addAttribute("ctt",list6);
		return "quantri/chitiettour";
	}
	// xoa hoa don tour
	@RequestMapping(value="hieuchinhhoadon", params = "btnxoa", method = RequestMethod.GET)
	public String deletecttour(ModelMap model,HttpServletRequest re) {
		String id = re.getParameter("id");
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTTour";
		Query query3 = session6.createQuery(hql6);
		CTTour ct = new CTTour();
		List<CTTour> list6 = query3.list();
		for(int i=0;i<list6.size();i++) {
			if(list6.get(i).getIdHDT()==Integer.parseInt(id)) {
				ct.setIdHDT(list6.get(i).getIdHDT());
				ct.setIdKH(list6.get(i).getIdKH());
				ct.setIdTour(list6.get(i).getIdTour());
				ct.setNgaydat(list6.get(i).getNgaydat());
				ct.setNgaydi(list6.get(i).getNgaydi());
				ct.setNgayve(list6.get(i).getNgayve());
				ct.setSoluongnguoilon(list6.get(i).getSoluongnguoilon());
				ct.setSoluongtreem(list6.get(i).getSoluongtreem());
				ct.setTongtien(list6.get(i).getTongtien());
				ct.setThanhtoan(list6.get(i).isThanhtoan());
				model.addAttribute("hoadontour", ct);
			}
		}
		return "quantri/xoahoadontour";
	}
	@RequestMapping(value="xoacttour", method = RequestMethod.POST)
	public String xoahoadontour(ModelMap model, @ModelAttribute("hoadontour") CTTour hd) {
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.delete(hd);
			t.commit();
			model.addAttribute("message","Xóa thanh cong");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Xóa that bai");
		}finally {
			session1.close();
		}
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTTour";
		Query query3 = session6.createQuery(hql6);
		CTTour ct = new CTTour();
		List<CTTour> list6 = query3.list();
		model.addAttribute("ctt",list6);
		return "quantri/chitiettour";
	}
	// sua hoa don tour
	@RequestMapping(value="hieuchinhhoadon", params = "btnsua", method = RequestMethod.GET)
	public String suahdtour(ModelMap model,HttpServletRequest re) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM TourDuLich";
		Query query1 = session1.createQuery(hql1);
		List<TourDuLich> list1 = query1.list();
		model.addAttribute("tdlich",list1);
		// du lieu khach hang
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khachhang", list5);
		String id = re.getParameter("id");
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTTour";
		Query query3 = session6.createQuery(hql6);
		CTTour ct = new CTTour();
		List<CTTour> list6 = query3.list();
		for(int i=0;i<list6.size();i++) {
			if(list6.get(i).getIdHDT()==Integer.parseInt(id)) {
				ct.setIdHDT(list6.get(i).getIdHDT());
				ct.setIdKH(list6.get(i).getIdKH());
				ct.setIdTour(list6.get(i).getIdTour());
				ct.setNgaydat(list6.get(i).getNgaydat());
				ct.setNgaydi(list6.get(i).getNgaydi());
				ct.setNgayve(list6.get(i).getNgayve());
				ct.setSoluongnguoilon(list6.get(i).getSoluongnguoilon());
				ct.setSoluongtreem(list6.get(i).getSoluongtreem());
				ct.setTongtien(list6.get(i).getTongtien());
				ct.setThanhtoan(list6.get(i).isThanhtoan());
				model.addAttribute("hoadontour", ct);
			}
		}
		model.addAttribute("message", "Sửa hóa đơn tour du lịch");
		return "quantri/suahoadontour";
	}
	@RequestMapping(value="suacttour", method = RequestMethod.POST)
	public String suachitiethoadon(@Validated @ModelAttribute("hoadontour") CTTour hd,BindingResult errors,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message", "Quay lại phần sửa hóa đơn tour du lịch");
			return "quantri/suahoadontour";
		}
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			//hd.setThanhtoan(tt);
			session1.update(hd);
			t.commit();
			model.addAttribute("message","Sửa thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Sửa thất bại");
		}finally {
			session1.close();
		}
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTTour";
		Query query3 = session6.createQuery(hql6);
		CTTour ct = new CTTour();
		List<CTTour> list6 = query3.list();
		model.addAttribute("ctt",list6);
		return "quantri/chitiettour";
	}
	// them thong tin khach hang
	@RequestMapping(value="hieuchinhkhach", params = "btnthem", method = RequestMethod.GET)
	public String themkh(ModelMap model) {
		KhachHang kh = new KhachHang();
		model.addAttribute("kh", kh);
		model.addAttribute("message", "thêm thông tin khách hàng");
		return "quantri/themkhachhang";
	}
	@RequestMapping(value="themkhachhang", method = RequestMethod.POST)
	public String themkhachhang(@Validated @ModelAttribute("kh") KhachHang kh,BindingResult errors,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message", "Quay trở lại thêm khách hàng");
			return "quantri/themkhachhang";
		}
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.save(kh);
			t.commit();
			model.addAttribute("message","Thêm thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Thêm thất bại");
		}finally {
			session1.close();
		}
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khach", list5);
		return "quantri/thongtinkhach";
	}
	// xoa khach hang
	@RequestMapping(value="hieuchinhkhach", params = "btnxoa", method = RequestMethod.GET)
	public String xoakh(ModelMap model, HttpServletRequest re) {
		String id = re.getParameter("idkh");
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM KhachHang";
		Query query3 = session6.createQuery(hql6);
		KhachHang kh = new KhachHang();
		List<KhachHang> list6 = query3.list();
		for(int i=0;i<list6.size();i++) {
			if(list6.get(i).getIdKH()==Integer.parseInt(id)) {
				kh.setIdKH(list6.get(i).getIdKH());
				kh.setTenKH(list6.get(i).getTenKH());
				kh.setSodienthoai(list6.get(i).getSodienthoai());
				kh.setDiachi(list6.get(i).getDiachi());
				kh.setEmail(list6.get(i).getEmail());
				kh.setNoidung(list6.get(i).getNoidung());
				model.addAttribute("kh", kh);
			}
		}
		return "quantri/xoakhachhang";
	}
	@RequestMapping(value="xoakhachhang", method = RequestMethod.POST)
	public String xoakhachhang(ModelMap model,@ModelAttribute("kh") KhachHang kh) {
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.delete(kh);
			t.commit();
			model.addAttribute("message","Xóa thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Xóa Thêm thất bại");
		}finally {
			session1.close();
		}
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khach", list5);
		return "quantri/thongtinkhach";
	}
	// sau thong tin khach hang
	@RequestMapping(value="hieuchinhkhach", params = "btnsua", method = RequestMethod.GET)
	public String suakh(ModelMap model, HttpServletRequest re) {
		String id = re.getParameter("idkh");
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM KhachHang";
		Query query3 = session6.createQuery(hql6);
		KhachHang kh = new KhachHang();
		List<KhachHang> list6 = query3.list();
		for(int i=0;i<list6.size();i++) {
			if(list6.get(i).getIdKH()==Integer.parseInt(id)) {
				kh.setIdKH(list6.get(i).getIdKH());
				kh.setTenKH(list6.get(i).getTenKH());
				kh.setSodienthoai(list6.get(i).getSodienthoai());
				kh.setDiachi(list6.get(i).getDiachi());
				kh.setEmail(list6.get(i).getEmail());
				kh.setNoidung(list6.get(i).getNoidung());
				model.addAttribute("kh", kh);
			}
		}
		return "quantri/suakhachhang";
	}
	@RequestMapping(value="suakhachhang", method = RequestMethod.POST)
	public String suakhachhang(@Validated @ModelAttribute("kh") KhachHang kh,BindingResult errors,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message", "Quay trở về sửa khách hàng");
			return "quantri/suakhachhang";
		}
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.update(kh);
			t.commit();
			model.addAttribute("message","Sửa thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Sửa thất bại");
		}finally {
			session1.close();
		}
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khach", list5);
		return "quantri/thongtinkhach";
	}
	@RequestMapping("donhangdichvu")
	public String loaddondv(ModelMap model) {
		Session se = factory.getCurrentSession();
		String hql5 = "FROM CTDichVu";
		Query query = se.createQuery(hql5);
		List<CTDichVu> list5 = query.list();
		model.addAttribute("ctdv", list5);
		model.addAttribute("tb", "Hóa đơn dịch vụ du lịch");
		return "quantri/chitietdichvu";
	}
	// them hoa don dich vu
	@RequestMapping(value="hieuchinhhoadondv", params = "btnthem", method = RequestMethod.GET)
	public String themhddv(ModelMap model) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM DichVuDuLich";
		Query query1 = session1.createQuery(hql1);
		List<DichVuDuLich> list1 = query1.list();
		model.addAttribute("dvdl", list1);
		// du lieu khach hang
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khachhang", list5);
		model.addAttribute("hddv", new CTDichVu());
		model.addAttribute("message", "Thêm hóa đơn dịch vụ du lịch");
		return "quantri/themhoadondv";
	}
	@RequestMapping(value="themhddv", method = RequestMethod.POST)
	public String themhoadondv(@Validated @ModelAttribute("hddv") CTDichVu hddv,BindingResult errors, HttpServletRequest request,ModelMap model){
		
		if(errors.hasErrors()) {
			model.addAttribute("message", "quay lại phần thêm hóa đơn dịch vụ");
			return "quantri/themhoadondv";
		}
		else {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				hddv.setNgaydat(new Date());
				session.save(hddv);
				t.commit();
				model.addAttribute("message","Thêm thanh cong");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message","Thêm that bai");
			}finally {
				session.close();
			}
		}
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTDichVu";
		Query query3 = session6.createQuery(hql6);
		List<CTDichVu> list6 = query3.list();
		model.addAttribute("ctdv",list6);
		return "quantri/chitietdichvu";
	}
	// xoa doa don dich vu
	@RequestMapping(value="hieuchinhhoadondv", params = "btnxoa", method = RequestMethod.GET)
	public String deletehddv(ModelMap model,HttpServletRequest re) {
		String id = re.getParameter("id");
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTDichVu";
		Query query3 = session6.createQuery(hql6);
		CTDichVu ct = new CTDichVu();
		List<CTDichVu> list6 = query3.list();
		for(int i=0;i<list6.size();i++) {
			if(list6.get(i).getID()==Integer.parseInt(id)) {
				ct.setID(list6.get(i).getID());
				ct.setIdKH(list6.get(i).getIdKH());
				ct.setIdDV(list6.get(i).getIdDV());
				ct.setNgaydat(list6.get(i).getNgaydat());
				ct.setNgaynhan(list6.get(i).getNgaynhan());
				ct.setNgaytra(list6.get(i).getNgaytra());
				ct.setSoluong(list6.get(i).getSoluong());
				ct.setLoai(list6.get(i).getLoai());
				ct.setThanhtoan(list6.get(i).isThanhtoan());
				model.addAttribute("hddv", ct);
			}
		}
		return "quantri/xoahoadondv";
	}
	@RequestMapping(value="xoahoadondv", method = RequestMethod.POST)
	public String xoahoadondv(ModelMap model, @ModelAttribute("hddv") CTDichVu hd) {
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.delete(hd);
			t.commit();
			model.addAttribute("message","Xóa thanh cong");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Xóa that bai");
		}finally {
			session1.close();
		}
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTDichVu";
		Query query3 = session6.createQuery(hql6);
		List<CTDichVu> list6 = query3.list();
		model.addAttribute("ctdv",list6);
		return "quantri/chitietdichvu";
	}
	// sua thong tin hoa don dich vu du lich
	@RequestMapping(value="hieuchinhhoadondv", params = "btnsua", method = RequestMethod.GET)
	public String suahddv(ModelMap model,HttpServletRequest re) {
		Session session1 = factory.getCurrentSession();
		String hql1 = "FROM DichVuDuLich";
		Query query1 = session1.createQuery(hql1);
		List<DichVuDuLich> list1 = query1.list();
		model.addAttribute("dvdl",list1);
		// du lieu khach hang
		Session session5 = factory.getCurrentSession();
		String hql5 = "FROM KhachHang";
		Query query5 = session5.createQuery(hql5);
		List<KhachHang> list5 = query5.list();
		model.addAttribute("khachhang", list5);
		String id = re.getParameter("id");
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTDichVu";
		Query query3 = session6.createQuery(hql6);
		CTDichVu ct = new CTDichVu();
		List<CTDichVu> list6 = query3.list();
		for(int i=0;i<list6.size();i++) {
			if(list6.get(i).getID()==Integer.parseInt(id)) {
				ct.setID(list6.get(i).getID());
				ct.setIdKH(list6.get(i).getIdKH());
				ct.setIdDV(list6.get(i).getIdDV());
				ct.setNgaydat(list6.get(i).getNgaydat());
				ct.setNgaynhan(list6.get(i).getNgaynhan());
				ct.setNgaytra(list6.get(i).getNgaytra());
				ct.setSoluong(list6.get(i).getSoluong());
				ct.setLoai(list6.get(i).getLoai());
				ct.setThanhtoan(list6.get(i).isThanhtoan());
				model.addAttribute("hddv", ct);
			}
		}
		model.addAttribute("message", "Sửa hóa đơn tour du lịch");
		return "quantri/suahoadondv";
	}
	@RequestMapping(value="suahoadondv", method = RequestMethod.POST)
	public String suachitiethoadondv(@Validated @ModelAttribute("hddv") CTDichVu hd,BindingResult errors,ModelMap model) {
		if(errors.hasErrors()) {
			model.addAttribute("message", "quay lại phần sửa hóa đơn dịch vụ");
			return "quantri/suahoadondv";
		}
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			//hd.setThanhtoan(tt);
			session1.update(hd);
			t.commit();
			model.addAttribute("message","Sửa thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message","Sửa thất bại");
		}finally {
			session1.close();
		}
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM CTDichVu";
		Query query3 = session6.createQuery(hql6);
		List<CTDichVu> list6 = query3.list();
		model.addAttribute("ctdv",list6);
		return "quantri/chitietdichvu";
	}
}
