package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Dao;
import DTO.Task;
import DTO.User;
@WebServlet("/addtask")
public class AddTask  extends HttpServlet {
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int taskid = Integer.parseInt(req.getParameter("taskid"));
		String tasktitle = req.getParameter("tasktitle");
		String taskdescription = req.getParameter("taskdescription");
		String taskpriority = req.getParameter("taskpriority");
		String taskduedate = req.getParameter("taskduedate");
		
		User user = (User)req.getSession().getAttribute("user");
		int userid = user.getUserid();
		
		Task task = new Task(taskid, tasktitle, taskdescription, taskpriority, taskduedate,"pending", userid);
		
		Dao dao = new Dao();
		
		
		try {
			int res = dao.createtask(task);
			
			if(res>0) {
				resp.getWriter().println("Task Has Been Created");
			}else {
				resp.getWriter().println("Failed");
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
