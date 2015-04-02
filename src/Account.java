import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// 账号类
public class Account {
	private String userName;
	private String password;
	private long id;
	private double balance;
	
	List<History> historyDB = new ArrayList<History>();
	
	void save(double money){
		balance += money;
		// 保存存款操作到变量（生存期和当前对象至少一样）
		History e = new History(OperateType.SAVE,
				new Date(),money);
		historyDB.add(e );
	}
	
	void depoit(double money){
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
	
}