package springMarksheet.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import springMarksheet.Entities.Student;

public interface StudentRepository extends JpaRepository<Student,Integer> {
}
