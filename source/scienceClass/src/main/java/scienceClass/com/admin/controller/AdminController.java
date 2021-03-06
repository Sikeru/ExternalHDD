package scienceClass.com.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import scienceClass.com.admin.service.AdminService;

@Controller("AdminController")
public class AdminController {
	@Resource(name = "adminService")
	private AdminService adminService;

	@RequestMapping(value = "/admin/sliderList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String sliderList(Model model) throws Exception {
		List<Map<String, String>> mainImgList = adminService.selectMainImgList();
		model.addAttribute("mainImgList", mainImgList);
		return "/admin/sliderList";
	}

	@RequestMapping(value = "/admin/sliderRegist.do", method = RequestMethod.GET)
	public String sliderRegView(Model model) throws Exception {
		return "/admin/sliderRegist";
	}

	@RequestMapping(value = "/admin/sliderAdd.do", method = RequestMethod.POST)
	public String sliderAdd(Model model, @RequestParam HashMap<String, Integer> slider) throws Exception {

		System.out.println(slider.get("imageNm"));
		return "/admin/sliderList";
	}

	@RequestMapping(value = "/admin/lotto.do", method = RequestMethod.GET)
	public String lotto() throws Exception {
		return "/admin/lotto";
	}

	@RequestMapping(value = "/admin/lottoAdd.do", method = RequestMethod.POST)
	public String lottoAdd(Model model, HttpServletRequest request, @RequestParam HashMap<String, Integer> newLottoList)
			throws Exception {
		long lottoListCnt = adminService.lottoListCnt();
		int lottoOverCheck = 0;
		
		
		if (lottoListCnt > 0) {
			lottoOverCheck = adminService.selectLottoOverCheck(newLottoList);
			if(lottoOverCheck>0) {
				adminService.increaseOverlap(newLottoList);
				model.addAttribute("Count", lottoListCnt+1);
			}else {
				adminService.insterlotto(newLottoList);
				model.addAttribute("Count", lottoListCnt+1);
			}
		}else {
			adminService.insterlotto(newLottoList);
			model.addAttribute("Count", lottoListCnt+1);
		}
		
		if(lottoListCnt>8145060) {
			return "/admin/sliderList";
		}else {
			return "/admin/lotto";
		}
		
	}

}
