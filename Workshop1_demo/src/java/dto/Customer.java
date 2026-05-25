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
    private String phone;
    private String password;
    private String licensePlate;
    private String tier;
    private int points;

    public Customer() {
    }

    public Customer(int customerID, String fullName, String phone, String password, String licensePlate, String tier, int points) {
        this.customerID = customerID;
        this.fullName = fullName;
        this.phone = phone;
        this.password = password;
        this.licensePlate = licensePlate;
        this.tier = tier;
        this.points = points;
    }

    public int getCustomerID() {
        return customerID;
    }

    public String getFullName() {
        return fullName;
    }

    public String getPhone() {
        return phone;
    }

    public String getPassword() {
        return password;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public String getTier() {
        return tier;
    }

    public int getPoints() {
        return points;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    public void setTier(String tier) {
        this.tier = tier;
    }

    public void setPoints(int points) {
        this.points = points;
    }
    
    
}
