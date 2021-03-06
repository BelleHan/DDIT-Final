package kr.or.fms.util;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
 
import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
 
public class FTPUploader {
    
    FTPClient ftp = null;
    public FTPUploader() throws Exception {
		ftp = new FTPClient();
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out)));
		int reply;
		ftp.connect("jumpjinhyup.ivyro.net");//호스트 연결
		reply = ftp.getReplyCode();
		if (!FTPReply.isPositiveCompletion(reply)) {
		    ftp.disconnect();
		    throw new Exception("Exception in connecting to FTP Server");
		}
		ftp.login("jumpjinhyup", "haha2222!");//로그인
		ftp.setFileType(FTP.BINARY_FILE_TYPE);
		ftp.enterLocalPassiveMode();
		
    }
    //param( 보낼파일경로+파일명, 호스트에서 받을 파일 이름, 호스트 디렉토리 )
    public void uploadFile(String localFileFullName, String fileName, String hostDir)
            throws Exception {
        try(InputStream input = new FileInputStream(new File(localFileFullName))){
        this.ftp.storeFile(hostDir + fileName, input);
        //storeFile() 메소드가 전송하는 메소드
        }
    }
 
    public void disconnect(){
        if (this.ftp.isConnected()) {
            try {
                this.ftp.logout();
                this.ftp.disconnect();
            } catch (IOException f) {
                f.printStackTrace();
            }
        }
    }
    public void makeURL(String url, String filename) throws Exception {
        System.out.println("Start");
        FTPUploader ftpUploader = new FTPUploader();
        ftpUploader.uploadFile(url, filename, "/public_html/");
        ftpUploader.disconnect();
        System.out.println("Done");
    }
    
//    public static void main(String[] args) throws Exception {
//		FTPUploader ftpUploader = new FTPUploader();
//		ftpUploader.makeURL("C:\\Users\\PC-23\\Downloads\\grid-export.csv", "grid-export.csv");
//	}
 
}
