package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.security.core.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.model.DepositFilterVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.InstallListFilterVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PensionFilterVO;
import com.fit_nance.project.model.PensionListVO;
import com.fit_nance.project.service.FavoriteService;
import com.fit_nance.project.service.ListSavingService;

@Controller
public class ListSavingController {
	@Autowired
	FavoriteService fService;
	
	@Autowired
	ListSavingService listService;
	
	ArrayList<InstallListVO> install_compare =new ArrayList<InstallListVO>();
	ArrayList<DepositListVO> dp_compare =new ArrayList<DepositListVO>();
	ArrayList<PensionListVO> ps_compare =new ArrayList<PensionListVO>();
	
	// 적금
	// 적금 전체 리스트 조회
	@RequestMapping("/listInstall")
	public String viewListInstall(Authentication auth,Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(1);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		ArrayList<InstallListVO> installList = listService.selectInstallList();
		model.addAttribute("installList", installList);
		
		return "product/list_installment";
	}
	
	// 적금 상세 보기
	@RequestMapping("/detailInstall/{oIndex}")
	public String viewDetailInstall(@PathVariable int oIndex, Model model) {
		InstallListVO installment = listService.selectInstallDetail(oIndex);
		model.addAttribute("installment", installment);
		
		return "product/detail_installment"; 
	}
	
	//적금 비교함 삭제
	@RequestMapping("/compare_install_delete/{oIndex}")
	public String compare_install_delete(@PathVariable int oIndex, Model model) {
		for(int i =0; i<install_compare.size();i++) {
			if(install_compare.get(i).getoIndex()==oIndex) {
				install_compare.remove(i);
			}
			
		}
		model.addAttribute("installList", install_compare);
		return "product/compare_installment2";
	}
	
	//예금 비교함 삭제
		@RequestMapping("/compare_deposit_delete/{oIndex}")
		public String compare_deposit_delete(@PathVariable int oIndex, Model model) {
			for(int i =0; i<dp_compare.size();i++) {
				if(dp_compare.get(i).getoIndex()==oIndex) {
					dp_compare.remove(i);
				}
				
			}
			model.addAttribute("dpList", dp_compare);
			return "product/compare_deposit2";
		}
		
		//연금 비교함 삭제
		@RequestMapping("/compare_pension_delete/{oIndex}")
		public String compare_pension_delete(@PathVariable int oIndex, Model model) {
			for(int i =0; i<ps_compare.size();i++) {
				if(ps_compare.get(i).getoIndex()==oIndex) {
					ps_compare.remove(i);
				}
				
			}
			model.addAttribute("psList", ps_compare);
			return "product/compare_pension2";
		}	
	
	// 적금 필터링
	@RequestMapping("/filterInstall")
	public String filterInstall(Authentication auth,@RequestParam(value="rsrv_type_nm") ArrayList<String> rsrv_type_nm2,
								@RequestParam(value="join_member") ArrayList<String> join_member2,
								@RequestParam(value="join_way") ArrayList<String> join_way2,
								@RequestParam(value="save_trm") ArrayList<String> save_trm2,
								Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(1);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		
		InstallListFilterVO vo = new InstallListFilterVO();
		
		ArrayList<String> rsrv_type_nm = new ArrayList<String>();
		ArrayList<String> join_member = new ArrayList<String>();
		ArrayList<String> join_way = new ArrayList<String>();
		ArrayList<String> save_trm = new ArrayList<String>();
		
		for(int i=1; i<rsrv_type_nm2.size();i++) {
			rsrv_type_nm.add(rsrv_type_nm2.get(i));
		}		
		
		if(rsrv_type_nm!=null)
			vo.setRsrv_type_nm(rsrv_type_nm);
		
		for(int i=1; i<join_member2.size();i++) {
			join_member.add(join_member2.get(i));
		}
		
		if(join_member!=null)
			vo.setJoin_member(join_member);
		
		for(int i=1; i<join_way2.size();i++) {
			join_way.add(join_way2.get(i));
		}
		
		if(join_way!=null)
			vo.setJoin_way(join_way);
		
		for(int i=1; i<save_trm2.size();i++) {
			save_trm.add(save_trm2.get(i));
		}
		
		if(save_trm!=null)
			vo.setSave_trm(save_trm);	
		
		vo.setRsrv_type_nm(rsrv_type_nm);
		vo.setJoin_member(join_member);
		vo.setJoin_way(join_way);
		vo.setSave_trm(save_trm);
		
		ArrayList<InstallListVO> installList= listService.selectInstallFilter(vo);
		
		model.addAttribute("installList", installList);		
		return "product/result_installment";
	}
	
