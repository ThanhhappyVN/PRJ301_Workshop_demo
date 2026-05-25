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

        String sql = "SELECT * FROM Customers "
                + "WHERE phone = ? AND password = ?";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, phone);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Customer customer = new Customer();

                customer.setCustomerID(rs.getInt("customerID"));
                customer.setFullName(rs.getString("fullName"));
                customer.setPhone(rs.getString("phone"));
                customer.setPassword(rs.getString("password"));
                customer.setLicensePlate(rs.getString("licensePlate"));
                customer.setTier(rs.getString("tier"));
                customer.setPoints(rs.getInt("points"));

                return customer;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    // REGISTER
    public boolean register(Customer customer) {

        String sql = "INSERT INTO Customers"
                + "(fullName, phone, password, "
                + "licensePlate, tier, points)"
                + " VALUES(?,?,?,?,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, customer.getFullName());
            ps.setString(2, customer.getPhone());
            ps.setString(3, customer.getPassword());
            ps.setString(4, customer.getLicensePlate());
            ps.setString(5, customer.getTier());
            ps.setInt(6, customer.getPoints());

            int row = ps.executeUpdate();

            return row > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}
