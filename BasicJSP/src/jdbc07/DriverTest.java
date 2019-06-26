package jdbc07;
import java.sql.*;
public class DriverTest {
	public static void main(String[] args) {
		Connection con;
		try {
			Class.forName("org.gjt.mm.mysql.Driver").newInstance();//jdbc생성하는 방법//newInstance();인스턴스화 시킴외우기!!두줄
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","mirim2");
//			connnection은 URL로 접근 !!
//			orcle은 1252? mysql은 포트가3306 
			System.out.println("Success");
		}catch(SQLException ex) {
			System.out.println("SQLException:"+ex);
		}catch(Exception ex) {
			System.out.println("Exception:"+ex);
		}
	}
}
