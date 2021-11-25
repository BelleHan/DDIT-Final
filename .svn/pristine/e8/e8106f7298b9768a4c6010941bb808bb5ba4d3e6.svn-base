package kr.or.fms.logis;

import java.io.Serializable;
import java.util.ArrayList;

public class MokThread extends Thread implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static void main(String[] args) {
		int a = 1;
		String b = "ab";
		
		
		ArrayList<Object> list = new ArrayList<>();
		
		if(b != null) {
			list.add(b);
			list.add(b);
			list.add(b);
		}
		
		System.out.println("쓰레드테스트");
		Thread t1 = new Thread() {
			public void run() {
				try {
					Thread.sleep(3000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("thread1");
			}
		};
		
		t1.start();
		Thread t2 = new Thread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("thread2");
			}
		});
		
		t2.start();
		
		try {
			t1.join();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			t2.join();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		Thread t3 = new Thread(() -> {
			//인터페이스가 함수가 하나인 경우, 람다를 사용할 수 있는 인터페이스가 지정된 경우나 하나의 람다식을 사용하는 경우 사용할 수 있음 
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("thread3");
		});
		
		t3.start();
		
		System.out.println("쓰레드 끝");
	}
}
