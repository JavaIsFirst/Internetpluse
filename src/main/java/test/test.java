package test;

import java.util.ArrayList;
import java.util.List;

import domain.User;
import service.UserServiceImp;

public class test {
	public static void main(String[] args) {
		UserServiceImp imp = new UserServiceImp();
		List<User> list = imp.findAll();
		for(User us:list) {
			System.out.println(us.toString());
		}	
	}
	
}
