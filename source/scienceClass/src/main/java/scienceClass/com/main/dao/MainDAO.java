package scienceClass.com.main.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("mainDAO")
public class MainDAO extends EgovComAbstractDAO {
	
	public List<String> selectImgName() throws Exception{
		return selectList("mainDAO.selectImgName");
	};
}
