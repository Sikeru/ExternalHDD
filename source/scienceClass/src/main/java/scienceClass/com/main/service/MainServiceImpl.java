package scienceClass.com.main.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import scienceClass.com.main.dao.MainDAO;

@Service("mainService")
public class MainServiceImpl implements MainService{
	@Resource(name="mainDAO")
	private MainDAO mainDAO;
	
	public List<Map<String, String>> selectImgName() throws Exception{
		return mainDAO.selectImgName();
	}
	
	public void test() {
	}
}
