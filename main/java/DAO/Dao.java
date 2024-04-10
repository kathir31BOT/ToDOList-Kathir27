package DAO;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.sql.rowset.serial.SerialBlob;

import DTO.Task;
import DTO.User;


public class Dao {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/todolist","root","root");
		return con;
	}
	

	public static int saveData(User user) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("insert into user values(?,?,?,?,?,?)");
		pst.setInt(1, user.getUserid());
		pst.setString(2, user.getUsername());
		pst.setString(3, user.getUseremail());
		pst.setLong(4, user.getUsercontact());
		pst.setString(5, user.getUserpassword());
		Blob imgBlob = new SerialBlob(user.getUserimage());

		pst.setBlob(6, imgBlob);

		int res = pst.executeUpdate();
		System.out.println(res);

		return res;

	}
	public User findByEmail(String email) throws ClassNotFoundException, SQLException {
	
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from user where userEmail=?");
		pst.setString(1, email);
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			User u = new User();
			u.setUserid(rs.getInt(1));
			u.setUsername(rs.getString(2));
			u.setUseremail(rs.getString(3));
			u.setUsercontact(rs.getLong(4));
			u.setUserpassword(rs.getString(5));
			
			Blob imageBlob = rs.getBlob(6);
			byte[] image = imageBlob.getBytes(1, (int)imageBlob.length());
			
			u.setUserimage(image);
			
			return u;
		}
		else {
			return null;
		}
		
	}
	public int createtask(Task task) throws SQLException, ClassNotFoundException {
		
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("insert into task values(?,?,?,?,?,?,?)");
		pst.setInt(1, task.getTaskid());
		pst.setString(2, task.getTasktitle());
		pst.setString(3, task.getTaskdescription());
		pst.setString(4, task.getTaskpriority());
		pst.setString(5, task.getTaskduedate());
		pst.setString(6, task.getTaskstatus());
		pst.setInt(7, task.getUserid());
		
		int res = pst.executeUpdate();
		return res;
		
	}
	public List<Task> getalltaskesByuserId(int userid ) throws ClassNotFoundException, SQLException{
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from task where userid = ? ");
		pst.setInt(1, userid);
		ResultSet rs = pst.executeQuery();
		List<Task> tasks = new ArrayList<Task>();
		while(rs.next()) {
			Task task = new Task(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7));
			tasks.add(task);
		}
		return tasks;
		
	}
	public int  deleteTask(int taskid) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("delete  from task where taskid= ?");
		pst.setInt(1, taskid);
		int  res= pst.executeUpdate();
		return res;
		
	}
	public int getTaskId() throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select max(taskid)from task");
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			int id = rs.getInt(1);
			return id+1;
		}else {
		return 1;
		}
	}
	public int getuserId() throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select max(userid)from user");
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			int id = rs.getInt(1);
			return id+1;
		}else {
		return 1;
		}
	}
public int updateTask(Task task) throws SQLException, ClassNotFoundException {
		
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("update task set tasktitle = ?,taskdescription= ?,taskpriority=?,taskduedate=?,taskstatus=?,userid= ? where taskid = ?");
		
		pst.setString(1, task.getTasktitle());
		pst.setString(2, task.getTaskdescription());
		pst.setString(3, task.getTaskpriority());
		pst.setString(4, task.getTaskduedate());
		pst.setString(5, task.getTaskstatus());
		pst.setInt(6, task.getUserid());
		pst.setInt(7, task.getTaskid());
		
		int res = pst.executeUpdate();
		return res;
		
	}
	public Task findTaskById(int taskid) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from task where taskid = ?");
		pst.setInt(1, taskid);
		ResultSet rs = pst.executeQuery();
		rs.next();
		Task task = new Task(taskid, rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6), rs.getInt(7));
		return task;
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
