package scienceClass.com.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import scienceClass.com.admin.dao.AdminDAO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{ 
	@Resource(name="adminDAO")
	private AdminDAO adminDAO;
	
	public List<Map<String, String>> selectMainImgList() {
		return adminDAO.selectMainImgList();
	}
	
	public int lottoListCnt() {
		return adminDAO.lottoListCnt();
	}

	public void insterlotto(HashMap<String, Integer> newLottoList) throws Exception {
		adminDAO.insterlotto(newLottoList);
	}

	public void increaseOverlap(HashMap<String, Integer> newLottoList) throws Exception {
		adminDAO.increaseOverlap(newLottoList);
		
	}

	public int selectLottoOverCheck(HashMap<String, Integer> newLottoList) throws Exception {
		return adminDAO.selectLottoOverCheck(newLottoList);
	}
}
