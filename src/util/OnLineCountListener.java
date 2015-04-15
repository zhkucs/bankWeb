package util;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.*;
import javax.servlet.*;

import service.AccountService;

import model.Log;
import model.OperateType;

public class OnLineCountListener implements 
HttpSessionListener,
HttpSessionAttributeListener,
ServletContextListener, 
ServletContextAttributeListener {
	private int count;
	private ServletContext context = null;

	public OnLineCountListener() {
		count = 0;
	}

	// 创建一个session时激发
	public void sessionCreated(HttpSessionEvent se) {
		count++;		
		setOnlineCount(se);
	}

	// 当一个session失效时激发
	public void sessionDestroyed(HttpSessionEvent se) {
		count--;
		setOnlineCount(se);
	}

	// 设置在线人数的属性，它将激发attributeReplaced或attributeAdded方法
	public void setOnlineCount(HttpSessionEvent se) {
		se.getSession().getServletContext().setAttribute("onLine",
				new Integer(count));
	}

	// ServletContext增加一个新的属性时激发
	public void attributeAdded(ServletContextAttributeEvent event) {
	
		log("attributeAdded('" + event.getName() + "', '" + event.getValue()
				+ "')");
	}

	// ServletContext删除一个新的属性时激发
	public void attributeRemoved(ServletContextAttributeEvent event) {
		log("attributeRemoved('" + event.getName() + "', '" + event.getValue()
				+ "')");
	}

	// 属性被替代时激发
	public void attributeReplaced(ServletContextAttributeEvent event) {
		log("attributeReplaced('" + event.getName() + "', '" + event.getValue()
				+ "')");
	}

	// context删除时激发
	public void contextDestroyed(ServletContextEvent event) {
		log("contextDestroyed()");
		AccountService.getInstance().saveToFile();
		this.context = null;
	}

	// context初始化时激发
	public void contextInitialized(ServletContextEvent event) {
		this.context = event.getServletContext();
		this.context.setAttribute("logs", 
				new Hashtable<String,Log>());
		log("contextInitialized()");
		AccountService.getInstance().loadFormFile();
	}

	private void log(String message) {
		System.out.println("ContextListener: " + message);
	}

	public void attributeAdded(HttpSessionBindingEvent se) {
		if(se.getName().equals("userName")){// 当名为用户名的属性被添加
			HttpSession sc = se.getSession();
			String un = (String) sc.getAttribute("userName");
			Map<String,Log> logs = (Map<String,Log>) this.context.getAttribute("logs");	
			logs.put(un, new Log(un, OperateType.LOGIN, new Date(),sc));			
		}
	}

	public void attributeRemoved(HttpSessionBindingEvent se) {
		if(se.getName().equals("userName")){
//			Map<String,Log> logs = (Map<String,Log>) this.context.getAttribute("logs");	
//			Log log = logs.get(se.getValue());
//			log.getHttpSession().invalidate();
//			logs.remove(se.getValue());
		}
	}

	public void attributeReplaced(HttpSessionBindingEvent se) {		
	}
}

