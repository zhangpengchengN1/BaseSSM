package util.design;

import util.annotation.DBConstraints;
import util.annotation.DBSQLInteger;
import util.annotation.DBSQLString;
import util.annotation.DBTable;
import util.annotation.UseCase;


@DBTable(name = "STUDENT")
public class TestAnnotation {
	/**
	 * 如果命名 为value 仅此 并且是没有其他需要赋值的 则可以 使用注解 时省略键名 直接写值 
	 */
	@DBSQLString(30)
	String name;

	@DBSQLString(value=20, DBConstraints=@DBConstraints(primaryKey = true))
	String key;	
	
	@DBSQLString(value=0)
	String name2;	
	
	@DBSQLInteger(name="COUNT")
	int cc;
	
	@UseCase(id = 0)
	public void funMust(){
		
		
	}
	@UseCase(id = 1, description = "adaaaa desc ")
	public void funDefault(){
		
	}
	
	
	
	
	
}
