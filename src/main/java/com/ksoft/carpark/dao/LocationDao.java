package com.ksoft.carpark.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.ksoft.carpark.model.Location;

/**
 * Desc: 
 * @author rongmin
 * create at 2014-10-21
 */
public interface LocationDao extends PagingAndSortingRepository<Location, String> {

	@Query
	Location findByCookieId(String cookieId);
	

}
