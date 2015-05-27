package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// �˺���
public class Account implements Serializable{
	private String userName;
	private String password;
	private long id;
	private double balance;
	private String sid;
	private String email;

	public Account(String userName, String password, double balance,
			String sid, String email) {
		super();
		this.userName = userName;
		this.password = password;
		this.balance = balance;
		this.sid = sid;
		this.email = email;
	}

	public Account(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}

	private List<History> historyDB = new ArrayList<History>();
	
	public List<History> getHistoryDB() {
		return historyDB;
	}
	
	public void save(double money){
		balance += money;
		// ���������������������ں͵�ǰ��������һ��
		History e = new History(OperateType.SAVE,
				new Date(),money);
		historyDB.add(e );
	}
	
	public Iterator<History> getHistoryIterator(){
		return historyDB.iterator();
	}
	
	public void depoit(double money){
		balance -= money;
		History e = new History(OperateType.DEPOIT,
				new Date(),money);
		historyDB.add(e );
	}
	
	void history(){
		for(History h: historyDB){
			System.out.println(h);
		}
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserName() {
		return userName;
	}

	public boolean isAdmin() {
		return this.userName.equals("admin");
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSid() {
		return sid;
	}
	
}