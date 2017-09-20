package com.muordb.muordb_worker;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Muordb {

    private Connection conn;

    public Muordb(Connection connection){
        this.conn = connection;

    }

    public void printRtab1(){

        try(PreparedStatement ps = conn.prepareStatement("Select * from rtab1");
            ResultSet rs = ps.executeQuery()) {

            while(rs.next()){
                System.out.println(rs.getInt("k_v") + " " + rs.getString("val"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public SelectQuery createSelectQuery(){
        return new SelectQuery();
    }



}
