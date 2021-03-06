package scienceClass.com.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface AdminService {
	public List<Map<String, String>> selectMainImgList() throws Exception;
	public int lottoListCnt() throws Exception;
	public void insterlotto(HashMap<String, Integer> newLottoList) throws Exception;
	public void increaseOverlap(HashMap<String, Integer> newLottoList) throws Exception;
	public int selectLottoOverCheck(HashMap<String, Integer> newLottoList)throws Exception;
}
