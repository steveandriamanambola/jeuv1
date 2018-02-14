/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rojo;

/**
 *
 * @author HP
 */

import com.mongodb.DB;
import com.mongodb.MongoClient;

public class connexion {
        DB db;

    public DB getConnection() throws Exception {
        MongoClient mongo = new MongoClient("localhost", 27017);
        return db = mongo.getDB("rojo");
        //return db = mongo.getDB("clouddb");
    }
}

