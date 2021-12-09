// 2021/12/7 9:19
package com.pininkara.dao;

import com.pininkara.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    //增
    int addStudent(Student student);

    //删
    int deleteStudentById(@Param("id") int id);

    //改
    int updateStudent(Student student);

    //查一个
    Student queryStudentById(@Param("id")int id);

    //查全部
    List<Student> queryAllStudent();
}
