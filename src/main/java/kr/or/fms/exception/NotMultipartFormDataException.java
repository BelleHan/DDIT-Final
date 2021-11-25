package kr.or.fms.exception;

public class NotMultipartFormDataException extends Exception {
	public NotMultipartFormDataException() {
		System.out.println("Multipart 형식이 아닙니다.");
	}
}