	@RequestMapping("/callInstallCompare")
	public String callCompare(@RequestParam(value="compare") ArrayList<String> compare){
		install_compare =new ArrayList<InstallListVO>();
		for(int i =1; i<compare.size();i++) {
			install_compare.add(listService.selectInstallDetail(Integer.parseInt(compare.get(i))));
			System.out.println(install_compare.get(i-1));
		}
		
		return "product/compare_installment";
		
	}
	// 적금 비교함 가기
	@RequestMapping("/compareInstall")
	public String viewCompareInstall(
			Model model) {
		//System.out.println(install_compare.size());
		//for(int i =0; i<install_compare.size();i++) System.out.println(install_compare.get(i).getoIndex());
		model.addAttribute("installList", install_compare);
		
		return "product/compare_installment";
	}
	
	@RequestMapping("/callDepositCompare")
	public String calldpCompare(@RequestParam(value="compare") ArrayList<String> compare){
		dp_compare =new ArrayList<DepositListVO>();
		for(int i =1; i<compare.size();i++) {
			dp_compare.add(listService.selectDepositDetail(Integer.parseInt(compare.get(i))));
			System.out.println(dp_compare.get(i-1));
		}
		
		return "product/compare_deposit";
		
	}
	// 적금 비교함 가기
	@RequestMapping("/compareDeposit")
	public String viewCompareDepsosit(
			Model model) {
		//System.out.println(install_compare.size());
		//for(int i =0; i<install_compare.size();i++) System.out.println(install_compare.get(i).getoIndex());
		model.addAttribute("dpList", dp_compare);
		
		return "product/compare_deposit";
	}
	
	@RequestMapping("/callPensionCompare")
	public String callpsCompare(@RequestParam(value="compare") ArrayList<String> compare){
		ps_compare =new ArrayList<PensionListVO>();
		for(int i =1; i<compare.size();i++) {
			ps_compare.add(listService.selectPensionDetail(Integer.parseInt(compare.get(i))));
			System.out.println(ps_compare.get(i-1));
		}
		
		return "product/compare_pension";
		
	}
	// 적금 비교함 가기
	@RequestMapping("/comparePension")
	public String viewComparePension(
			Model model) {
		//System.out.println(install_compare.size());
		//for(int i =0; i<install_compare.size();i++) System.out.println(install_compare.get(i).getoIndex());
		model.addAttribute("psList", ps_compare);
		
		return "product/compare_pension";
	}
	
	
	// 예금
	// 예금 전체 리스트 조회
	@RequestMapping("/listDeposit")
	public String viewListDeposit(Authentication auth,Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(2);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		ArrayList<DepositListVO> dpList = listService.selectDepositList();
		model.addAttribute("dpList", dpList);
		
		return "product/list_deposit";
	}
	
	// 예금 상세 보기
	@RequestMapping("/detailDeposit/{oIndex}")
	public String viewDetailDeposit(@PathVariable int oIndex, Model model) {
		DepositListVO deposit = listService.selectDepositDetail(oIndex);
		model.addAttribute("deposit", deposit);
		
		return "product/detail_deposit"; 
	}
	
