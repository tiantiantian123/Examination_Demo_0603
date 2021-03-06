package demo.controller;

import demo.model.Admin;
import demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/3.
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController{
    @Autowired
    private AdminService adminService;

    @RequestMapping("/login")
    private String login(Admin admin) {
        admin = adminService.login(admin);
        if (admin != null) {
            session.setAttribute("admin", admin);
            return "redirect:/admin/admin.jsp";
        } else {
            request.setAttribute("message", "invalid email or password!");
            return "/admin/index";
        }
    }
}
