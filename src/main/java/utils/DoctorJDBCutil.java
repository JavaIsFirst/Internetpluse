package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.eclipse.jdt.internal.compiler.batch.Main;

import com.mysql.cj.protocol.Resultset;

public class DoctorJDBCutil {
	private static Connection conn = null;
	
	private static String Name = "root";
	private static String password = "123456";
	private static String URL = "jdbc:mysql://localhost:3306/data?serverTimezone=UTC";
	
	private static String Dname = "com.mysql.cj.jdbc.Driver";
	private static PreparedStatement prs = null;
	private static ResultSet rs = null;
	private static Statement stat = null;
	public static Connection getConn(){
		try {
			Class.forName(Dname);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			conn = DriverManager.getConnection(URL,Name,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	public static ResultSet query(String sql) {
		rs = null;
		conn = getConn();
		try {
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public static void main(String[] args) {
		long totalMemory = Runtime.getRuntime().totalMemory();    //有效内存
		long maxMemory = Runtime.getRuntime().maxMemory();        //最大内存;
		System.out.println(totalMemory+" "+ maxMemory);
	}
}
