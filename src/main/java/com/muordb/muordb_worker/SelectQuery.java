package com.muordb.muordb_worker;

public class SelectQuery {

    int from;

    public SelectQuery from(String essenceName){

        return this;
    }

    public SelectQuery from(int k_ess){
        from = k_ess;
        return this;
    }

    public void send(){

    }

}
