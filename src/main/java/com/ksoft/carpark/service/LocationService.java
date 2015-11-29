package com.ksoft.carpark.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ksoft.carpark.model.Location;


/**
 * Desc: 
 * @author rongmin
 * create at 2015-3-17
 */
public interface LocationService {
	
	String save(String addr, String parkNo, String position);
	
	Location findOneByCookieId(String cookieId);
	
	
	
	void delete(Location location);
	
	Location save(Location location);
	
	Location findByName(String name);
	
	int update(Location location);
	
	/**
	 * 按条件查询
	 * @param paramMap
	 * @return
	 */
	Page<Location> findAll(final Map<String, String> paramMap, final Pageable pageable);

	List<Location> findAllByToken(String token);
	
	Location findById(String id);
}
