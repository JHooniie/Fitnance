package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.model.CharterLoanFilterVO;
import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.HomeLoanFilterVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PersonalLoanFilterVO;
import com.fit_nance.project.model.PersonalLoanListVO;
import com.fit_nance.project.service.ListLoanService;
import com.fit_nance.project.service.LoanService;

@Controller
public class ListLoanController {

	@Autowired
	ListLoanService listService;
	
	// 주택담보
	// 전체 리스트 조회
	@RequestMapping("/listMortgageLoan")
	public String viewListMortgage(Model model) {
		ArrayList<HomeLoanListVO> hlList = listService.listAllHomeLoan();
		model.addAttribute("hlList", hlList);
		
		return "product/list_mortgage_loan";
	}
	
	// 상세 보기
	@RequestMapping("/detailMortgageLoan/{oIndex}")
	public String viewDetailMortgage(@PathVariable int oIndex, Model model) {
		HomeLoanListVO homeloan = listService.detailViewHomeLoan(oIndex);
		model.addAttribute("homeloan", homeloan);
		
		return "product/detail_mortgage_loan";
	}
	
	// 필터링
	@RequestMapping("/filterMortgageLoan")
	public String filterMortgage(@RequestParam(value="arr_join_way") ArrayList<String> arr_join_way,
								 @RequestParam(value="arr_mrtg_type") ArrayList<String> arr_mrtg_type,
								 @RequestParam(value="arr_rpay_type") ArrayList<String> arr_rpay_type,
								 @RequestParam(value="arr_lend_type") ArrayList<String> arr_lend_type,
								 Model model) {
		
		HomeLoanFilterVO vo = new HomeLoanFilterVO();
		
		ArrayList<String> list_join_way = new ArrayList<String>();
		ArrayList<String> list_mrtg_type = new ArrayList<String>();
		ArrayList<String> list_rpay_type = new ArrayList<String>();
		ArrayList<String> list_lend_type = new ArrayList<String>();
		
		for(int i=1; i<arr_join_way.size(); i++) {
			list_join_way.add(arr_join_way.get(i));
		}
		
		if(list_join_way != null)
			vo.setList_join_way(list_join_way);
		
		for(int i=1; i<arr_mrtg_type.size(); i++) {
			list_mrtg_type.add(arr_mrtg_type.get(i));
		}

		if(list_mrtg_type != null)
			vo.setList_mrtg_type(list_mrtg_type);
		
		for(int i=1; i<arr_rpay_type.size(); i++) {
			list_rpay_type.add(arr_rpay_type.get(i));
		}

		if(list_rpay_type != null)
			vo.setList_rpay_type(list_rpay_type);
		
		for(int i=1; i<arr_lend_type.size(); i++) {
			list_lend_type.add(arr_lend_type.get(i));
		}

		if(list_lend_type != null)
			vo.setList_lend_type(list_lend_type);
		
		vo.setList_join_way(list_join_way);
		vo.setList_mrtg_type(list_mrtg_type);
		vo.setList_rpay_type(list_rpay_type);
		vo.setList_lend_type(list_lend_type);
		
		ArrayList<HomeLoanListVO> hlList = listService.selectHomeLoanFilter(vo); 
				
		model.addAttribute("hlList", hlList);
		
		return "product/result_mortgage_loan";
	}
	
	@ResponseBody
	@RequestMapping("/favorite_HomeLoan")
	public String favorite_HomeLoan(Authentication auth
									, @RequestParam(value="prdt_cd") String prdt_cd
									, @RequestParam(value="kind") String prdt_kind
									, @RequestParam(value="action") String prdt_action) {
		PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		String memId = princ.getUsername();
		
		String result = "fail";
		String fin_prdt_cd = prdt_cd;
		String kind = prdt_kind;
		String action = prdt_action;
		
		ArrayList<FavoriteVO> list = new ArrayList<FavoriteVO>();
		list = listService.selectFavList(kind, fin_prdt_cd, memId);
		if(action.equals("add")) {
			if(list.size() > 0) {
				result = "exist";
			} else {
				listService.insertFavList(kind, fin_prdt_cd, memId);
				result = "success";
			}
		} else if(action.equals("delete")) {
			listService.deleteFavList(kind, fin_prdt_cd, memId);
		}
		System.out.println("입력 코드 : "+fin_prdt_cd);
		return result;
	}
	
	// 전세자금
	// 전체 리스트 조회
	@RequestMapping("/listCharterLoan")
	public String viewListCharter(Model model) {
		ArrayList<CharterLoanListVO> clList = listService.selectCharterLoanList();
		model.addAttribute("clList", clList);
		
		return "product/list_charter_loan";
	}
	
	// 상세 보기
	@RequestMapping("/detailCharterLoan/{oIndex}")
	public String viewDetailCharter(@PathVariable int oIndex, Model model) {
		CharterLoanListVO charterloan = listService.selectCharterLoanDetail(oIndex);
		model.addAttribute("charterloan", charterloan);
		
		return "product/detail_charter_loan";
	}
	
