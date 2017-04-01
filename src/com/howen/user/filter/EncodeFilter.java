package com.howen.user.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodeFilter implements Filter {
	
	private String charEncoding=null;
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		 charEncoding = fConfig.getInitParameter("encode");
		 if (charEncoding==null) {
			throw new ServletException("encode编码设置为空！！！");
		}
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("开始执行过滤");
		if (!charEncoding.equals(request.getCharacterEncoding())) {
			request.setCharacterEncoding(charEncoding);
		}
		response.setCharacterEncoding(charEncoding);
		chain.doFilter(request, response);
		System.out.println("结束执行过滤");
	}

	@Override
	public void destroy() {
		System.out.println("==== 销毁过滤器 ====");
	}

}
