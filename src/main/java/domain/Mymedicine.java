package domain;

public class Mymedicine {
	int id;
	String M_name;
	String M_disease;
	String M_piece;
	public Mymedicine(int id, String m_name, String m_disease, String m_piece) {
		super();
		this.id = id;
		M_name = m_name;
		M_disease = m_disease;
		M_piece = m_piece;
	}
	public Mymedicine(){
		
	}
	public int getId(){
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getM_name() {
		return M_name;
	}
	public void setM_name(String m_name) {
		M_name = m_name;
	}
	public String getM_disease() {
		return M_disease;
	}
	public void setM_disease(String m_disease) {
		M_disease = m_disease;
	}
	public String getM_piece() {
		return M_piece;
	}
	public void setM_piece(String m_piece) {
		M_piece = m_piece;
	}
	@Override
	public String toString() {
		return "Medicine [id=" + id + ", M_name=" + M_name + ", M_disease=" + M_disease + ", M_piece=" + M_piece + "]";
	}
}
