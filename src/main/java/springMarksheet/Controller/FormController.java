package springMarksheet.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import springMarksheet.Entities.*;
import springMarksheet.Services.CourseRepository;
import springMarksheet.Services.MarksheetRepository;
import springMarksheet.Services.StudentRepository;
import springMarksheet.Services.TeacherRepository;

import java.util.List;

import static org.antlr.v4.runtime.tree.xpath.XPath.findAll;

@Controller
public class FormController {
    @Autowired
   StudentRepository studentRepo;
   @Autowired
   MarksheetRepository marksheetRepo;
   @Autowired
   CourseRepository courseRepository;
   @Autowired
   TeacherRepository teacherRepository;
    @RequestMapping("/")
    public String home(){

        return "view";
    }

    @RequestMapping("/add")
    public String add(){

        return "addview";
    }
    @RequestMapping("/savestudentdetails")
    public String store(@ModelAttribute Student student, @ModelAttribute Marksheet marksheet){

        marksheet.setStudent(student);
        student.setMarksheet(marksheet);
        studentRepo.save(student);

        System.out.println("TEST");
        return "save";
    }
    @RequestMapping("/del")
    public String del(){

        System.out.println("DELETE");
        return "del";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("rollNo") int roll){
        studentRepo.deleteById(roll);
        System.out.println("NEW");
        System.out.println("new new");
        return "delete";
    }

    @RequestMapping("/upStudent")
    public String up(){

        return "upStudent";
    }
    @RequestMapping("/updateStudent")
    public String update(@ModelAttribute StudentRequest s){

       Student s1 = studentRepo.findById(s.getRolNo()).get();
        s1.setName(s.getName());
        s1.setAge(s.getAge());
        s1.setStandard(s.getStandard());
        studentRepo.save(s1);

        return "updateStudent";
    }
    @RequestMapping("/upMarksheet")
    public String upMark(){

        return "upMarksheet";
    }
    @RequestMapping("/updateMarksheet")
    public String updateMArk(@ModelAttribute MarksheetRequest m){

        Marksheet m1 = marksheetRepo.findById(m.getRollNo()).get();

        m1.setPhysics(m.getPhysics());
        m1.setChemistry(m.getChemistry());
        m1.setMaths(m.getMaths());
        m1.setEnglish(m.getEnglish());

        marksheetRepo.save(m1);

        return "updateMarksheet";
    }

    @RequestMapping("/viewmark")
    public String viewmark(){

        return "viewmark";
    }

    @RequestMapping("/viewmarksheet")
    public String viewmarksheet(@RequestParam("rollNo") int roll, Model model){

        Student student= studentRepo.findById(roll).get();
        Marksheet marksheet = marksheetRepo.findById(roll).get();
        model.addAttribute("student",student);
        model.addAttribute("marksheet",marksheet);
        return "viewmarksheet";
    }

    @RequestMapping("/viewstudent")
    public String viewstudent(Model model){

        List<Student> list= studentRepo.findAll();
        model.addAttribute("list",list);
        return "viewstudent";
    }

    @RequestMapping("/addcourse")
    public String addcourseteacher(){

        return "addcourse";
    }
    @RequestMapping("/addedcourseteacher")
    public String addedcourseteacher(@ModelAttribute Courses courses,@ModelAttribute Teachers teachers){

        teachers.setCourses(courses);
        courses.setTeachers(teachers);
        courseRepository.save(courses);
        return "addedcourseteacher";
    }

    @RequestMapping("/upCourse")
    public String upCourse(){

        return "upCourse";
    }
    @RequestMapping("/updatecourse")
    public String updateCourse(@ModelAttribute Course_Teacher_Request courseTeacherRequest){
       Courses courses = courseRepository.findById(courseTeacherRequest.getId()).get();
       Teachers teachers= teacherRepository.findById(courseTeacherRequest.getId()).get();

       courses.setCourseName(courseTeacherRequest.getCoursename());
       teachers.setTeacherName(courseTeacherRequest.getTeacherName());

       courseRepository.save(courses);
       teacherRepository.save(teachers);
        return "updatecourse";
    }
    @RequestMapping("/viewcourse")
    public String viewcourse(Model model){

        List<Courses> courselist =courseRepository.findAll();
        List<Teachers> teacherList = teacherRepository.findAll();
        model.addAttribute("courselist",courselist);
        model.addAttribute("teacherlist",teacherList);

        return "viewcourse";
    }

    @RequestMapping("/about")
    public String aboutpage(){

        return "about";
    }
}
