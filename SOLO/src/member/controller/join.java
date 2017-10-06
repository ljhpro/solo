package member.controller;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.model.addmember;


@Controller
public class join {
	@Autowired
	addmember addmember;

	@RequestMapping(value= "/joinmember")
	@ResponseBody
	public String Memberjoin(String id,String pw,String name,String phone,String birth) {
		HashMap jMember= new HashMap();
		System.out.println(id);
		jMember.put("id",id);
		jMember.put("pw",pw);
		jMember.put("name",name);
		jMember.put("phone",phone);
		jMember.put("birth",birth);
		boolean e =addmember.addmember(jMember);
		if(!e){
			return "YYYY";
		}
		return "NNNN";
		
	}
}
