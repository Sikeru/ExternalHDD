package scienceClass.com.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("adminDAO")
public class AdminDAO extends EgovComAbstractDAO{

	public List<Map<String, String>> selectMainImgList() {
		return selectList("selectMainImgList");
	}

	public int lottoListCnt() {
		return selectOne("lottoListCnt", "Interge");
	}

	public void insterlotto(HashMap<String, Integer> newLottoList) {
		insert("insterlotto", newLottoList);
	}

	public void increaseOverlap(HashMap<String, Integer> newLottoList) {
		update("increaseOverlap", newLottoList);
	}

	public int selectLottoOverCheck(HashMap<String, Integer> newLottoList) {
		return selectOne("selectLottoOverCheck", newLottoList);
	}
}
