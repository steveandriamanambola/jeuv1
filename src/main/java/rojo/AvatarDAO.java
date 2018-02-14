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
import java.sql.*;
import java.lang.*;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoException;
import com.mongodb.QueryBuilder;
import connexion.Connexion;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import org.bson.types.ObjectId;


public class AvatarDAO {
       AvatarD[] ct= new AvatarD[50];
      Connexion mon = new Connexion();

       public ArrayList<AvatarD> Find_list1(String n ) throws Exception {
       AvatarD x = null;
       ArrayList<AvatarD> Avatar = new ArrayList<AvatarD>();
       try {
       DB db = mon.getConnection();
       DBCollection collection = db.getCollection("Avatar");
       DBObject obj = null;
       DBCursor cursor = null;
       BasicDBObject condition = new BasicDBObject("Nom",n);
       cursor = collection.find(condition);
       while (cursor.hasNext()) {
           obj = cursor.next();
                        ObjectId id  = (ObjectId)(obj.get("_id"));
                        String nom = String.valueOf(obj.get("Nom"));
                        String prenom = String.valueOf(obj.get("Prenom"));
                        String age = String.valueOf(obj.get("Age"));
                        String loisir = String.valueOf(obj.get("loisir"));
                        String description = String.valueOf(obj.get("description"));
           x = new AvatarD(id, nom, prenom, age, loisir, description);
           Avatar.add(x);
       }
      } 
        catch (MongoException e) 
        {
            e.printStackTrace();
        }
       return Avatar;

   }
       
       public ArrayList<AvatarD> Find_list() throws Exception {
       AvatarD x = null;
       ArrayList<AvatarD> Avatar = new ArrayList<AvatarD>();
       try {
       DB db = mon.getConnection();
       DBCollection collection = db.getCollection("Avatar");
       DBObject obj = null;
       DBCursor cursor = null;
       cursor = collection.find();
       while (cursor.hasNext()) {
           obj = cursor.next();
                        ObjectId id  = (ObjectId)(obj.get("_id"));
                        String nom = String.valueOf(obj.get("Nom"));
                        String prenom = String.valueOf(obj.get("Prenom"));
                        String age = String.valueOf(obj.get("Age"));
                        String loisir = String.valueOf(obj.get("loisir"));
                        String description = String.valueOf(obj.get("description"));
           x = new AvatarD(id, nom, prenom, age, loisir, description);
           Avatar.add(x);
       }
      } 
        catch (MongoException e) 
        {
            e.printStackTrace();
        }
       return Avatar;

   
       }      
        
        
    public void insert(String nom, String prenom, String age, String loisir, String description) throws Exception {
        try {
            DB db = mon.getConnection();
            DBCollection table = db.getCollection("Avatar");
            BasicDBObject document = new BasicDBObject();
            document.put("Nom", nom);
            document.put("Prenom", prenom);
            document.put("Age", age);
            document.put("loisir", loisir);
            document.put("description", description);
            table.insert(document);}
         catch (MongoException e) {
            e.printStackTrace();
        }
    }

    }

