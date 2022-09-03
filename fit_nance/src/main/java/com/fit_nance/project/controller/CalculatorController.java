package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.model.Calc_rpayVO;

@Controller
public class CalculatorController {
	
	@RequestMapping("/cal_tax")
	public String viewNotice() {
		return "calculator/cal_tax";
	}
	
	// 대출이자 계산기
	
	@RequestMapping("/calc_rpayment") 
	public String calc_rpayment(Model model) {
		return "calculator/calc_rpayment";
	}
	 
	@ResponseBody
	@RequestMapping("/calc_rpay")
	public /*String*/ ArrayList<Calc_rpayVO> /*ModelAndView*/ calc_rpay(Model model
			, @RequestParam(value="calc_lend_loan") int calc_lend_loan
			, @RequestParam(value="calc_dly_rate_year") double calc_dly_rate_year
			, @RequestParam(value="calc_rpay_period") int calc_rpay_period
			//, @RequestParam(value="c1") int calc_lend_loan
			//, @RequestParam(value="c2") double calc_dly_rate_year
			//, @RequestParam(value="c3") int calc_rpay_period
			) {
		System.out.println("대출 금액 : "+calc_lend_loan);
		System.out.println("연 이자율 : "+calc_dly_rate_year);
		System.out.println("상환 기간 : "+calc_rpay_period);
		
		// 상환 개월 수 = 상환기간*12
		int calc_rpay_month = calc_rpay_period * 12;
		//System.out.println("상환 개월 수 : "+calc_rpay_month);
		
		// 월 이자율 = 연 이자율 / 12
		double calc_dly_rate_month = Math.round(calc_dly_rate_year / 12 * 1000000) / 1000000.0;
		//System.out.println("월 이자율 : "+calc_dly_rate_month);
		double result1 = calc_lend_loan * (calc_dly_rate_month / 100.0) * Math.pow((1 + calc_dly_rate_month / 100.0), calc_rpay_month);
		double result2 = Math.pow((1 + calc_dly_rate_month / 100.0), calc_rpay_month) - 1;
		int result = (int) Math.round(result1 / result2);
		
		int money = calc_lend_loan;// 잔금 1,000만 원
		int total = money;
		int rpay = result;// 매 월 상환금 438,714 원
		int rate = (int)(total * calc_dly_rate_month / 100);// 이자
		int rpay_month = rpay - rate;
		
		ArrayList<Calc_rpayVO> list_rpay = new ArrayList<Calc_rpayVO>();
		
		for(int i=1; i<calc_rpay_month+1; i++) {
			Calc_rpayVO vo = new Calc_rpayVO();
			rate = (int)(total * calc_dly_rate_month / 100);
			rpay_month = rpay - rate;
			total -= rpay_month;
			if(total<0) {
				rpay_month -= total;
				rate -= total;
				total = 0;
			}
			vo.setIndex(i);
			vo.setRpay_month(rpay_month);
			vo.setRpay_rate(rate);
			vo.setRpay(rpay);
			vo.setTotal(total);
			list_rpay.add(vo);
			System.out.println("회차 : "+i+"	납입 원금 : " + rpay_month + "	대출 이자 : " + rate + "	월 상환금 : " + rpay+"대출잔금 : " + total);
		}
		return list_rpay;
	}
}