	// 필터링
	@RequestMapping("/filterCharterLoan")
	public String filterCharter(@RequestParam(value="arr_join_way") ArrayList<String> arr_join_way,
								@RequestParam(value="arr_rpay_type") ArrayList<String> arr_rpay_type,
								@RequestParam(value="arr_lend_type") ArrayList<String> arr_lend_type,
								Model model) {
		
		CharterLoanFilterVO vo = new CharterLoanFilterVO();
		
		ArrayList<String> list_join_way = new ArrayList<String>();
		ArrayList<String> list_rpay_type = new ArrayList<String>();
		ArrayList<String> list_lend_type = new ArrayList<String>();
		
		for(int i=1; i<arr_join_way.size(); i++) {
			list_join_way.add(arr_join_way.get(i));
		}
		
		if(list_join_way != null)
			vo.setList_join_way(list_join_way);
		
		for(int i=1; i<arr_rpay_type.size(); i++) {
			list_rpay_type.add(arr_rpay_type.get(i));
		}

		if(list_rpay_type != null)
			vo.setList_rpay_type(list_rpay_type);
		
		for(int i=1; i<arr_lend_type.size(); i++) {
			list_lend_type.add(arr_lend_type.get(i));
		}

		if(list_lend_type != null)
			vo.setList_lend_type(list_lend_type);
		
		vo.setList_join_way(list_join_way);
		vo.setList_rpay_type(list_rpay_type);
		vo.setList_lend_type(list_lend_type);
		
		ArrayList<CharterLoanListVO> clList = listService.selectCharterLoanFilter(vo);
		
		model.addAttribute("clList", clList);
		
		return "product/result_charter_loan";
	}
	
	// 신용대출
	// 전체 리스트 조회
	@RequestMapping("/listCreditLoan")
	public String viewListCredit(Model model) {
		ArrayList<PersonalLoanListVO> clList = listService.selectPersonalLoanList();
		model.addAttribute("clList", clList);
		
		return "product/list_credit_loan";
	}
	
	// 상세 보기
	@RequestMapping("/detailCreditLoan/{oIndex}")
	public String viewDetailCredit(@PathVariable int oIndex, Model model) {
		PersonalLoanListVO creditloan = listService.selectPersonalLoanDetail(oIndex);
		model.addAttribute("creditloan", creditloan);
		
		return "product/detail_credit_loan";
	}
	
	// 필터링
	@RequestMapping("/filterCreditLoan")
	public String filterCredit(@RequestParam(value="arr_join_way") ArrayList<String> arr_join_way,
			 				   @RequestParam(value="arr_crdt_prdt_type") ArrayList<String> arr_crdt_prdt_type,
							   Model model) {
		
		PersonalLoanFilterVO vo = new PersonalLoanFilterVO();
		
		ArrayList<String> list_join_way = new ArrayList<String>();
		ArrayList<String> list_crdt_prdt_type = new ArrayList<String>();
		
		for(int i=1; i<arr_join_way.size(); i++) {
			list_join_way.add(arr_join_way.get(i));
		}
		
		if(list_join_way != null)
			vo.setList_join_way(list_join_way);
		
		for(int i=1; i<arr_crdt_prdt_type.size(); i++) {
			list_crdt_prdt_type.add(arr_crdt_prdt_type.get(i));
		}

		if(list_crdt_prdt_type != null)
			vo.setList_crdt_prdt_type(list_crdt_prdt_type);
		
		vo.setList_join_way(list_join_way);
		vo.setList_crdt_prdt_type(list_crdt_prdt_type);
		
		ArrayList<PersonalLoanListVO> clList = listService.selectPersonalLoanFilter(vo);
		
		model.addAttribute("clList", clList);
		
		return "product/result_credit_loan";
	}

	
	@RequestMapping("/compareLoan")
	public String compareLoan(Model model) {
		model.addAttribute("hcList", hcList);
//		for(int i=0; i<hcList.size(); i++) {
//			System.out.println(i);
//		}
		return "product/compare_loan";
	}
	
	// 주택담보 상품 비교
	
	ArrayList<HomeLoanListVO> hcList = new ArrayList<HomeLoanListVO>();
	@RequestMapping("/compare_HomeLoan")
	public String compare_HomeLoan(@RequestParam(value="arr_prdt_compare") ArrayList<String> arr_prdt_index
									,Model model) {
		ArrayList<HomeLoanListVO> hlList = listService.listAllHomeLoan();
		if(hcList.size()>0)
			hcList.clear();
		
		HomeLoanListVO vo;
		
		for(int i=0; i<hlList.size(); i++) {
			vo = hlList.get(i);
			for(int j=1; j<arr_prdt_index.size(); j++) {
				if(String.valueOf(vo.getoIndex()).equals(arr_prdt_index.get(j))) {
					//System.out.println("oIndex : "+vo.getoIndex());
					hcList.add(vo);
					
					//System.out.println(vo);
					System.out.println(vo.getFin_co_no());
					System.out.println(vo.getJoin_way());
					System.out.println(vo.getMrtg_type());
				}
			}
		}
		
		
		
//		for(int i=0; i<arr_prdt_index.size(); i++) {
//			System.out.println(arr_prdt_index.get(i));
//		}
		return "product/compare_loan";
	}
	
	@RequestMapping("/delete_HomeLoan")
	public String delete_HomeLoan(@RequestParam(value="prdt_index") String prdt_index) {
		int index = Integer.parseInt(prdt_index);
		HomeLoanListVO vo;
		for(int i=0; i<hcList.size(); i++) {
			vo = hcList.get(i);
			if(vo.getoIndex() == index)
				hcList.remove(i);
		}
		return "product/compare_loan";
	}
}
