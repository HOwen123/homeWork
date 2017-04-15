package com.howen.user.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.howen.user.domain.StuInfo;
import com.howen.user.tools.PageTool;

public class PageServlet extends HttpServlet {

	private int pageSize = 10;
	private int pageIndex;
	PageTool pageTool = new PageTool();
	
	public void init() throws ServletException {
	
	}

	public PageServlet() {
		super();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
		
		JsonObject json=new JsonObject();
		JsonArray array = new JsonArray();
		JsonObject member=null;
		try {
			for (int i = 0; i < list.size(); i++) {
				member = new JsonObject();
				member.addProperty("stuname", list.get(i).getStuname());
				member.addProperty("age", list.get(i).getAge());
				member.addProperty("sex", list.get(i).getSex());
				member.addProperty("address", list.get(i).getAddress());
				member.addProperty("nation", list.get(i).getNation());
				member.addProperty("hobby", list.get(i).getHobby());
				array.add(member);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		PrintWriter pWriter;
		try {
			pWriter = resp.getWriter();
			pWriter.print(array.toString());
			pWriter.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		req.setAttribute("pageIndex", pageIndex);
//		req.setAttribute("totalPages", totalPages);
//		req.setAttribute("list", list);
//		
//		req.getRequestDispatcher("easyUI01.jsp").forward(req, resp);
	
	}

	public void destroy() {
		super.destroy(); // 
	}

}
