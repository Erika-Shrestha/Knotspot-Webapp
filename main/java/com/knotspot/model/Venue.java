package com.knotspot.model;

public class Venue {
	
	private int venueId;            //unique id of venue
    private String venueName;       //name of venue
    private String address;         // location of venue
    private String city;            // city where venue is located
    private long contactNumber;     // contact number for the venue
    private String venueType;       // Type of venue
    private int capacity;           // Capacity of the venue (number of people it can accommodate)
    private double rentFee;
    
    /**
     * A constructor initializes all attributes of the venue model
     * @param venueId : unique id of venue
     * @param venueName : name of venue
     * @param address : location of venue
     * @param city : city where venue is located
     * @param contactNumber : contact number for the venue
     * @param venueType : Type of venue	
     * @param capacity : Capacity of the venue (number of people it can accommodate)
     * @param rentFee : fee for renting venue
     */
	public Venue(int venueId, String venueName, String address, String city, long contactNumber, String venueType, int capacity, double rentFee) {
		this.venueId = venueId;
		this.venueName = venueName;
		this.address = address;
		this.city = city;
		this.contactNumber = contactNumber;
		this.venueType = venueType;
		this.capacity = capacity;
		this.rentFee = rentFee;
	}

	/**
	 * gets venue id 
	 * @return	venue id set by setter method 
	 */
	public int getVenueId() {
		return venueId;
	}
	
	/**
	 * sets the venue id for the global venue id variable 
	 * @param venueId 
	 */
	public void setVenueId(int venueId) {
		this.venueId = venueId;
	}
	
	
	public String getVenueName() {
		return venueName;
	}

	public void setVenueName(String venueName) {
		this.venueName = venueName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public long getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getVenueType() {
		return venueType;
	}

	public void setVenueType(String venueType) {
		this.venueType = venueType;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public double getRentFee() {
		return rentFee;
	}

	public void setRentFee(double rentFee) {
		this.rentFee = rentFee;
	}
	
	
    
    
    
}
