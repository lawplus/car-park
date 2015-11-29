package com.ksoft.carpark.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ksoft.carpark.dao.LocationDao;
import com.ksoft.carpark.dao.ParkPositionMapAreaDao;
import com.ksoft.carpark.model.Location;
import com.ksoft.carpark.model.ParkPositionMapArea;

/**
 * Desc: 
 * @author rongmin
 * create at 2015-3-18
 */
@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationDao locationDao;
	
	@Autowired
	private ParkPositionMapAreaDao parkPositionMapAreaDao;
	
	private static final SimpleDateFormat SDF = new SimpleDateFormat("yyyyMMddHHmmss");
	
	@Override
	public void delete(Location menu) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Location save(Location menu) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Location findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Location menu) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Page<Location> findAll(Map<String, String> paramMap,
			Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Location> findAllByToken(String token) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Location findOneByCookieId(String cookieId) {
		return locationDao.findByCookieId(cookieId);
	}


	@Override
	public Location findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String save(String addressShortName, String parkNo, String position) {
		
		Date date = new Date();
		
		Location location = new Location();
		location.setAddressShortName(addressShortName);
		location.setParkNo(parkNo);
		location.setPosition(position);
		
		//find map area
		ParkPositionMapArea parkPositionMapArea = 
				parkPositionMapAreaDao.findByAddressShortNameAndParkNoAndPosition(addressShortName, parkNo, position);
		location.setMapArea(parkPositionMapArea.getMapArea());//shape="rect" coords="803,41,989,79" />
		
		location.setCreated(date);
		
		String cookieId = addressShortName + "-" + parkNo + "-" + position + SDF.format(date) + RandomUtils.nextInt(0, 100);
		
		location.setCookieId(cookieId);
		
		locationDao.save(location);
		return cookieId;
	}
	
	
}
