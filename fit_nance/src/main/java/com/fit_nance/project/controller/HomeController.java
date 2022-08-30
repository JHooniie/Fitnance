package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.SavingFilterVO;
import com.fit_nance.project.service.HomeLoanListService;
import com.fit_nance.project.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	ProductService pService;

	@Autowired
	HomeLoanListService homeloanlistService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// 주택담보 대출
	@RequestMapping("/list_mortgage_loan")
	public String list_mortgage_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_mortgage_loan"; 
	}
	
	
	@RequestMapping("/detail_mortgage_loan")
	public String detail_mortgage(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/detail_mortgage_loan"; 
	}
	
	//전세자금 대출
	@RequestMapping("/list_house_loan")
	public String list_house_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_house_loan"; 
	}
	
	// 개인신용 대출
	@RequestMapping("/list_credit_loan")
	public String list_credit_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_credit_loan"; 
	}
	
	// 대출이자 계산기
	@RequestMapping("/calc_rpayment")
	public String calc_rpayment(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "calculator/calc_rpayment"; 
	}
	
	// 서비스 이용 문의
	@RequestMapping("/cc_inquire")
	public String servicec_inquire(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "cc/cc_inquire"; 
	}
	
	
	@RequestMapping("/faq")
	public String faq() {
		return "product2/faq";
	}
	
	/*@RequestMapping("/filter_saving")
	@ResponseBody
	public ArrayList<InstallListVO> filter_saving(@RequestParam(value="rsrv_type_nm") ArrayList<String> rsrv_type_nm2,
								@RequestParam(value="join_member") ArrayList<String> join_member2,
								@RequestParam(value="join_way") ArrayList<String> join_way2,
								@RequestParam(value="save_trm") ArrayList<String> save_trm2
								,Model model)
	{	
		SavingFilterVO vo= new SavingFilterVO();
		
		ArrayList<String> rsrv_type_nm=new ArrayList<String>();
		ArrayList<String> join_member=new ArrayList<String>();
		ArrayList<String> join_way=new ArrayList<String>();
		ArrayList<String> save_trm=new ArrayList<String>();
		
		for(int i=1; i<rsrv_type_nm2.size();i++) {
			rsrv_type_nm.add(rsrv_type_nm2.get(i));
		}
		if(rsrv_type_nm!=null) vo.setRsrv_type_nm(rsrv_type_nm);
		
		for(int i=1; i<join_member2.size();i++) {
			join_member.add(join_member2.get(i));
		}
		if(join_member!=null) vo.setJoin_member(join_member);
		for(int i=1; i<join_way2.size();i++) {
			join_way.add(join_way2.get(i));
		}
		if(join_way!=null) vo.setJoin_way(join_way);
		for(int i=1; i<save_trm2.size();i++) {
			save_trm.add(save_trm2.get(i));
		}
		if(save_trm!=null)vo.setSave_trm(save_trm);
		/*for(String a : rsrv_type_nm) {
			System.out.print(a+",");
		}
		
		System.out.println();
		for(String a : join_member) {
			System.out.print(a+",");
		}
		System.out.println();
		for(String a : join_way) {
			System.out.print(a+",");
		}
		System.out.println();
		for(String a : save_trm) {
			System.out.print(a+",");
		}
		
		ArrayList<InstallListVO> insList= pService.selectInstallFilter(vo);
		for(int i =0;i<insList.size();i++){
				System.out.println(insList.get(i));
		}
		System.out.println(insList.size());
		model.addAttribute("insList", insList);
		
		return insList;
	}*/
	
	@RequestMapping("/filter_saving")
	public String filter_saving(@RequestParam(value="rsrv_type_nm") ArrayList<String> rsrv_type_nm2,
								@RequestParam(value="join_member") ArrayList<String> join_member2,
								@RequestParam(value="join_way") ArrayList<String> join_way2,
								@RequestParam(value="save_trm") ArrayList<String> save_trm2
								,Model model)
	{	
		SavingFilterVO vo= new SavingFilterVO();
		
		ArrayList<String> rsrv_type_nm=new ArrayList<String>();
		ArrayList<String> join_member=new ArrayList<String>();
		ArrayList<String> join_way=new ArrayList<String>();
		ArrayList<String> save_trm=new ArrayList<String>();
		
		for(int i=1; i<rsrv_type_nm2.size();i++) {
			rsrv_type_nm.add(rsrv_type_nm2.get(i));
		}
		if(rsrv_type_nm!=null) vo.setRsrv_type_nm(rsrv_type_nm);
		
		for(int i=1; i<join_member2.size();i++) {
			join_member.add(join_member2.get(i));
		}
		if(join_member!=null) vo.setJoin_member(join_member);
		for(int i=1; i<join_way2.size();i++) {
			join_way.add(join_way2.get(i));
		}
		if(join_way!=null) vo.setJoin_way(join_way);
		for(int i=1; i<save_trm2.size();i++) {
			save_trm.add(save_trm2.get(i));
		}
		if(save_trm!=null)vo.setSave_trm(save_trm);
		/*for(String a : rsrv_type_nm) {
			System.out.print(a+",");
		}
		
		System.out.println();
		for(String a : join_member) {
			System.out.print(a+",");
		}
		System.out.println();
		for(String a : join_way) {
			System.out.print(a+",");
		}
		System.out.println();
		for(String a : save_trm) {
			System.out.print(a+",");
		}*/
		
		ArrayList<InstallListVO> insList= pService.selectInstallFilter(vo);
		/*for(int i =0;i<insList.size();i++){
				System.out.println(insList.get(i));
		}
		System.out.println(insList.size());*/
		model.addAttribute("insList", insList);
		
		return "product2/saving_result";
	}
	
	/*@RequestMapping("/filter_saving2")
	public String filter_saving2(@RequestParam(value="abc") ArrayList<> abc, Model model) {
		ArrayList<InstallListVO> insList = new ArrayList<InstallListVO>();
		for(int i=0; i<abc.size();i++) {
			insList.add(abc.get(i));
		}
		model.addAttribute("insList", insList);
		return "product2/saving_result";
	}*/
	
	
	
	
	@RequestMapping("/deposit_detail")
	public String deposit_detail(@RequestParam int index, Model model) {
		ArrayList<DepositListVO> dpsList= pService.selectDepositAll();
		String kor_co_nm=null;
		String fin_prdt_nm =null;
		String join_way=null;
		double intr_rate=0.0;
		double intr_rate2=0.0;
		String join_member=null;
		String intr_rate_type_nm=null;
		int save_trm=0;	
		int join_deny=0;
		String join_deny2=null;
		String mtrt_int=null;
		String spcl_cnd=null;
		String etc_note=null;
		
		for(DepositListVO vo:dpsList) {
			if(vo.getoIndex()==index) {
				kor_co_nm = vo.getKor_co_nm();
				fin_prdt_nm=vo.getFin_prdt_nm();
				join_way=vo.getJoin_way();
				intr_rate=vo.getIntr_rate();
				intr_rate2=vo.getIntr_rate2();
				join_member=vo.getJoin_member();
				intr_rate_type_nm=vo.getIntr_rate_type_nm();
				save_trm=vo.getSave_trm();
				join_deny=vo.getJoin_deny();
				mtrt_int=vo.getMtrt_int();
				spcl_cnd=vo.getSpcl_cnd();
				etc_note=vo.getEtc_note();
			}
		}
		if (join_deny==0) join_deny2="제한없음";
		else if(join_deny==1) join_deny2="서민전용";
		else join_deny2="일부제한";
		
		model.addAttribute("kor_co_nm", kor_co_nm);
		model.addAttribute("fin_prdt_nm", fin_prdt_nm);
		model.addAttribute("join_way", join_way);
		model.addAttribute("intr_rate", intr_rate);
		model.addAttribute("intr_rate2", intr_rate2);
		model.addAttribute("join_member", join_member);
		model.addAttribute("intr_rate_type_nm", intr_rate_type_nm);
		model.addAttribute("save_trm", save_trm);
		model.addAttribute("join_deny", join_deny2);
		model.addAttribute("mtrt_int", mtrt_int);
		model.addAttribute("spcl_cnd", spcl_cnd);
		model.addAttribute("etc_note", etc_note);
		return "product2/deposit_detail";
	}
	
	@RequestMapping("/saving_detail")
	public String saving_detail(@RequestParam int index, Model model) {
		ArrayList<InstallListVO> installList= pService.selectInstallAll();
		String kor_co_nm=null;
		String fin_prdt_nm =null;
		String join_way=null;
		double intr_rate=0.0;
		double intr_rate2=0.0;
		String join_member=null;
		String rsrv_type_nm=null;
		int max_limit= 0;
		String intr_rate_type_nm=null;
		int save_trm=0;
		int join_deny=0;
		String join_deny2=null;
		String mtrt_int=null;
		String spcl_cnd=null;
		
		for(InstallListVO vo:installList) {
			if(vo.getoIndex()==index) {
				kor_co_nm = vo.getKor_co_nm();
				fin_prdt_nm=vo.getFin_prdt_nm();
				join_way=vo.getJoin_way();
				intr_rate=vo.getIntr_rate();
				intr_rate2=vo.getIntr_rate2();
				join_member=vo.getJoin_member();
				rsrv_type_nm=vo.getRsrv_type_nm();
				max_limit=vo.getMax_limit();
				intr_rate_type_nm=vo.getIntr_rate_type_nm();
				save_trm=vo.getSave_trm();
				join_deny=vo.getJoin_deny();
				mtrt_int=vo.getMtrt_int();
				spcl_cnd=vo.getSpcl_cnd();
			}
		}
		if (join_deny==0) join_deny2="제한없음";
		else if(join_deny==1) join_deny2="서민전용";
		else join_deny2="일부제한";
		
		model.addAttribute("kor_co_nm", kor_co_nm);
		model.addAttribute("fin_prdt_nm", fin_prdt_nm);
		model.addAttribute("join_way", join_way);
		model.addAttribute("intr_rate", intr_rate);
		model.addAttribute("intr_rate2", intr_rate2);
		model.addAttribute("join_member", join_member);
		model.addAttribute("rsrv_type_nm", rsrv_type_nm);
		model.addAttribute("max_limit", max_limit);
		model.addAttribute("intr_rate_type_nm", intr_rate_type_nm);
		model.addAttribute("save_trm", save_trm);
		model.addAttribute("join_deny", join_deny2);
		model.addAttribute("mtrt_int", mtrt_int);
		model.addAttribute("spcl_cnd", spcl_cnd);
		model.addAttribute("insList", installList);
		
		return "product2/saving_detail";
	}
	
	@RequestMapping("/pension_detail")
	public String pension_detail() {
		return "product2/pension_detail";
	}
	
	@RequestMapping("/intro")
	public String intro() {
		return "product2/intro";
	}
	@RequestMapping("/calculator_deposit")
	public String calculator_deposit() {
		return "product2/calculator_deposit";
	}
	
	@RequestMapping("/calculator_lump")
	public String calculator_lump() {
		return "product2/calculator_lump";
	}
	
	@RequestMapping("/deposit_compare")
	public String deposit_compare() {
		return "product2/deposit_compare";
	}
	
	@RequestMapping("/saving_compare")
	public String saving_compare() {
		return "product2/saving_compare";
	}
	
	@RequestMapping("/pension_compare")
	public String pension_compare() {
		return "product2/pension_compare";
	}
	
	// 대출상품 비교
	@RequestMapping("/compare_loan")
	public String compare_loan() {
		return "product/compare_loan";
	}
}
