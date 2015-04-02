import java.util.Date;

// ��ʷ�嵥
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
		return String.format("��������:%s ����ʱ�䣺%s ��%f" , 
				this.type,this.operateAt,this.amount);
	}
}
