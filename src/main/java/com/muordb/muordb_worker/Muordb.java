package com.muordb.muordb_worker;

import java.sql.Connection;

public class Muordb {

    private Connection conn;

    public Muordb(Connection connection){
        this.conn = connection;

    }
}
