package com.omniwyse.vod.db;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dieselpoint.norm.Database;

@Service
public class DBFactory {


    private final DBConnectionProperties dbProperties;
    private final Database vodDB;

    @Autowired
    public DBFactory(DBConnectionProperties dbProperties) {
        this.dbProperties = dbProperties;
        System.setProperty("norm.jdbcUrl", dbUrl("vod"));
        System.setProperty("norm.user", dbProperties.user());
        System.setProperty("norm.password", dbProperties.password());
        vodDB = new Database();
    }

    

    public Database getSchoolDb() {
        return vodDB;
    }

    private String dbUrl(String schema) {
        return "jdbc:mysql://" + dbProperties.host() + ":" + dbProperties.port() + "/" + schema + "?useSSL=false";
    }


}