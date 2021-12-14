// 2021/12/10 9:35

package com.pininkara.controller;

import com.pininkara.pojo.Student;
import com.pininkara.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    @Qualifier("studentServiceImpl")
    private StudentService studentService;

    @RequestMapping("*")
    public String notFound(){
        return "404";
    }

    @RequestMapping("/toLogin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/stu")
    public String toMain() {
        return "stu";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, String id, String pwd, Model model) {
        if (id.equals("admin") || pwd.equals("admin")) {
            session.setAttribute("id", id);
            List<Student> studentList = studentService.queryAllStudent();
            model.addAttribute("studentList", studentList);
            return "allStu";
        }
        if (!("stu" + id).equals(pwd)) {
            model.addAttribute("error","账号或密码错误");
            return "login";
        }
        session.setAttribute("id", id);
        Student student=studentService.queryStudentById(Integer.parseInt(id));
        model.addAttribute("student",student);
        return "stu";
    }

    @RequestMapping("/goOut")
    public String goOut(HttpSession session) {
        session.removeAttribute("id");
        return "redirect:toLogin";
    }

    @RequestMapping("/toUpdateStudent")
    public String toUpdateStu(int id,Model model){
        Student student=studentService.queryStudentById(id);
        model.addAttribute("student",student);
        return "updateStudent";
    }

    @RequestMapping("/updateStudent")
    public String upDateStu(Student student,Model model){
        studentService.updateStudent(student);
        model.addAttribute("student",student);
        return "stu";
    }

    @RequestMapping("/toCharge")
    public String toCharge(int id,Model model){
        Student student=studentService.queryStudentById(id);
        System.out.println("ToCharge=>"+student);
        model.addAttribute("student",student);
        return "stuCharge";
    }

    @RequestMapping("/stuCharge")
    public String stuCharge(Student student,Model model){
        student.setBalance(student.getBalance()+student.getCharge());
        System.out.println("StuCharge=>"+student);
        studentService.updateStudent(student);
        model.addAttribute("student",student);
        return "stu";
    }

}
