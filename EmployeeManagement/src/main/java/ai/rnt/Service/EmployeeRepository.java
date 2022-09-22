package ai.rnt.Service;

	import java.util.List;

	import org.springframework.data.jpa.repository.Query;
	import org.springframework.data.repository.CrudRepository;
	import org.springframework.data.repository.query.Param;

	import ai.rnt.Model.Employee;

	public interface EmployeeRepository extends CrudRepository<Employee, Long> {

//		List<Employee> findAll();

		@Query(value = "SELECT e FROM Employee e WHERE e.name LIKE '%' || :keyword || '%'"
				+ "OR e.emailId LIKE '%' || :keyword || '%'" + "OR e.mobileNumber LIKE '%' || :keyword || '%'"
				+ "OR e.dateofbirth LIKE '%' || :keyword || '%'" + "OR e.gender LIKE '%' || :keyword || '%'"
				+ "OR e.address LIKE '%' || :keyword || '%'")
		public List<Employee> search(@Param("keyword") String keyword);
	}
