package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DAO.Dao;
import DTO.User;

@WebServlet("/signup")
@MultipartConfig(maxFileSize = 10*1024*1024)
public class SaveUser  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long contact = Long.parseLong(req.getParameter("contact"));
		
		
		Part imagepart = req.getPart("image");
		byte[] imagebytes = imagepart.getInputStream().readAllBytes();
		String password = req.getParameter("password");
		
		
		User user = new User(id, name, email, contact, password, imagebytes);
		
		Dao dao = new Dao();
		
		try {
			int res = dao.saveData(user);
			
			if(res>0) {
				resp.sendRedirect("UserLogin.jsp");
			}else {
				resp.sendRedirect("UserSignup.jsp");
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
