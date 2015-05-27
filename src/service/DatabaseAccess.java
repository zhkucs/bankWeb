package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Account;

public class DatabaseAccess {
	private DatabaseAccess() {
		try {
			loadDirver();
			createConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private static DatabaseAccess databaseAccess;
	public static DatabaseAccess getInstance() {
		if (databaseAccess == null) {
			databaseAccess = new DatabaseAccess();
		}

		return databaseAccess;
	}

	private final String driver = "com.mysql.jdbc.Driver";
	private final String url = "jdbc:mysql://127.0.0.1:3306/mydb";// 要在本地建立名为mydb的数据库
	private Connection connection;

	private void loadDirver() throws ClassNotFoundException {
		Class.forName(driver);
	}

	private void createConnection() throws SQLException {
		connection = DriverManager.getConnection(url, "root", "");
	}
	
	 public void closeConnection() throws SQLException {  
		 connection.close();
	 }  

	public Account findByUserName(String userName) {
		Statement statement = null;
		ResultSet rs = null;
		try {
			statement = connection.createStatement();
			rs = statement
					.executeQuery("select * from t_account where userName='"
							+ userName + "'");
			if (rs.next()) {
				String password = rs.getString("password");
				double balance = rs.getDouble("balance");
				String email = rs.getString("email");
				String sid = rs.getString("sid");
				return new Account(userName, password, balance,sid, email);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;

	}

	void perist(Account account) throws SQLException {
		String sql = String.format("insert into t_account(userName,password,balance,sid,email)"
			+ " values('%s','%s',0,'%s','%s')",
			account.getUserName(),
			account.getPassword(),
			account.getSid(),
			account.getEmail());		
			PreparedStatement sta = connection.prepareStatement(sql,
			Statement.RETURN_GENERATED_KEYS);
			sta.execute();
			System.out.println(sta.getGeneratedKeys());
	}
}
