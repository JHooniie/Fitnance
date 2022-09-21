package com.fit_nance.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
import com.fit_nance.project.service.FavoriteService;
import com.fit_nance.project.service.ListLoanService;

@Controller
public class ListLoanController {

	@Autowired
	ListLoanService listService;
	
	@Autowired
	FavoriteService fService;
	
	// 주택담보
	// 전체 리스트 조회
	@RequestMapping("/listMortgageLoan")
	public String viewListMortgage(Authentication auth, Model model) {
		if(auth != null) {
			FavoriteVO fvo = new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			fvo.setKind(4);
			fvo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(fvo);
			model.addAttribute("fList", fList);
		}
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
	public String filterMortgage(Authentication auth,
								@RequestParam(value="arr_join_way") ArrayList<String> arr_join_way,
								 @RequestParam(value="arr_mrtg_type") ArrayList<String> arr_mrtg_type,
								 @RequestParam(value="arr_rpay_type") ArrayList<String> arr_rpay_type,
								 @RequestParam(value="arr_lend_type") ArrayList<String> arr_lend_type,
								 //@RequestParam(value="search") String search,
								 Model model) {
		if(auth != null) {
			FavoriteVO fvo = new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			fvo.setKind(4);
			fvo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(fvo);
			model.addAttribute("fList", fList);
		}
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
	
	// 전세자금
	// 전체 리스트 조회
	@RequestMapping("/listCharterLoan")
	public String viewListCharter(Authentication auth, Model model) {
		if(auth != null) {
			FavoriteVO fvo = new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			fvo.setKind(5);
			fvo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(fvo);
			model.addAttribute("fList", fList);
		}
		
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
	public String filterCharter(Authentication auth,
								@RequestParam(value="arr_join_way") ArrayList<String> arr_join_way,
								@RequestParam(value="arr_rpay_type") ArrayList<String> arr_rpay_type,
								@RequestParam(value="arr_lend_type") ArrayList<String> arr_lend_type,
								Model model) {
		
		if(auth != null) {
			FavoriteVO fvo = new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			fvo.setKind(5);
			fvo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(fvo);
			model.addAttribute("fList", fList);
		}
		
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
	public String viewListCredit(Authentication auth, Model model) {
		if(auth != null) {
			FavoriteVO fvo = new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			fvo.setKind(6);
			fvo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(fvo);
			model.addAttribute("fList", fList);
		}
		
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
	public String filterCredit(Authentication auth,
								@RequestParam(value="arr_join_way") ArrayList<String> arr_join_way,
			 				   	@RequestParam(value="arr_crdt_prdt_type") ArrayList<String> arr_crdt_prdt_type,
			 				   	Model model) {
		
		if(auth != null) {
			FavoriteVO fvo = new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			fvo.setKind(6);
			fvo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(fvo);
			model.addAttribute("fList", fList);
		}
		
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

	
	////////////////
	// 대출 상품 비교 //
	////////////////
	ArrayList<HomeLoanListVO> hcList = new ArrayList<HomeLoanListVO>();
	ArrayList<CharterLoanListVO> ccList = new ArrayList<CharterLoanListVO>();
	ArrayList<PersonalLoanListVO> pcList = new ArrayList<PersonalLoanListVO>();

	// 주택담보 비교
	@RequestMapping("/view_compare_homeLoan")
	public String view_compare_homeLoan(Model model) {
		model.addAttribute("hcList", hcList);
		
		return "product/compare_home_loan";
	}
	
	@RequestMapping("/compare_HomeLoan")
	public String compare_HomeLoan(@RequestParam(value="comp") ArrayList<String> comparr
									,Model model) {
		
		System.out.println("comp : " + comparr);
		ArrayList<HomeLoanListVO> hlList = listService.listAllHomeLoan();
		if(hcList.size()>0)
			hcList.clear();
		
		HomeLoanListVO vo;
		
		for(int i=0; i<hlList.size(); i++) {
			vo = hlList.get(i);
			for(int j=1; j<comparr.size(); j++) {
				if(String.valueOf(vo.getoIndex()).equals(comparr.get(j))) {
					hcList.add(vo);
					System.out.println(vo.getFin_prdt_nm());
					System.out.println(vo.getJoin_way());
					System.out.println(vo.getoIndex());
				}
			}
		}
		return "product/compare_home_loan";
	}
	
	@ResponseBody
	@RequestMapping("/delete_HomeLoan")
	public String delete_HomeLoan(@RequestParam(value="prdt_index") String prdt_index) {
		String result = "not_empty";
		int index = Integer.parseInt(prdt_index);
		HomeLoanListVO vo;
		for(int i=0; i<hcList.size(); i++) {
			vo = hcList.get(i);
			if(vo.getoIndex() == index)
				hcList.remove(i);
		}
		
		if(hcList.size() > 0) {
			result = "not_empty";
		} else {
			result = "empty";
		}
		return result;
	}
	
	// 전세자금 비교
	@RequestMapping("/view_compare_chartereLoan")
	public String view_compare_charterLoan(Model model) {
		model.addAttribute("ccList", ccList);
		
		return "product/compare_charter_loan";
	}
	
	@RequestMapping("/compare_CharterLoan")
	public String compare_CharterLoan(@RequestParam(value="comp") ArrayList<String> comparr
									,Model model) {
		
		System.out.println("comp : " + comparr);
		ArrayList<CharterLoanListVO> clList = listService.selectCharterLoanList();
		if(ccList.size()>0)
			ccList.clear();
		
		CharterLoanListVO vo;
		
		for(int i=0; i<clList.size(); i++) {
			vo = clList.get(i);
			for(int j=1; j<comparr.size(); j++) {
				if(String.valueOf(vo.getoIndex()).equals(comparr.get(j))) {
					ccList.add(vo);
					System.out.println(vo.getFin_prdt_nm());
					System.out.println(vo.getJoin_way());
					System.out.println(vo.getoIndex());
				}
			}
		}
		return "product/compare_charter_loan";
	}
	
	@ResponseBody
	@RequestMapping("/delete_CharterLoan")
	public String delete_CharterLoan(@RequestParam(value="prdt_index") String prdt_index) {
		String result = "not_empty";
		int index = Integer.parseInt(prdt_index);
		CharterLoanListVO vo;
		for(int i=0; i<ccList.size(); i++) {
			vo = ccList.get(i);
			if(vo.getoIndex() == index)
				ccList.remove(i);
		}
		
		if(ccList.size() > 0) {
			result = "not_empty";
		} else {
			result = "empty";
		}
		return result;
	}
	
	// 개인신용 비교
	@RequestMapping("/view_compare_personalLoan")
	public String view_compare_personalLoan(Model model) {
		model.addAttribute("pcList", pcList);
		
		return "product/compare_credit_loan";
	}
	
	@RequestMapping("/compare_PersonalLoan")
	public String compare_PersonalLoan(@RequestParam(value="comp") ArrayList<String> comparr
									,Model model) {
		
		System.out.println("comp : " + comparr);
		ArrayList<PersonalLoanListVO> plList = listService.selectPersonalLoanList();
		if(pcList.size()>0)
			pcList.clear();
		
		PersonalLoanListVO vo;
		
		for(int i=0; i<plList.size(); i++) {
			vo = plList.get(i);
			for(int j=1; j<comparr.size(); j++) {
				if(String.valueOf(vo.getoIndex()).equals(comparr.get(j))) {
					pcList.add(vo);
					System.out.println(vo.getFin_prdt_nm());
					System.out.println(vo.getJoin_way());
					System.out.println(vo.getoIndex());
				}
			}
		}
		return "product/compare_credit_loan";
	}
	
	@ResponseBody
	@RequestMapping("/delete_PersonalLoan")
	public String delete_PersonalLoan(@RequestParam(value="prdt_index") String prdt_index) {
		String result = "not_empty";
		int index = Integer.parseInt(prdt_index);
		PersonalLoanListVO vo;
		for(int i=0; i<pcList.size(); i++) {
			vo = pcList.get(i);
			if(vo.getoIndex() == index)
				pcList.remove(i);
		}
		
		if(pcList.size() > 0) {
			result = "not_empty";
		} else {
			result = "empty";
		}
		return result;
	}
	

	@ResponseBody
	@RequestMapping("/favorite_Loan")
	public String favorite_Loan(Authentication auth
									, @RequestParam(value="prdt_cd") String prdt_cd
									, @RequestParam(value="kind") String prdt_kind
									, @RequestParam(value="action") String prdt_action) {
		String result = "fail";
		
		if(auth == null) {
			return result;
		}else {
			PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			int oIndex = Integer.valueOf(prdt_cd);;
			int kind = Integer.valueOf(prdt_kind);
			String action = prdt_action;
			
			FavoriteVO vo = new FavoriteVO();
			vo.setKind(kind);
			vo.setoIndex(oIndex);
			vo.setMemId(memId);
			
			ArrayList<FavoriteVO> fList = fService.searchFavorite(vo);
			
			if(action.equals("add")) {
				if(fList.size() > 0) {
					result = "exist";
				} else {
					fService.insertInstallFavorite(vo);
					result = "success";
				}
			} else if(action.equals("delete")) {
				fService.deleteInstallFavorite(vo);
				result = "exist";
			}
			System.out.println("입력 코드 : "+oIndex);
			return result;
		}
		
	}
}
