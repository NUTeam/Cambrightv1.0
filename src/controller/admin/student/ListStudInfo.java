package controller.admin.student;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.StudentDAO;
import model.dto.ListStudInfoDTO;
import model.dto.UserDTO;

import com.google.gson.Gson;

/**
 * Servlet implementation class ListStudInfo
 */
@WebServlet("/ListStudInfo")
public class ListStudInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListStudInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String branch_id=null;
			int user_level=((UserDTO)(request.getSession().getAttribute("adminsession"))).getUser_level();
			
			if(user_level==0){
				branch_id=request.getParameter("branch_id");			
			}else{
				branch_id=((UserDTO)(request.getSession().getAttribute("adminsession"))).getBranch_id();
			}
			ArrayList<ListStudInfoDTO> list = new StudentDAO().listStudInfo(branch_id);
			String json = new Gson().toJson(list);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/json");
			response.getWriter().write(json);
			
		}catch(Exception e){e.printStackTrace();}
	}

}
