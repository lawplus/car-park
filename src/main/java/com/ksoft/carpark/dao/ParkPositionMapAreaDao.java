package com.ksoft.carpark.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.ksoft.carpark.model.ParkPositionMapArea;

/**
 * Desc: 
 * @author rongmin
 * create at 2014-10-21
 */
public interface ParkPositionMapAreaDao extends PagingAndSortingRepository<ParkPositionMapArea, String> {

	@Query
	ParkPositionMapArea findByAddressShortNameAndParkNoAndPosition(String addressShortName, String parkNo, String position);
}
