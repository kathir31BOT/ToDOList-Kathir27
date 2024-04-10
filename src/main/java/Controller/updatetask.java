package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Dao;
import DTO.Task;
import DTO.User;
@WebServlet("/updatetaske")
public class updatetask extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int taskid = Integer.parseInt(req.getParameter("taskid"));
		String tasktitle = req.getParameter("tasktitle");
		String taskdescription = req.getParameter("taskdescription");
		String taskpriority = req.getParameter("taskpriority");
		String taskduedate = req.getParameter("taskduedate");
		String taskstatus = req.getParameter("taskstatus");
		int userid = Integer.parseInt(req.getParameter("userid"));
		
		Task task = new Task(taskid, tasktitle, taskdescription, taskpriority, taskduedate, taskstatus,userid );

		Dao dao = new Dao();
	
		
		try {
			int res = dao.updateTask(task);
			if(res>0) {
				HttpSession ses = req.getSession();
				User u = (User) ses.getAttribute("user");
				req.setAttribute("tasks", dao.getalltaskesByuserId(u.getUserid()));
				
				RequestDispatcher dis = req.getRequestDispatcher("Home123.jsp");
				dis.include(req, resp);
			}else {
				resp.getWriter().print("Somthing Wrong");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
