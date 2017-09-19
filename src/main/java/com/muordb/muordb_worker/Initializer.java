package com.muordb.muordb_worker;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Initializer {

    Connection conn;
    Muordb muordb;

    public static void main(String[] args){
        new Initializer();
    }

    public Initializer(){
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://192.168.56.101:5432/muordb", "danya", "kokoko");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        muordb = new Muordb(conn);
        muordb.printRtab1();

    }

}
