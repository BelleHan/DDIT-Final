package kr.or.fms.logis;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

public class MokQrcode {
	
	public static void main(String ar[]) {
        try {
            File file = null;
            // 큐알이미지를 저장할 디렉토리 지정
            file = new File("D:\\qrtest");
            if(!file.exists()) {
                file.mkdirs();
            }
            // 코드인식시 링크걸 URL주소
            String codeurl = new String("HG0003".getBytes("UTF-8"), "UTF-8");
            // 큐알코드 바코드 생상값
            int qrcodeColor =   0x000000;
            // 큐알코드 배경색상값
            int backgroundColor = 0xFFFFFFFF;
             
            QRCodeWriter qrCodeWriter = new QRCodeWriter();
            // 3,4번째 parameter값 : width/height값 지정
            BitMatrix bitMatrix = qrCodeWriter.encode(codeurl, BarcodeFormat.QR_CODE,200, 200);
            //
            MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor,backgroundColor);
            BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix,matrixToImageConfig);
            // ImageIO를 사용한 바코드 파일쓰기
            boolean write = ImageIO.write(bufferedImage, "png", new File("D:\\qrtest\\HG0003.png"));
            if (write) {
            	System.out.println("코드생성성공");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

}