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

@WebServlet("/delete")
public class DeleteTask extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int taskid = Integer.parseInt(req.getParameter("id"));
		Dao dao = new Dao();

		try {

			HttpSession ses = req.getSession();
			User u = (User) ses.getAttribute("user");

			if (u !=null) {
				Task dtask = dao.findTaskById(taskid);
				
				if (dtask.getUserid()== u.getUserid()) {
					dao.deleteTask(taskid);

					req.setAttribute("tasks", dao.getalltaskesByuserId(u.getUserid()));
					RequestDispatcher dis = req.getRequestDispatcher("Home123.jsp");
					dis.include(req, resp);
				} else {
//					resp.sendRedirect("logout123");
				}
			} else {
//				resp.sendRedirect("UserLogin.jsp");
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
