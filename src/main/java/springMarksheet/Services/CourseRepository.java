package springMarksheet.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import springMarksheet.Entities.Courses;

public interface CourseRepository extends JpaRepository<Courses,Integer> {
}
