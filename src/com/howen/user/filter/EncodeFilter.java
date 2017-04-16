package com.howen.user.filter;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodeFilter implements Filter {
	
	private String encoding;    
	private HashMap<String,String> params = new HashMap<String,String>();    
	public void destroy() {    
		System.out.println("end do the encoding filter!");    
		params=null;    
		encoding=null;    
	}    
	public void doFilter(ServletRequest req, ServletResponse resp,FilterChain chain) throws IOException, ServletException {    
		System.out.println("before encoding " + encoding + " filter��");    
		req.setCharacterEncoding(encoding);
		resp.setCharacterEncoding(encoding);
		chain.doFilter(req, resp);          
		System.out.println("after encoding " + encoding + " filter��");    
		System.err.println("----------------------------------------");    
	}    
	  
	 public void init(FilterConfig config) throws ServletException {    
		System.out.println("begin do the encoding filter!");    
		encoding = config.getInitParameter("encoding");    
		for (Enumeration<?> e = config.getInitParameterNames(); e.hasMoreElements();) {    
			String name = (String) e.nextElement();    
			String value = config.getInitParameter(name);    
			params.put(name, value);    
		}    
	}    
}
