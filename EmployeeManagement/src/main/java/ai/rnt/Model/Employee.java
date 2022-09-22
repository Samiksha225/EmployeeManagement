package ai.rnt.Model;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;

	@Entity
	public class Employee {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;
		private String name;
		private String emailId;
		private Long mobileNumber;
		private String dateofbirth;
		private String gender;
		private String address;

		public Employee() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Employee(Long id, String name, String emailId, Long mobileNumber, String dateofbirth, String gender,
				String address) {
			super();
			this.id = id;
			this.name = name;
			this.emailId = emailId;
			this.mobileNumber = mobileNumber;
			this.dateofbirth = dateofbirth;
			this.gender = gender;
			this.address = address;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEmailId() {
			return emailId;
		}

		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}

		public Long getMobileNumber() {
			return mobileNumber;
		}

		public void setMobileNumber(Long mobileNumber) {
			this.mobileNumber = mobileNumber;
		}

		public String getDateofbirth() {
			return dateofbirth;
		}

		public void setDateofbirth(String dateofbirth) {
			this.dateofbirth = dateofbirth;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		@Override
		public String toString() {
			return "Employee [id=" + id + ", name=" + name + ", emailId=" + emailId + ", mobileNumber=" + mobileNumber
					+ ", dateofbirth=" + dateofbirth + ", gender=" + gender + ", address=" + address + "]";
		}

}
