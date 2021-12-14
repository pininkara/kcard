// 2021/12/8 14:02

package com.pininkara.controller;

import com.pininkara.pojo.Student;
import com.pininkara.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/adm")
public class StudentController {
    //controller调service层
    @Autowired
    @Qualifier("studentServiceImpl")
    private StudentService studentService;


    //查询全部学生
    @RequestMapping("/allStu")
    public String list(Model model) {
        List<Student> studentList = studentService.queryAllStudent();
        model.addAttribute("studentList", studentList);
        return "allStu";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddStu")
    public String toAddPage() {
        return "addStu";
    }


    //添加学生的请求
    @RequestMapping("/addStu")
    public String addStu(Student student) {
        System.out.println("AddStu=>" + student);
        studentService.addStudent(student);
        return "redirect:/adm/allStu";//重定向到@RequestMapping("/allStu")请求
    }

    //跳转到修改页面
    @RequestMapping("/toUpdateStu")
    public String toUpdatePage(int id, Model model) {
        Student student = studentService.queryStudentById(id);
        model.addAttribute("student", student);
        return "updateStu";
    }


    //修改学生
    @RequestMapping("/updateStu")
    public String updateStu(Student student) {
        System.out.println("updateStu=>" + student);
        studentService.updateStudent(student);
        return "redirect:/adm/allStu";
    }

    //删除学生
    @RequestMapping("/deleteStu/{id}")
    public String deleteStu(@PathVariable("id") int id) {
        studentService.deleteStudentById(id);
        return "redirect:/adm/allStu";
    }


    //查询学生
    @RequestMapping("/queryStu")
    public String queryStu(String queryName, Model model) {
        Student student = studentService.queryStudentByName(queryName);
        List<Student> studentList = new ArrayList<>();
        studentList.add(student);
        if (student == null) {
            studentList=studentService.queryAllStudent();
            model.addAttribute("error","未找到相关学生");
        }
        model.addAttribute("studentList", studentList);
        return "allStu";
    }

}
