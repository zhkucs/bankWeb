package service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.sql.SQLException;
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
		db.put("admin", new Account("admin","a"));
	}
	
	Map<String,Account> db = new HashMap<String,Account>();
	
	public Account findByUserName(String userName){
		return DatabaseAccess.getInstance().findByUserName(userName);
	}
	
	public Account findHistoryByUserName(String userName){
		return db.get(userName);		
	}
	
	public void insert(Account account) throws SQLException{
		DatabaseAccess.getInstance().perist(account);
		//db.put(account.getUserName(), account);
	}	
	
	

	public void deleteByUserName(String userName){
		
	}

	// 从文件中加载db对象
	public void loadFormFile() {
		try{
			FileInputStream fi = new FileInputStream(new File(DB_FILE));
			ObjectInputStream oi = new ObjectInputStream(fi);
			db = (Map<String, Account>) oi.readObject();
		}catch(Throwable t){	
			
		}
	}
	final String DB_FILE = "db.bw";
	// 将db写入文件
	public void saveToFile() {
		// TODO Auto-generated method stub
		try {
		FileOutputStream fo = new FileOutputStream(new File(DB_FILE));
		ObjectOutputStream oo = new ObjectOutputStream(fo);
			oo.writeObject(db);
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}
	
	//...
}
