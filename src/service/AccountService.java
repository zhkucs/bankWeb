package service;

import java.util.HashMap;
import java.util.Map;

import model.Account;

public class AccountService {
	public static AccountService instance = new AccountService();
	public static AccountService getInstance(){
		return instance;
	}
	
	AccountService(){
		db = new HashMap<String,Account>();
		db.put("a", new Account("a","a"));
		db.put("b", new Account("b","b"));
		db.put("admin", new Account("admin","a"));
	}
	
	Map<String,Account> db = new HashMap<String,Account>();
	
	public Account findByUserName(String userName){
		return db.get(userName);		
	}
	
	public Account findHistoryByUserName(String userName){
		return db.get(userName);		
	}
	
	public void insert(Account account){
		db.put(account.getUserName(), account);
	}
	
	public void deleteByUserName(String userName){
		
	}
	
	//...
}
