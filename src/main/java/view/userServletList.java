package view;

import domain.Doctor;
import domain.User;
import service.UserService;
import service.UserServiceImp;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class userSerletList
 */
@WebServlet("/userServletList")
public class userServletList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userServletList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        
        UserServiceImp us = new UserServiceImp();
        List<Doctor> dolist = us.finddoc();
        
    	//用service层来完成数据库的查询
        UserServiceImp usersservice = new UserServiceImp();
        List<User> list = usersservice.findAll();
        //将数据存在数据域中
        //System.out.println(list.get(0));
        
        request.setAttribute("list",list);
        request.setAttribute("doclist", dolist);
        //转发到list.jsp中
        request.getRequestDispatcher("/show.jsp").forward(request,response);
 
    }
 

}
