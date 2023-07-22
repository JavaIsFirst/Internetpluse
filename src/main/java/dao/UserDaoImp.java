package dao;
 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.Doctor;
import domain.Mymedicine;
import domain.User;
import utils.DoctorJDBCutil;
 
/**
 * dao层 操纵数据
 * 从数据库中拿出数据 传给servive层
 */
public class UserDaoImp implements UserDao {

	@Override
	public List<User> findAll() {
		List<User> list = new ArrayList<>();
		// TODO Auto-generated method stub
		String sql = "select * from hospital";
		ResultSet rs = null;
		rs = DoctorJDBCutil.query(sql);
		try {
			while(rs.next()) {
				User us = new User();
				us.setH_name(rs.getString("H_name"));
				us.setH_province(rs.getString("H_province"));
				us.setH_city(rs.getString("H_city"));
				us.setH_disease(rs.getString("H_disease"));
				list.add(us);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public List<Doctor> finddoc() {
		List<Doctor> list = new ArrayList<>();
		// TODO Auto-generated method stub
		String sql = "select * from dcotor";
		ResultSet rs = null;
		rs = DoctorJDBCutil.query(sql);
		try {
			while(rs.next()) {
				Doctor us = new Doctor();
				us.setHospital(rs.getString("HospitalName"));
				us.setName(rs.getString("doctor"));
				us.setDisease(rs.getString("disease"));
				list.add(us);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public List<User> selectByCondition(String province ,String diseaseName) {
		List<User> list = new ArrayList<>();
		// TODO Auto-generated method stub
		String sql = "select * from hospital where 1 = 1";
		province = province.trim();
		diseaseName = diseaseName.trim();
		if (province!=null&&province.length()>0){
            sql+=" and H_province = '";
            for(char ch:province.toCharArray()) {
            	sql+=ch;
            }
            sql = sql + "'";
        }
        if(diseaseName!=null&&diseaseName.length()>0){
            sql+=" and H_disease = '";
            for(char ch:diseaseName.toCharArray()){
            	sql+=ch;
            }
            sql = sql + "'";				
        }
		ResultSet rs = null;
		rs = DoctorJDBCutil.query(sql);
		try {
			while(rs.next()) {
				User us = new User();
				us.setH_name(rs.getString("H_name"));
				us.setH_province(rs.getString("H_province"));
				us.setH_city(rs.getString("H_city"));
				us.setH_disease(rs.getString("H_disease"));
				list.add(us);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
    }
	public List<Mymedicine> findMessage(String name) {
		List<Mymedicine> list = new ArrayList<>();
		// TODO Auto-generated method stub
		String sql = "select * from medicine where 1 = 1";
		if(name!=null&&name.length()>0){
            sql+=" and M_name = '";
            for(char ch:name.toCharArray()) {
            	sql+=ch;
            }
            sql = sql + "'";
        }
		System.out.println(sql);
		ResultSet rs = null;
		rs = DoctorJDBCutil.query(sql);
		try {
			while(rs.next()) {
				Mymedicine us = new Mymedicine();
				us.setId(rs.getInt("id"));
				us.setM_name(rs.getString("M_name"));
				us.setM_disease(rs.getString("M_disease"));
				us.setM_piece(rs.getString("M_piece"));
				list.add(us);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static void main(String[] args) {
		UserDaoImp imp = new UserDaoImp();
		List<Mymedicine> userlist = imp.findMessage("感冒灵");
		for(int i = 0;i<userlist.size();i++) {
			System.out.println(userlist.get(i).getM_disease());
		}
	}
}