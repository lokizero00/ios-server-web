package com.loki.server.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.loki.server.entity.TradeComplex;
import com.loki.server.service.TradeService;
import com.loki.server.vo.ServiceResult;

@Controller
@RequestMapping("/api/common")
public class CommonMobileController extends BaseController{
	@Autowired TradeService tradeService;
	
	//获取单个贸易,游客身份
	@RequestMapping(value="/showTrade",method=RequestMethod.GET)
	@ResponseBody
	public String getTrade(HttpServletRequest request, Integer tradeId) {
		try {
			ServiceResult<TradeComplex> returnValue=tradeService.getTrade_mobile(tradeId,0);
//		if (returnValue!=null) {
//			mm.addAttribute("resultCode", returnValue.getResultCode().getCode());
//			mm.addAttribute("msg", returnValue.getResultCode().getMessage());
//			mm.addAttribute("resultObj", returnValue.getResultObj());
//		}else {
//			mm.addAttribute("resultCode", ResultCodeEnums.UNKNOW_ERROR.getCode());
//			mm.addAttribute("msg", ResultCodeEnums.UNKNOW_ERROR.getMessage());
//		}
			
			return responseSuccess(returnValue);
		}catch(Exception e) {
			e.printStackTrace();
			return responseFail(e.getMessage());
		}
	}
}