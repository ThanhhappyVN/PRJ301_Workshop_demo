/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Utils.DBUtils;
import dto.Car;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DatNuoc
 */
public class CarDAO {
    //ham nay de lay all cars trong DB
    //dua vao CustId
    //tra ve ds car
    public List<Car>getAllCars(int cusId) {
        List<Car> result = new ArrayList<>();
        Connection cn=null;
        try{
            cn=DBUtils.getConnection();
            if(cn!=null){
                String sql="SELECT [VehicleID]\n" +
"      ,[CustomerID]\n" +
"      ,[LicensePlate]\n" +
"      ,[Brand]\n" +
"      ,[Model]\n" +
"      ,[Color]\n" +
"      ,[CreatedAt]\n" +
"  FROM [CarWashDB].[dbo].[Vehicles]\n" +
"  WHERE CustomerID=?";
                PreparedStatement st=cn.prepareStatement(sql);
                st.setInt(1,cusId);
                ResultSet table=st.executeQuery();
                if(table!=null){
                    while(table.next()){
                        int id=table.getInt("VehicleID");
                        String liPlate=table.getString("LicensePlate");
                        String brand=table.getString("Brand");
                        String model=table.getString("Model");
                        String color=table.getString("Color");
                        Date date = table.getDate("CreatedAt");
                        Car c = new Car(id,cusId,liPlate,brand,model,color,date);
                        result.add(c);
                    }
                }
            }
        } catch (Exception e){
            e.printStackTrace();
        } finally {

            try {

                if (cn != null) {
                    cn.close();
                }

            } catch (Exception e) {

                e.printStackTrace();
            }
        }
        return result;
    }
    public boolean register(Car car) {
        String sql = "INSERT INTO Vehicles "
                + "(CustomerID, LicensePlate, Brand, Model, Color) "
                + "VALUES (?, ?, ?, ?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, car.getCustomerID());
            ps.setString(2, car.getLicensePlate());
            ps.setString(3, car.getBrand());
            ps.setString(4, car.getModel());
            ps.setString(5, car.getColor());
            int row = ps.executeUpdate();
            return row > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    return false;
    }
}
