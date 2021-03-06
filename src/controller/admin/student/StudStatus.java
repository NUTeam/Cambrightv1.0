package controller.admin.student;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.StudentDAO;

/**
 * Servlet implementation class StudStatus
 */
@WebServlet("/StudStatus")
public class StudStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String stud_id=request.getParameter("student_id");
			String status=request.getParameter("status");
			boolean check = false;
			if(status.equals("t") || status.equals("f")){
				check=new StudentDAO().checkStatus(stud_id, status);
			}
			if(check==true){
				response.getWriter().write("true");
			}else{
				response.getWriter().write("false");
			}
		}catch(Exception e){e.printStackTrace();}
	}

}
