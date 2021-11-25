package kr.or.fms.sup.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.or.fms.sup.dto.SupGoodsVO;
import kr.or.fms.sup.dto.SupVO;
import kr.or.fms.sup.service.SupGoodsService;

@Controller
@RequestMapping("/sup")
public class SupGoodsExcelController {

	@Autowired
		private SupGoodsService supGoodsService;
		

		private static final Logger logger = LoggerFactory.getLogger(SupController.class);
		
		
		@RequestMapping("goods/excelExport")
		public void formExcelDown(HttpServletResponse response)throws IOException{
			
			Workbook workbook = new XSSFWorkbook();
			Sheet sheet = workbook.createSheet();	//row
		    Row header = sheet.createRow(0);		//header
			
		    //컬럼명 지정
		    List<String> headers = new ArrayList<>();
		    headers.add("물품코드");	//sup_goods_code
		    headers.add("물품명");	//sup_goods_name
		    headers.add("납품가(원)");	//sup_goods_price
		    headers.add("대분류");	//sup_goods_lace
		    headers.add("물품종류");	//sup_goods_smca
		    headers.add("용량");		//sup_goods_attr3
		    headers.add("단위");		//sup_goods_unit
		    headers.add("포장재질");
		    headers.add("물품재질");
		    headers.add("가로(cm)");
		    headers.add("세로(cm)");
		    headers.add("높이(cm)");
		    headers.add("무게(kg)");
		    headers.add("물품특성");
		    headers.add("물품이미지");
		
		    // 엑셀에 각 헤더에 세팅
		    int c = 0;
		    for (String h : headers) {
		        header.createCell(c++).setCellValue(h);
		    }
		    
		    // 파일 생성해주는거
	        response.setContentType("ms-vnd/excel");
	        //타입 지정명
	        response.setHeader("Content-Disposition", "attachment;filename=uploadForm.xlsx");

		    OutputStream os = response.getOutputStream();
		    workbook.write(os);
		    os.close();
		    workbook.close();
		
		}
		
		@RequestMapping(value="/goods/excelImport", method=RequestMethod.POST, headers = ("content-type=multipart/*"))
		public String excelUploadAjax(MultipartFile file, HttpSession session, MultipartHttpServletRequest request) throws IOException {
			String url = "sup/goods/excelImportSuccess";
			
			//세션값가져오기
			SupVO sup = (SupVO)session.getAttribute("loginSup");
			
			System.out.println("업로드 진행");
			
			//파일경로 변수명으로 저장
			String dir = "C:/fms/Excelupload/";
			MultipartFile excelFile = request.getFile("excleFile");
			String origName = new String(excelFile.getOriginalFilename());
			System.out.println(origName + "-------------");
			
			//파일 생성
			File uploadFile = new File(dir,origName);
			
			//경로 만들어주기
			if(! new File(dir).exists()) {
				new File(dir).mkdirs();
			}
			
			//엑셀 가져와
			XSSFWorkbook workbook = null;
			
			try {
				
				//경로안에 파일저장
				excelFile.transferTo(uploadFile);

				//import하고 싶은 excel파일 가져오기(꼉로)
				FileInputStream importFile  = new FileInputStream("C:/fms/Excelupload/" + origName);
				
				//엑셀파일 가져오기
				workbook = new XSSFWorkbook(importFile);
				
				//시트 생성
				//0부터 가져오기
				XSSFSheet sheet = workbook.getSheetAt(0);
				//excel에 저장된 값을 string으로 변환해서 가져오기
				DataFormatter formatter = new DataFormatter();
				//row 첫번째 가져오기(0번쨰 +1)
				int readFirstRow = sheet.getFirstRowNum()+1;
				//row 1번부터 마지막 row까지 값가져오기
				List<SupGoodsVO> all = new ArrayList<SupGoodsVO>();
				for(int i = readFirstRow; i<=sheet.getLastRowNum();i++) {
					SupGoodsVO goods = new SupGoodsVO();
					
					//첫번쨰 셀name가져오기(마지막 셀까지 직접 지정)
					XSSFRow row = sheet.getRow(i);
					String importGoods0 = formatter.formatCellValue(row.getCell(0));
					String importGoods1 = formatter.formatCellValue(row.getCell(1));
					String importGoods2 = formatter.formatCellValue(row.getCell(2));
					String importGoods3 = formatter.formatCellValue(row.getCell(3));
					String importGoods4 = formatter.formatCellValue(row.getCell(4));
					
					String importGoods5 = formatter.formatCellValue(row.getCell(5));
					String importGoods6 = formatter.formatCellValue(row.getCell(6));
					String importGoods7 = formatter.formatCellValue(row.getCell(7));
					String importGoods8 = formatter.formatCellValue(row.getCell(8));
					String importGoods9 = formatter.formatCellValue(row.getCell(9));
					
					String importGoods10 = formatter.formatCellValue(row.getCell(10));
					String importGoods11 = formatter.formatCellValue(row.getCell(11));
					String importGoods12 = formatter.formatCellValue(row.getCell(12));
					String importGoods13 = formatter.formatCellValue(row.getCell(13));
//					String importGoods14 = formatter.formatCellValue(row.getCell(14));

					
					goods.setSup_goods_code(importGoods0);
					goods.setSup_goods_name(importGoods1);
					goods.setSup_goods_price(Integer.parseInt(importGoods2));
					goods.setSup_goods_laca(importGoods3);
					goods.setSup_goods_smca(importGoods4);
					
					goods.setSup_goods_attr1(importGoods5);
					goods.setSup_goods_unit(importGoods6);
					goods.setSup_goods_attr2(importGoods7);
					goods.setSup_goods_attr3(importGoods8);
					goods.setSup_goods_attr4(importGoods9);
					
					goods.setSup_goods_attr5(importGoods10);
					goods.setSup_goods_attr6(importGoods11);
					goods.setSup_goods_attr7(importGoods12);
					goods.setSup_goods_attr8(importGoods13);
//					goods.setSup_goods_img(importGoods14);
					
//					System.out.println(">>>>>>"+supGoodsName);
					
					goods.setSup_code(sup.getSup_code());
					all.add(goods);
					
				}
			
				supGoodsService.allRegist(all);
				
			System.out.println("fileImport >>> "+importFile);
				//내가 설정한 위치에 내가 올린 파일을 만들고
			} catch (Exception e) { 
				throw new RuntimeException(e.getMessage(),e);
			} finally {
				workbook.close();
			}
			
			return url;
		}
		
//		@RequestMapping(value="/goods/excelUp.do", method=RequestMethod.POST)
//		public void ExcelUp(HttpServletRequest req, HttpServletResponse rep) {
//			logger.info("@@@@@@@@@@@@@@@@@@ExcelUp START@@@@@@@@@@@@@@@@@");
//			
//			Map returnObject = new HashMap();
//			
//			try {
//				//multiparthrrpServelRequest생성
//				MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) req; 
//				Iterator iter = mhsr.getFileNames();
//				MultipartFile mfile = null;
//				String fieldName = "";
//				String origName = new String(mfile.getOriginalFilename().getBytes("8859_1"), "UTF-8");//한글깨짐 방지
//				
//				returnObject.put("params", mhsr.getParameterMap());
//				
//				//위치 및 파일
//				supGoodsService.excelUpForm(excelFile);
//			} catch (UnsupportedEncodingException e) {
//				// TODO: handle exception
//			}
//		}
		
		
		@RequestMapping("goods/excelForm")
		public String excelForm() {
			String url = "sup/goods/excelRegist";
			return url;
		}

	
	
}
