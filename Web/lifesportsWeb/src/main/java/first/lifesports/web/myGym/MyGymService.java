package first.lifesports.web.myGym;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import first.lifesports.dao.MyGymDAO;

@Service("MyGymService")
public class MyGymService{
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Resource(name = "mygymDAO")
	private MyGymDAO mygymDAO;

	public List<Map<String, Object>> selectUser(Map<String, Object> map) {
		try {
			return mygymDAO.selectBoardList(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Map<String, Object>> testMethod(Map<String, Object> map) {
		try {
			return mygymDAO.testCall(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}