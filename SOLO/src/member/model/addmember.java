package member.model;
import java.util.HashMap;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class addmember {
	@Autowired
	SqlSessionFactory fac;
	public boolean addmember(HashMap jMember) {
		SqlSession sql = fac.openSession();
		
		System.out.println(jMember.get("id"));
		int upcute = sql.update("member_info.memberUp");
		int excute = sql.insert("member_info.addMember", jMember);
		sql.close();
		if(excute == 1) {
			return true;
		}else {
			return false;
		}
	}
}
