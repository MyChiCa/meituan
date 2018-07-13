package com.MeiTuan.portal.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class UserFilter
 */ 
public class UserFilter implements Filter {
       
    /**
     * @see Filter#Filter()
     */
    public UserFilter() {
        super();
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//类型转换
		HttpServletRequest requestTemp = (HttpServletRequest)request;
		HttpServletResponse responseTemp = (HttpServletResponse)response;
		
		//获得session中的参数
		HttpSession session = requestTemp.getSession();
		String loginUser = (String)session.getAttribute("loginUser");
		if(loginUser != null){
			chain.doFilter(requestTemp, responseTemp);
		}else{
			responseTemp.sendRedirect("/login");
		}
		chain.doFilter(requestTemp, responseTemp);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
