package corona.virus.cases.tracker.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController 
{	
	@GetMapping("/")
	public String loadHomePage()
	{	
		return "home-page";
	}
	
	@GetMapping("/data")
	public String loadHomePageWithData(HttpServletRequest request, Model model) throws IOException
	{	
		String country = request.getParameter("countryName");
		
		List<String> casesList = new ArrayList<>();
		
		if(country.equals("select country"))
			model.addAttribute("select", "* Please select a country !");
		else 
		{
			casesList.add(country);
			
			if(country.contains(" "))
				country = country.replace(" ", "-");
			
			String url = "https://www.worldometers.info/coronavirus/country/" + country;
			
			Document document = Jsoup.connect(url).get();
			
			Elements elements = document.select("#maincounter-wrap");
			
			elements.forEach((e) -> 
				{
					String text = e.select("h1").text();
					String count = e.select(".maincounter-number>span").text();
					
					casesList.add(text);
					casesList.add(count);
				}
			);
			
			model.addAttribute("coronaCasesList", casesList);
			
			if(elements.isEmpty())
				model.addAttribute("dataUnknown", "Data Unknown !");
		}
		
		return "home-page";
	}
}
