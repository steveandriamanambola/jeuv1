/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;

/**
 *
 * @author natha
 */
import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

/**
 *
 * @author Bae
 */
public class Connexion {

    DB db;
    MongoClient mongoclient;

    public DB getConnection() throws Exception{ 
        
        try {
           MongoClientURI mongo = new MongoClientURI("mongodb://steve:steve@ds235418.mlab.com:35418/rojo");
            mongoclient = new MongoClient(mongo);
            
            //db = mongoclient.getDB("film");

            System.out.println("mande le base");
         
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
           return db=mongoclient.getDB("rojo");
    }
} /* MongoClient mongo = new MongoClient("localhost", 27017);*/

