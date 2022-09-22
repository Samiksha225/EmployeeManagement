package ai.rnt.ServiceImp;

	import java.util.List;
	import java.util.Optional;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;

	import ai.rnt.Model.Employee;
	import ai.rnt.Service.EmployeeRepository;

	@Service
	public class EmployeeService {
		@Autowired
		private EmployeeRepository repo;

		public List<Employee> listAll() {
			return (List<Employee>) repo.findAll();
		}
		public void save(Employee employee) {
			repo.save(employee);
		}
		public Employee get(long id) {
			Optional<Employee> result =  repo.findById(id);
			return result.get();
		}
		public void delete(long id) {
			repo.deleteById(id);
		}
		public List<Employee> search(String keyword){
			return repo.search(keyword);
		}
	}
