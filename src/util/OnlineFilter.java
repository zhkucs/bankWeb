package util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OnlineFilter extends HttpServlet implements Filter {

	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		System.out.println("OnlineFilter destroy>>>>>>>>>>>>>>>>>>");
	}

	private static final String[] UNFILTER_PAGES ={"login.jsp","index.jsp","login","showRegister.jsp"};
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
	
		/*RequestDispatcher dispatcher = request
				.getRequestDispatcher("../index.jsp");*/
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
	    String path = req.getContextPath();
	    String basePath = req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+path;
		HttpSession session = req.getSession(true);
		String username = (String) session.getAttribute("userName");
		String uri = req.getRequestURI();
		if(isUnfilterPage(uri)){
			chain.doFilter(req, resp);	
			return;
		}
 		if (username == null || "".equals(username)) {
			resp.setHeader("Cache-Control", "no-store");
			resp.setDateHeader("Expires", 0);
			resp.setHeader("Prama", "no-cache");
			resp.sendRedirect(basePath+"/login.jsp");
		} else {			
			chain.doFilter(req, resp);				
		}
	}

	private boolean isUnfilterPage(String uri) {
		for(String p : UNFILTER_PAGES){
			if(uri.contains(p))
				return true;
		}
		return false;
	}

	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("OnlineFilter init>>>>>>>>>>>>>>>>>");
	}

}

