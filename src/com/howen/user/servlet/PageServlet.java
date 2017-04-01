package com.howen.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.howen.user.domain.Page;
import com.howen.user.domain.StuInfo;
import com.howen.user.tools.PageTool;

public class PageServlet extends HttpServlet {
	
	private int pageSize = 4;
	private int pageIndex;
	
	PageTool pageTool = new PageTool();
	
	public PageServlet() {
		super();
	}
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int totalPages=pageTool.getTotalPages(pageSize);
	String currentPage = req.getParameter("pageIndex");
	
	if (currentPage == null) {
		currentPage = "1";
	}
	System.out.println("shoehi"+currentPage);
	pageIndex = Integer.parseInt(currentPage);
	if (pageIndex<1) {
		pageIndex=1;
	}else if (pageIndex>totalPages) {
		pageIndex = totalPages;
	}
	List<StuInfo> list = pageTool.getPage(pageIndex, pageSize);
	
	req.setAttribute("pageIndex", pageIndex);
	req.setAttribute("totalPages", totalPages);
	req.setAttribute("list", list);
	
	req.getRequestDispatcher("show_stuinfo.jsp").forward(req, resp);
	
}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		this.doGet(req, resp);
		
	}
	
	public void destroy() {
		super.destroy(); 
	}

}
