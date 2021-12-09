// 2021/12/7 9:48
package com.pininkara.service;

import com.pininkara.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentService {
    //增
    int addStudent(Student student);

    //删
    int deleteStudentById(int id);

    //改
    int updateStudent(Student student);

    //查一个
    Student queryStudentById(int id);

    //查全部
    List<Student> queryAllStudent();
}
