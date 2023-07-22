package view;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Mymedicine;
import domain.User;
import service.UserServiceImp;

/**
 * Servlet implementation class MedicineServlet
 */
@WebServlet("/MedicineServlet")
public class MedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicineServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        
        String Name = request.getParameter("M_Name");
        
    	//用service层来完成数据库的查询
        UserServiceImp usersservice = new UserServiceImp();
        
        List<Mymedicine> list = usersservice.findMessage(Name);
        //将数据存在数据域中
        //System.out.println(list.get(0));
        
        request.setAttribute("list",list);
        request.setAttribute("name", Name);
        request.setAttribute("diseaseName",list.get(0).getM_disease());
        request.setAttribute("piece",list.get(0).getM_piece());
        //转发到list.jsp中
        request.getRequestDispatcher("/show1.jsp").forward(request,response);
	}

}
