package com.ksoft.carpark.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ksoft.carpark.model.Location;
import com.ksoft.carpark.service.LocationService;

@Controller
@RequestMapping("/location")
public class CarParkLocationController {
	
	@Autowired
	private LocationService locationService;

	@RequestMapping(value="/scan/{addr}/{parkNo}/{position}", method = RequestMethod.GET)
	public String saveAndShare(Model model, HttpServletRequest request) {
		//System.err.println(request.getRequestURI() + request.getServletPath() + request.getPathInfo() + request.getRealPath("/"));
		String saveParkUrl = request.getRequestURI().replaceFirst("scan", "save");
		model.addAttribute("saveParkUrl", saveParkUrl);
		
		String checkParkUrl = request.getRequestURI().replaceFirst("scan", "check");
		model.addAttribute("checkParkUrl", checkParkUrl);
		
		String shareParkUrl = request.getRequestURI().replaceFirst("scan", "share");
		model.addAttribute("shareParkUrl", shareParkUrl);
		
		return "saveAndShare";
	}
	
	/**
	 * 保存你的停车位置
	 * @param addr
	 * @param parkNo
	 * @param position
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="/save/{addr}/{parkNo}/{position}", method = RequestMethod.POST)
	public void saveLocation(@PathVariable String addr, @PathVariable String parkNo, 
			@PathVariable String position, HttpServletRequest request, HttpServletResponse response) throws IOException {
		///
		String cookieId = locationService.save(addr, parkNo, position);
		Cookie cookie = new Cookie("cookieId", cookieId);
		cookie.setMaxAge(60*60*24*7);//保留7天
		cookie.setPath("/");
		response.addCookie(cookie);
		response.getWriter().write(cookieId);
	}
	
	@RequestMapping(value="/check/{addr}/{parkNo}/{position}", method = RequestMethod.POST)
	public String checkParkPic(HttpServletRequest request, Model model, @CookieValue String cookieId) {
		// ///
		Location location = null;
		location = locationService.findOneByCookieId(cookieId);
		model.addAttribute("location", location);
		return "carpark_pic";
	}
	
	@RequestMapping(value="/check/{addr}/{parkNo}/{position}", method = RequestMethod.GET)
	public String getLocation(HttpServletRequest request) {
		String mapArea = "";
		/////
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie c = cookies[i];
				if ((c.getName().equals("cookieId"))) {
					String cookieId = c.getValue();
					Location location = locationService.findOneByCookieId(cookieId);
					mapArea = location.getMapArea();
				}
			}
		}

		return mapArea;
	}
	
	@RequestMapping(value="/share/{addr}/{parkNo}/{position}", method = RequestMethod.POST)
	public String sharePark(HttpServletRequest request, Model model) {
		return "sharePark";
	}
	
	@RequestMapping(value="/share/{addr}/{parkNo}/{position}", method = RequestMethod.GET)
	public String sharePark(@RequestParam String cookieId, Model model) {
		Location location = locationService.findOneByCookieId(cookieId);
		model.addAttribute("location", location);
		return "carpark_pic";
	}
	
	@RequestMapping("/")
	String jsp(Model model) {
		model.addAttribute("test", new Date());
		return "index";
	}
}
