package domain;
 
/**
 * 用户类 把数据用类对象展示
 * 相当于JavaBean
 */
public class User {
    String H_name;
    String H_province;
    String H_city;
    String H_disease;
    public User(String H_name,String H_province, String H_city,String H_disease) {
    	H_name = this.H_name;
    	H_province = this.H_province;
    	H_city = this.H_city;
    	H_disease = this.H_disease;
    }
    public User() {
    	
    }
	public String getH_name() {
		return H_name;
	}
	public void setH_name(String h_name) {
		H_name = h_name;
	}
	public String getH_province() {
		return H_province;
	}
	public void setH_province(String h_province) {
		H_province = h_province;
	}
	public String getH_city() {
		return H_city;
	}
	public void setH_city(String h_city) {
		H_city = h_city;
	}
	public String getH_disease() {
		return H_disease;
	}
	public void setH_disease(String h_disease) {
		H_disease = h_disease;
	} 
	public static void main(String[] args) {
		System.out.println(1);
	}
}