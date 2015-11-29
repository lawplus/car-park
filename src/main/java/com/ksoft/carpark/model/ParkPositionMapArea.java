package com.ksoft.carpark.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Desc: 停车位置的地图坐标
 * @author rongmin
 */
@Entity
@Table(/*schema="car_park",*/name="Park_Position_Map_Area")
public class ParkPositionMapArea {
	
	@Id
	@GenericGenerator(name = "systemUUID", strategy = "uuid")
	@GeneratedValue(generator = "systemUUID")
	private String id;
	
	@Column
	private String address;
	
	/**
	 * 居住小区的英文简称
	 */
	/*@Column(insertable=true, updatable=false)*/
	@Column(length = 50/*, unique = true*/)
	private String addressShortName;
	
	/**
	 * 停车场的英文简称，一小区里可能有多个
	 */
	@Column(length = 50)
	private String parkNo;
	
	/**
	 * 停车位置，放置二维码的地方标识
	 */
	@Column(length = 50)
	private String position;
	
	/**
	 * 地图区域
	 */
	private String mapArea;
	
	
	@Column(insertable=true, updatable=false)
	private Date created;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressShortName() {
		return addressShortName;
	}

	public void setAddressShortName(String addressShortName) {
		this.addressShortName = addressShortName;
	}

	public String getParkNo() {
		return parkNo;
	}

	public void setParkNo(String parkNo) {
		this.parkNo = parkNo;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getMapArea() {
		return mapArea;
	}

	public void setMapArea(String mapArea) {
		this.mapArea = mapArea;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

}
