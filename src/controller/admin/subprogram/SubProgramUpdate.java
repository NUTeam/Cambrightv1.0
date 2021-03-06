package controller.admin.subprogram;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.SubProgramDAO;
import model.dto.SubProgCreateDTO;
import model.dto.UserDTO;

/**
 * Servlet implementation class SubProgramUpdate
 */
@WebServlet("/SubProgramUpdate")
public class SubProgramUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubProgramUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int user_level=((UserDTO)(request.getSession().getAttribute("adminsession"))).getUser_level();
			SubProgCreateDTO prog=new SubProgCreateDTO();
			prog.setProg_id((request.getParameter("prog_id")));			
			prog.setSubprog_id((request.getParameter("subprog_id")));
			prog.setSub_prog_title(request.getParameter("subprog_title"));
			prog.setTerm_fee(request.getParameter("term"));
			prog.setSem_fee(request.getParameter("sem"));
			prog.setYear_fee(request.getParameter("year"));
			prog.setAmstart(request.getParameter("amstart"));
			prog.setAmend(request.getParameter("amend"));
			prog.setPmstart(request.getParameter("pmstart"));
			prog.setPmend(request.getParameter("pmend"));
			
			boolean check = false;
			if(user_level==0){
				new SubProgramDAO().updateSubProgram(prog);
			}
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			if (check == true) {
				response.getWriter().write("true");
			} else {
				response.getWriter().write("false");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
