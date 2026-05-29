/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.Date;


/**
 *
 * @author DatNuoc
 */
public class Car {
    private int vehicleID;
    private int customerID;
    private String licensePlate;
    private String brand;
    private String model;
    private String color;
    private Date createdAt;
 
    public Car() {
    }
 
    public Car(int vehicleID,
            int customerID,
            String licensePlate,
            String brand,
            String model,
            String color,
            Date createdAt) {
        this.vehicleID = vehicleID;
        this.customerID = customerID;
        this.licensePlate = licensePlate;
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.createdAt = createdAt;
    }
 
    public int getVehicleID() {
        return vehicleID;
    }
 
    public void setVehicleID(int vehicleID) {
        this.vehicleID = vehicleID;
    }
 
    public int getCustomerID() {
        return customerID;
    }
 
    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }
 
    public String getLicensePlate() {
        return licensePlate;
    }
 
    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }
 
    public String getBrand() {
        return brand;
    }
 
    public void setBrand(String brand) {
        this.brand = brand;
    }
 
    public String getModel() {
        return model;
    }
 
    public void setModel(String model) {
        this.model = model;
    }
 
    public String getColor() {
        return color;
    }
 
    public void setColor(String color) {
        this.color = color;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
    
}
