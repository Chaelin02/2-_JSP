package C04;

import java.util.Enumeration;
import java.util.*;

public class EnumerationTest {

	public static void main(String[] args) {
		Vector list = new Vector();

		list.addElement(new Integer(10));  //intger를 ㄱ객체화 시킴
		list.addElement(new Double(3.14));  		
		list.addElement(new String("java"));  		
		list.addElement(new Date());  		
		Enumeration e = list.elements();
		while(e.hasMoreElements())
			System.out.println("e의 요소:"+e.nextElement());
		//nextElement() 는 이뉴머레이션이 ㅛ요소 하나하나를 접근해주는 거
	
		}
//	컬렉션의 요소를 하나하나 꺼내오는 역할이 이뉴머레이션.
//	그중 우린 벡터를 배운것 arraylist랑 
	}


