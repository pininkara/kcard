// 2021/12/8 14:02

package com.pininkara.controller;

import com.pininkara.pojo.Student;
import com.pininkara.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/stu")
public class StudentController {
    //controller调service层
    @Autowired
    @Qualifier("studentServiceImpl")
    private StudentService studentService;


    //查询全部书籍
    @RequestMapping("/allStu")
    public String list(Model model){
        List<Student> studentList = studentService.queryAllStudent();
        model.addAttribute("studentList",studentList);
        return "allStu";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddStu")
    public String toAddPage(){
        return "addStu";
    }


    //添加学生的请求
    @RequestMapping("/addStu")
    public String addStu(Student student){
        System.out.println("AddStu=>"+student);
        studentService.addStudent(student);
        return "redirect:/stu/allStu";//重定向到@RequestMapping("/allStu")请求
    }

    //跳转到修改页面
    @RequestMapping("/toUpdateStu")
    public String toUpdatePage(int id,Model model){
        Student student = studentService.queryStudentById(id);
        model.addAttribute("student",student);
        return "updateStu";
    }


    //修改学生
    @RequestMapping("/updateStu")
    public String updateStu(Student student){
        System.out.println("updateStu=>"+student);
        studentService.updateStudent(student);
        return "redirect:/stu/allStu";
    }

}
