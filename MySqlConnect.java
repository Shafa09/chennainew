package mypack;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConnect {
	static Connection cn=null;
    static String driver="com.mysql.cj.jdbc.Driver";
    static String url="jdbc:mysql://localhost:3306/project";
    static String user="root";
    static String pass="shafa";
    public static Connection getCn() throws Exception{
    	Class.forName(driver);
    	cn=DriverManager.getConnection(url,user,pass);
    	return cn;
    }

}