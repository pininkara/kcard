// 2021/12/8 14:26

import com.pininkara.pojo.Student;
import com.pininkara.service.StudentService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        StudentService studentService = context.getBean("studentServiceImpl", StudentService.class);
        for (Student student : studentService.queryAllStudent()) {
            System.out.println(student);
        }
    }
}