	// 예금 필터링
	@RequestMapping("/filterDeposit")
	public String filterDeposit(Authentication auth,@RequestParam(value="join_member") ArrayList<String> join_member2,
								@RequestParam(value="join_way") ArrayList<String> join_way2,
								@RequestParam(value="save_trm") ArrayList<String> save_trm2,
								Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(2);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		
		DepositFilterVO vo = new DepositFilterVO();
		
		ArrayList<String> join_member = new ArrayList<String>();
		ArrayList<String> join_way = new ArrayList<String>();
		ArrayList<String> save_trm = new ArrayList<String>();
		
		for(int i=1; i<join_member2.size();i++) {
			join_member.add(join_member2.get(i));
		}
		
		if(join_member!=null)
			vo.setJoin_member(join_member);
		
		for(int i=1; i<join_way2.size();i++) {
			join_way.add(join_way2.get(i));
		}
		
		if(join_way!=null)
			vo.setJoin_way(join_way);
		
		for(int i=1; i<save_trm2.size();i++) {
			save_trm.add(save_trm2.get(i));
		}
		
		if(save_trm!=null)
			vo.setSave_trm(save_trm);
		
		vo.setJoin_member(join_member);
		vo.setJoin_way(join_way);
		vo.setSave_trm(save_trm);
				
		ArrayList<DepositListVO> dpList = listService.selectDepositFilter(vo);
		
		model.addAttribute("dpList", dpList);
		
		return "product/result_deposit";
	}
	
	
	
	// 연금
	// 연금 전체 리스트 조회
	@RequestMapping("/listPension")
	public String viewListPension(Authentication auth,Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(3);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		ArrayList<PensionListVO> psList = listService.selectPensionList();
		model.addAttribute("psList", psList);
		
		return "product/list_pension";
	}
	
	// 연금 상세 보기
	@RequestMapping("/detailPension/{oIndex}")
	public String viewDetailPension(@PathVariable int oIndex, Model model) {
		PensionListVO pension = listService.selectPensionDetail(oIndex);
		model.addAttribute("pension", pension);
		
		return "product/detail_pension"; 
	}
	
	// 연금 필터링
	@RequestMapping("/filterPension")
	public String filterPension(Authentication auth,@RequestParam(value="pnsn_recp_trm_nm") ArrayList<String> pnsn_recp_trm_nm2,
								@RequestParam(value="mon_paym_atm_nm") ArrayList<String> mon_paym_atm_nm2,
								@RequestParam(value="pnsn_strt_age_nm") ArrayList<String> pnsn_strt_age_nm2,
								Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(3);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		
		PensionFilterVO vo = new PensionFilterVO();
		
		ArrayList<String> pnsn_recp_trm_nm = new ArrayList<String>();
		ArrayList<String> mon_paym_atm_nm = new ArrayList<String>();
		ArrayList<String> pnsn_strt_age_nm = new ArrayList<String>();
		
		for(int i=1; i<pnsn_recp_trm_nm2.size();i++) {
			pnsn_recp_trm_nm.add(pnsn_recp_trm_nm2.get(i));
		}
		
		if(pnsn_recp_trm_nm!=null)
			vo.setPnsn_recp_trm_nm(pnsn_recp_trm_nm);
	
		for(int i=1; i<mon_paym_atm_nm2.size();i++) {
			mon_paym_atm_nm.add(mon_paym_atm_nm2.get(i));
		}
		
		if(mon_paym_atm_nm!=null)
			vo.setMon_paym_atm_nm(mon_paym_atm_nm);
		
		for(int i=1; i<pnsn_strt_age_nm2.size();i++) {
			pnsn_strt_age_nm.add(pnsn_strt_age_nm2.get(i));
		}
		
		if(pnsn_strt_age_nm!=null)
			vo.setPnsn_strt_age_nm(pnsn_strt_age_nm);
		
		vo.setPnsn_recp_trm_nm(pnsn_recp_trm_nm);
		vo.setMon_paym_atm_nm(mon_paym_atm_nm);
		vo.setPnsn_strt_age_nm(pnsn_strt_age_nm);
		
		
		ArrayList<PensionListVO> psList = listService.selectPensionFilter(vo);
		
		model.addAttribute("psList", psList);
		
		return "product/result_pension";
	}
	
