package toyMaP.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
	public String getPublicData(Model model) {
		model.addAttribute("message", "Hello Spring MVC Framework!");
		
		BufferedReader br = null;
		try{
			String urlstr = "http://openapi.seoul.go.kr:8088/72746b705564617a333574576e634a/xml/houseRentPriceInfo/1/5/";
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
			String result = "";
			String line;

			while((line = br.readLine()) != null) {
				result = result + line + "\n";
			}
			model.addAttribute("result", result);

			System.out.println(result);

		}catch(Exception e){
			System.out.println(e.getMessage());
		}

		return "hello";
	}
}