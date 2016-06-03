package demo.controller;

import demo.model.Staff;
import demo.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/3.
 */
@Controller
@RequestMapping("/staff")
public class StaffController extends BaseController{
    @Autowired
    private StaffService staffService;

    @RequestMapping("/login")
    private String login(Staff staff) {
        staff = staffService.login(staff);
        if (staff != null) {
            session.setAttribute("staff", staff);
            return "redirect:/staff/index.jsp";
        } else {
            request.setAttribute("message", "invalid email or password!");
            return "/admin/index";
        }
    }
}
