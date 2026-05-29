/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Utils.DBUtils;
import dto.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DatNuoc
 */
public class CustomerDAO {
    // LOGIN
    public Customer login(String phone, String password) {

        String sql = "SELECT C.*, T.TierName "
           + "FROM Customers C "
           + "JOIN CustomerTiers T ON C.TierID = T.TierID "
           + "WHERE C.PhoneNumber = ? AND C.Password = ?";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, phone);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Customer customer = new Customer();

                customer.setCustomerID(rs.getInt("CustomerID"));
                customer.setFullName(rs.getString("FullName"));
                customer.setPhoneNumber(rs.getString("PhoneNumber"));
                customer.setPassword(rs.getString("Password"));
                customer.setEmail(rs.getString("Email"));
                customer.setAddress(rs.getString("Address"));
                customer.setTierID(rs.getInt("TierID"));
                customer.setTierName(rs.getString("TierName"));
                customer.setTotalBookings(rs.getInt("TotalBookings"));

                return customer;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    // REGISTER
    public boolean register(Customer customer) {

        String sql = "INSERT INTO Customers "
                + "(FullName, PhoneNumber, Password, "
                + "Email, Address, TierID)"
                + " VALUES(?,?,?,?,?,?)";
        

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, customer.getFullName());
            ps.setString(2, customer.getPhoneNumber());
            ps.setString(3, customer.getPassword());
            ps.setString(4, customer.getEmail());
            ps.setString(5, customer.getAddress());
            ps.setInt(6, customer.getTierID());

            int row = ps.executeUpdate();
            return row > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
    public Customer getCustomerByPhone(String phone) {
        String sql = "SELECT * FROM Customers WHERE PhoneNumber = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Customer c = new Customer();
                c.setCustomerID(rs.getInt("CustomerID"));
                c.setFullName(rs.getString("FullName"));
                // ... các field khác
                return c;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
}
