import java.util.Date;

// 历史清单
public class History {
	private final OperateType type;
	private final Date operateAt;	
	private final double amount;
	public History(OperateType type, Date operateAt, double amount) {
		super();
		this.type = type;
		this.operateAt = operateAt;
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		return String.format("操作类型:%s 操作时间：%s 金额：%f" , 
				this.type,this.operateAt,this.amount);
	}
}
