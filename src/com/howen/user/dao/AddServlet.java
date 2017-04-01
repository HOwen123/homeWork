package com.howen.user.dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.howen.user.domain.StuInfo;

public class AddServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
		 * Constructor of the object.
		 */
	public AddServlet() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("时间是让人猝不及防的东西");

		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String stuname = request.getParameter("stuname");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String nation = request.getParameter("nation");
		String address = request.getParameter("address");
		String hobby = request.getParameter("hobby");
		System.out.println(stuname);
		StuInfo stuInfo1 = new StuInfo();
		stuInfo1.setStuname(stuname);
		stuInfo1.setAddress(address);
		stuInfo1.setHobby(hobby);
		stuInfo1.setSex(sex);
		stuInfo1.setNation(nation);
		if (age!=null) {
			int age1 = Integer.parseInt(age);
			stuInfo1.setAge(age1);
		}
		StuInfoDao stuInfoDao = new StuInfoDao();
		stuInfoDao.addStuInfo(stuInfo1);
		request.getRequestDispatcher("stuinfo_save_success.jsp").forward(request, response);
	}

	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
