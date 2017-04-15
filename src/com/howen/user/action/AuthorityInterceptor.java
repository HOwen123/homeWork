package com.howen.user.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.howen.user.domain.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		 
		HttpServletRequest request = ServletActionContext.getRequest();;
		if (request.getSession().getAttribute("user")==null) {
			System.out.println("++++++++++++++++++++++++++++++");
			System.out.println("客户还没登陆或者已登陆超时");
			System.out.println("++++++++++++++++++++++++++++++");
			return Action.LOGIN;
		}else {
			System.out.println("继续过滤");
			return arg0.invoke();
		}
		
	}

}
