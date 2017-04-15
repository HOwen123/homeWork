package com.howen.user.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.howen.user.domain.Page;
import com.howen.user.domain.StuInfo;
import com.howen.user.tools.PageTool;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PageAction extends ActionSupport implements ModelDriven<Page>{
	private Page page = new Page();
	private int pageSize =10;
	private int pageIndex;
	
	
	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	PageTool pageTool = new PageTool();
	
	@Override
	public String execute() throws Exception {
		int currentPage = pageIndex;
		int totalPages = pageTool.getTotalPages(pageSize);
		if ("".equals(currentPage)) {
			currentPage = 1;
		}
		if (pageIndex<1) {
			pageIndex=1;
		}else if (pageIndex>totalPages) {
			pageIndex = totalPages;
		}
		int pageCounts = pageTool.getCount();
		List<StuInfo> list = pageTool.getPage(pageIndex, pageSize);
		HttpServletResponse resp = ServletActionContext.getResponse();

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
			pWriter.append(array.toString());
			pWriter.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
//		request.setAttribute("list", list);
//		request.setAttribute("pageCounts", pageCounts);
//		request.setAttribute("totalPages", totalPages);
		return SUCCESS;
	}
	
	@Override
	public Page getModel() {
		// TODO Auto-generated method stub
		return this.page;
	}

}
