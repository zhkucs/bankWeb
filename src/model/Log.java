package model;

import java.util.Date;

import javax.servlet.http.HttpSession;

public class Log {
	private final String userName;
	private final OperateType type;
	private final Date happenAt;
	private final HttpSession httpSession;
	
	
	public Log(String userName, OperateType type, 
			Date happenAt,HttpSession httpSession) {
		super();
		this.userName = userName;
		this.type = type;
		this.happenAt = happenAt;
		this.httpSession = httpSession;
	}
	
	public String getUserName() {
		return userName;
	}
	public OperateType getType() {
		return type;
	}
	public Date getHappenAt() {
		return happenAt;
	}

	public HttpSession getHttpSession() {
		return httpSession;
	}
	
	
	
	
}
