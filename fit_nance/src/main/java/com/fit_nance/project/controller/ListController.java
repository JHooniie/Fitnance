package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.InstallListFilterVO;
import com.fit_nance.project.service.ListService;

@Controller
public class ListController {
	
	@Autowired
	ListService listService;
	
	// 적금
	// 적금 전체 리스트 조회
	@RequestMapping("/listInstall")
	public String viewListInstall(Model model) {
		ArrayList<InstallListVO> installList = listService.selectInstallList();
		model.addAttribute("installList", installList);
		
		return "product/list_installment";
	}
	
	// 적금 상세 보기
	@RequestMapping("/detailInstall/{oIndex}")
	public String detail_mortgage(@PathVariable int oIndex, Model model) {
		InstallListVO installment = listService.selectInstallDetail(oIndex);
		model.addAttribute("installment", installment);
		
		return "product/detail_installment"; 
	}
	
	// 적금 필터링
	@RequestMapping("/filterInstall")
	public String filter_saving(@RequestParam(value="rsrv_type_nm") ArrayList<String> rsrv_type_nm2,
								@RequestParam(value="join_member") ArrayList<String> join_member2,
								@RequestParam(value="join_way") ArrayList<String> join_way2,
								@RequestParam(value="save_trm") ArrayList<String> save_trm2,
								Model model) {
		
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
	
	// 적금 비교함 가기
	@RequestMapping("/compareInstall")
	public String saving_compare() {
		return "product/compare_installment";
	}
}
