package service;
 
import java.util.List;

import dao.UserDaoImp;
import domain.Doctor;
import domain.Mymedicine;
import domain.User;
 
/**
 * 调用dao层中Usersdao中方法 获得数据库中的数据
 */
public class UserServiceImp implements UserService {
    @Override
    public List<User> findAll() {
        UserDaoImp dao = new UserDaoImp();
        List<User> users_list = dao.findAll();
        return users_list;
    }
 // 调用UserDao对象中的方法 ,
    
    // 根据条件查询数据.
    public List<User> selectByCondition(String address, String diseaseName) {
    	UserDaoImp ud = new UserDaoImp();
        return ud.selectByCondition(address,diseaseName);
    }
    
    public List<Mymedicine> findMessage(String name){
    	UserDaoImp ud = new UserDaoImp();
        return ud.findMessage(name);
    }
    public List<Doctor> finddoc(){
    	UserDaoImp ud = new UserDaoImp();
    	return ud.finddoc();
    }
    
    public static void main(String[] args){
    	UserServiceImp imp = new UserServiceImp();
		List<Doctor> userlist = imp.finddoc();
		for(int i = 0;i<userlist.size();i++) {
			System.out.println(userlist.get(i).getName());
		}
	}
}