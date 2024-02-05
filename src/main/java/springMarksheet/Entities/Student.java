package springMarksheet.Entities;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
public class Student {
    @Id
    private int rollNo;
    private String name;
    private int age;
    private int standard;
    @OneToOne(mappedBy = "student", cascade = CascadeType.ALL)
    private Marksheet marksheet;

    public Student(int rollNo, String name, int age, int standard, Marksheet marksheet) {
        this.rollNo = rollNo;
        this.name = name;
        this.age = age;
        this.standard = standard;
        this.marksheet = marksheet;
    }

    public Student() {
    }

    public int getRollNo() {
        return rollNo;
    }

    public void setRollNo(int rollNo) {
        this.rollNo = rollNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getStandard() {
        return standard;
    }

    public void setStandard(int standard) {
        this.standard = standard;
    }

    public Marksheet getMarksheet() {
        return marksheet;
    }

    public void setMarksheet(Marksheet marksheet) {
        this.marksheet = marksheet;
    }

    @Override
    public String toString() {
        return "Student{" +
                "rollNo=" + rollNo +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", standard=" + standard +
                ", marksheet=" + marksheet +
                '}';
    }
}

