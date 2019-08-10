package toyMaP.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


@Controller
@RequestMapping("/hello")
public class toyMaPController {
	/*
   @RequestMapping(method = RequestMethod.GET)public String printHello(Model model) {
      model.addAttribute("message", "Hello Spring MVC Framework!");
      return "hello";
   }
	 */

	@RequestMapping(method = RequestMethod.GET)
	public String getPublicData(HttpServletRequest request, Model model) {
		model.addAttribute("message", "Hello Spring MVC Framework!");
		
		//XML 데이터를 호출할 URL
		String url = "http://openapi.seoul.go.kr:8088/72746b705564617a333574576e634a/xml/houseRentPriceInfo";
		
		//URL에 파라미터로 항목이 존재하는지 체크 - 어차피 해당 지역 데이터 다 나와야해서 의미는 없을듯..?
		String pageNumber = request.getParameter("pageNumber");	//페이지넘버
		String rowPerPage = request.getParameter("rowPerPage"); //페이지당개수
		
		if(pageNumber != null){
			url += "/" + pageNumber;
		} else {
			// 기본 페이지 1 설정
			url += "/1";
		}
		
		if(rowPerPage != null && !"0".equals(rowPerPage)){
			url += "/" + rowPerPage;
		} else {
			//기본 사이즈 5설정
			url += "/5";
		}
		System.out.println(url);
		
		//서버에서리턴될 XML데이터의 엘리먼트 이름 배열 
		String[] fieldNames ={"LAND_CD", "ORG_CD", "SN", "ACC_YEAR", "SGG_CD", "SGG_NM", "BJDONG_CD","BJDONG_NM","BOBN","BUBN","BLDG_NM","FLR_NO","HOUSE_GBN",
				"HOUSE_GBN_NM","RENT_AREA","RENT_CD","RENT_CASE_NM","RENT_GTN","RENT_FEE","CNTRCT_YEAR","CNTRCT_DE","BUILD_YEAR"};
		
		//각 게시물하나에 해당하는 XML 노드를 담을 리스트
		ArrayList<Map> result = new ArrayList<Map>();
		
		try {
			//XML파싱 준비
			DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
			DocumentBuilder b = f.newDocumentBuilder();
			//위에서 구성한 URL을 통해 XMl 파싱 시작
			Document doc = b.parse(url);
			doc.getDocumentElement().normalize();
			
			//서버에서 응답한 XML데이터를 row 태그로 각각 나눔(파라미터로 요청한 size항목의 수만큼)
			NodeList items = doc.getElementsByTagName("row");
			
			//for 루프시작
			for (int i = 0; i < items.getLength(); i++) {
				//i번째 row 태그를 가져와서
				Node n = items.item(i);
				//노드타입을 체크함, 노드 타입이 엘리먼트가 아닐경우에만 수행
				if (n.getNodeType() != Node.ELEMENT_NODE)
					continue;
				
				Element e = (Element) n;
				HashMap row = new HashMap();
				//for 루프 시작
				for(String name : fieldNames){
					NodeList titleList = e.getElementsByTagName(name);
					Element titleElem = (Element) titleList.item(0);
		
					Node titleNode = titleElem.getChildNodes().item(0);
					// 가져온 XML 값을 맵에 엘리먼트 이름 - 값 쌍으로 넣음
					row.put(name, titleNode.getNodeValue());
				}
				//데이터가 전부 들어간 맵을 리스트에 넣고 화면에 뿌릴 준비.
				result.add(row);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(result);
		model.addAttribute("result", result);

		return "hello";
	}
	
	//검색 넣어보려고 하는데..
	@RequestMapping(value="search")
	public String search(Model model, @RequestParam Map<String, Object> params) {
		
	System.out.println(params);
		
		return null;
	}
	
	
	
	
}