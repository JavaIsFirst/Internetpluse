<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="gb2312"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
  </head>
  <body>
    	<%
    		//1.��������
    		Class.forName("com.mysql.jdbc.Driver");
    		//2.��������
    		Connection conn = 
    		DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8",
    		"root","root");
    		//3.ʹ��statement����һ���Ự������SQL���
    		Statement stat = conn.createStatement();
    		//����SQL��䣬������д���ǣ�����ƽ���Ա��޸ĳ�nv
    		String sql = "update t_student set stusex='Ů' where stuno='0007'";
    		//4.����ѯ�Ľ�����ع���������ʹ�õ����޸���䣬���صĽ����һ��������ֵ
    		int i = stat.executeUpdate(sql);
    		//��ӡ�����ҳ��
    		out.print("�ɹ��޸�"+i+"��");
    		//5.�ر�����
    		stat.close();
    		conn.close();
    	 %>
  </body>
</html>