	@RequestMapping("/searchInstall")
	public String searchInstall(Authentication auth,@RequestParam(value="search") String search, Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(1);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		
		ArrayList<InstallListVO> installList= listService.selectInstallSearch(search);
		
		model.addAttribute("installList", installList);
		
		
		return "product/result_installment";
	}
	
	@RequestMapping("/searchDeposit")
	public String searchDeposit(Authentication auth,@RequestParam(value="search") String search, Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(2);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		
		ArrayList<DepositListVO> dpList= listService.selectDepositSearch(search);
		
		model.addAttribute("dpList", dpList);
		
		
		return "product/result_deposit";
	}
	
	@RequestMapping("/searchPension")
	public String searchPension(Authentication auth,@RequestParam(value="search") String search, Model model) {
		if(auth!=null) {
			FavoriteVO vo =new FavoriteVO();
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			vo.setKind(3);
			vo.setMemId(memId);
			ArrayList<FavoriteVO> fList = fService.selectFavorite(vo);
			model.addAttribute("fList", fList);
		}
		
		ArrayList<PensionListVO> psList= listService.selectPensionSearch(search);
		
		model.addAttribute("psList", psList);
		
		
		return "product/result_pension";
	}
	
	@RequestMapping("/insertInstallFavorite")
	public String insertInstallFavorite(Authentication auth,@RequestParam(value="favorite") int favorite) {
		FavoriteVO vo =new FavoriteVO();
		PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
		String memId = princ.getUsername();
		vo.setKind(1);
		vo.setMemId(memId);
		vo.setoIndex(favorite);
		
		fService.insertInstallFavorite(vo);
		
		return "product/list_installment";
	}
	
	@RequestMapping("/deleteInstallFavorite")
	public String deleteInstallFavorite(Authentication auth,@RequestParam(value="favorite") int favorite) {
		FavoriteVO vo =new FavoriteVO();
		PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
		String memId = princ.getUsername();
		vo.setKind(1);
		vo.setMemId(memId);
		vo.setoIndex(favorite);
		
		fService.deleteInstallFavorite(vo);
		
		return "product/list_installment";
	}
	
	@RequestMapping("/insertDepositFavorite")
	public String insertDepositFavorite(Authentication auth,@RequestParam(value="favorite") int favorite) {
		FavoriteVO vo =new FavoriteVO();
		PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
		String memId = princ.getUsername();
		vo.setKind(2);
		vo.setMemId(memId);
		vo.setoIndex(favorite);
		
		fService.insertInstallFavorite(vo);
		
		return "product/list_deposit";
	}
	
	@RequestMapping("/deleteDepositFavorite")
	public String deleteDepositFavorite(Authentication auth,@RequestParam(value="favorite") int favorite) {
		FavoriteVO vo =new FavoriteVO();
		PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
		String memId = princ.getUsername();
		vo.setKind(2);
		vo.setMemId(memId);
		vo.setoIndex(favorite);
		
		fService.deleteInstallFavorite(vo);
		
		return "product/list_deposit";
	}
	
	@RequestMapping("/insertPensionFavorite")
	public String insertPensionFavorite(Authentication auth,@RequestParam(value="favorite") int favorite) {
		FavoriteVO vo =new FavoriteVO();
		PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
		String memId = princ.getUsername();
		vo.setKind(3);
		vo.setMemId(memId);
		vo.setoIndex(favorite);
		
		fService.insertInstallFavorite(vo);
		
		return "product/list_pension";
	}
	
	@RequestMapping("/deletePensionFavorite")
	public String deletePensionFavorite(Authentication auth,@RequestParam(value="favorite") int favorite) {
		FavoriteVO vo =new FavoriteVO();
		PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
		String memId = princ.getUsername();
		vo.setKind(3);
		vo.setMemId(memId);
		vo.setoIndex(favorite);
		
		fService.deleteInstallFavorite(vo);
		
		return "product/list_pension";
	}
}
