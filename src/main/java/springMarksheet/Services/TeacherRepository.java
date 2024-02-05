package springMarksheet.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import springMarksheet.Entities.Teachers;

public interface TeacherRepository extends JpaRepository<Teachers,Integer> {
}
