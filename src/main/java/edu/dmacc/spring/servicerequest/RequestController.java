package edu.dmacc.spring.servicerequest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class RequestController {
	@Autowired RequestDao dao;

	private static final String[] applications = {"Enterprise", "Yardi", "LOS", "Client Site", "Loan Connection"};
	
	@RequestMapping(value = "/form")
		public ModelAndView request() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("requestForm");
		modelAndView.addObject("request", new Request());
		modelAndView.addObject("applications", applications);
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processRequest(Request request) {
		System.out.println("In ProcessRequest");
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("Value in getName" + request.getLastName());
		dao.insertRequest(request);
		modelAndView.setViewName("requestResult");
		modelAndView.addObject("r", request);
		return modelAndView;
	}
	
	@Bean
		public RequestDao dao() {
		RequestDao bean = new RequestDao();
		return bean;
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Request> allRequests = dao.getAllRequests();
		modelAndView.setViewName("viewAllRequests");
		modelAndView.addObject("all", allRequests);
		return modelAndView;
	
}
	
}
