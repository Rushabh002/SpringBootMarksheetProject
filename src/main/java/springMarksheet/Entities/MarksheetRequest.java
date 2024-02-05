package springMarksheet.Entities;

public class MarksheetRequest {

    private int rollNo;
    private int physics;
    private int chemistry;
    private int maths;
    private int english;

    public MarksheetRequest(int rollNo, int physics, int chemistry, int maths, int english) {
        this.rollNo = rollNo;
        this.physics = physics;
        this.chemistry = chemistry;
        this.maths = maths;
        this.english = english;
    }

    public int getRollNo() {
        return rollNo;
    }

    public void setRollNo(int rollNo) {
        this.rollNo = rollNo;
    }

    public int getPhysics() {
        return physics;
    }

    public void setPhysics(int physics) {
        this.physics = physics;
    }

    public int getChemistry() {
        return chemistry;
    }

    public void setChemistry(int chemistry) {
        this.chemistry = chemistry;
    }

    public int getMaths() {
        return maths;
    }

    public void setMaths(int maths) {
        this.maths = maths;
    }

    public int getEnglish() {
        return english;
    }

    public void setEnglish(int english) {
        this.english = english;
    }

    public MarksheetRequest() {
    }
}
