package domain;

public class Doctor {
	String hospital;
	String name ;
	String disease;
	
	public Doctor() {
		super();
	}
	public Doctor(String hospital, String name, String disease) {
		super();
		this.hospital = hospital;
		this.name = name;
		this.disease = disease;
	}
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	
	
}
