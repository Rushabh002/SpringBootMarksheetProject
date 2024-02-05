package springMarksheet.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import springMarksheet.Entities.Marksheet;

public interface MarksheetRepository extends JpaRepository<Marksheet,Integer> {
}
