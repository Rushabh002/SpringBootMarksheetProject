package springMarksheet.Entities;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
public class Courses {
    @Id
    private int courseId;
    private String courseName;
@OneToOne(mappedBy = "courses", cascade = CascadeType.ALL)
    private Teachers teachers;

    public Courses(int courseId, String courseName, Teachers teachers) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.teachers = teachers;
    }

    public Courses() {
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Teachers getTeachers() {
        return teachers;
    }

    public void setTeachers(Teachers teachers) {
        this.teachers = teachers;
    }
}
