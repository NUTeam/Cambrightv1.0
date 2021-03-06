package controller.admin.classes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ClassesDAO;
import model.dto.ClassDTO;
import model.dto.UserDTO;

/**
 * Servlet implementation class ClassCreate
 */
@WebServlet("/ClassCreate")
public class ClassCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassCreate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			int user_level=((UserDTO)(request.getSession().getAttribute("adminsession"))).getUser_level();
			
			ClassDTO clas=new ClassDTO();
			clas.setClass_title(request.getParameter("class_title"));
			clas.setClass_color(request.getParameter("class_color"));
			clas.setSub_prog_id(request.getParameter("sub_prog_id"));
			response.setContentType("text/plain");
			
			if(new ClassesDAO().createClass(clas)==true){
				response.getWriter().write("true");
			}else{
				response.getWriter().write("false");
			}
			
		}catch(Exception e){e.printStackTrace();}
	}

}
