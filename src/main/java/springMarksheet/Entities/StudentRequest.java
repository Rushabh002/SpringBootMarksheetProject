package springMarksheet.Entities;

public class StudentRequest {

    private int rolNo;
    private String name;
    private int age;
    private int standard;

    public StudentRequest(int rolNo, String name, int age, int standard) {
        this.rolNo = rolNo;
        this.name = name;
        this.age = age;
        this.standard = standard;
    }

    public StudentRequest() {
    }

    public int getRolNo() {
        return rolNo;
    }

    public void setRolNo(int rolNo) {
        this.rolNo = rolNo;
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

}
