package springMarksheet.Entities;

public class Course_Teacher_Request {

    private int id;
    private String coursename;
    private String teacherName;

    public Course_Teacher_Request(int id, String coursename, String teacherName) {
        this.id = id;
        this.coursename = coursename;
        this.teacherName = teacherName;
    }

    public Course_Teacher_Request() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }
}
