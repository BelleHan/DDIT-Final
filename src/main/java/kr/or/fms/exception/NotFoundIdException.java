package kr.or.fms.exception;

public class NotFoundIdException extends Exception {
	public NotFoundIdException() {
		super("아이디가 일치하지 않습니다.");
	}
}
