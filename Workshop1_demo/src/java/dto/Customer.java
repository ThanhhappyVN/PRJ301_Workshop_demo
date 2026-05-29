/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author DatNuoc
 */
public class Customer {
    private int customerID;
    private String fullName;
    private String phoneNumber;
    private String email;
    private String address;
    private int tierID;
    private String password;
    private String tierName;
    private int totalBookings;

    public Customer() {
    }

    public Customer(int customerID,
            String fullName,
            String phoneNumber,
            String email,
            String address,
            int tierID,
            String password) {

        this.customerID = customerID;
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.tierID = tierID;
        this.password = password;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getTierID() {
        return tierID;
    }

    public void setTierID(int tierID) {
        this.tierID = tierID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTierName() {
        return tierName;
    }

    public int getTotalBookings() {
        return totalBookings;
    }

    public void setTierName(String tierName) {
        this.tierName = tierName;
    }

    public void setTotalBookings(int totalBookings) {
        this.totalBookings = totalBookings;
    }
    
}
