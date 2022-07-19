package scienceClass.com.main.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("mainDAO")
public class MainDAO extends EgovComAbstractDAO {
	
	public List<Map<String, String>> selectImgName() throws Exception{
		return selectList("mainDAO.selectImgName");
	};
}
