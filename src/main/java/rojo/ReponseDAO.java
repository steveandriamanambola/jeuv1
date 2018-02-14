/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rojo;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoException;
import connexion.Connexion;
import java.util.ArrayList;
import java.util.List;
import org.bson.types.ObjectId;

/**
 *
 * @author HP
 */
public class ReponseDAO {
     AvatarD[] ct= new AvatarD[50];
     Connexion mon = new Connexion();

         public List<ReponseD> Find_list() throws Exception {
       ReponseD x = null;
       List<ReponseD> Reponse = new ArrayList<ReponseD>();
       try {
       DB db = mon.getConnection();
       DBCollection collection = db.getCollection("Reponse");
       DBObject obj = null;
       DBCursor cursor = null;
       cursor = collection.find();
       while (cursor.hasNext()) {
           obj = cursor.next();
                        ObjectId id  = (ObjectId)(obj.get("_id"));
                        String avatar = String.valueOf(obj.get("Avatar"));
                        String question = String.valueOf(obj.get("Question"));
                        String reponse1 = String.valueOf(obj.get("Reponse1"));
                        String reponse2 = String.valueOf(obj.get("Reponse2"));
                        String reponse3 = String.valueOf(obj.get("Reponse3"));
                          String point = String.valueOf(obj.get("Points"));
                        int pts=Integer.parseInt(point);
           x = new ReponseD(id, avatar, question, reponse1, reponse2, reponse3,pts);
           Reponse.add(x);
       }
      } 
        catch (MongoException e) 
        {
            e.printStackTrace();
        }
       return Reponse;

   }
         
   
       public ArrayList<ReponseD> Find_list1(String nama ) throws Exception {
       ReponseD x = null;
       ArrayList<ReponseD> Avatar = new ArrayList<ReponseD>();
       try {
       DB db = mon.getConnection();
       DBCollection collection = db.getCollection("Reponse");
       DBObject obj = null;
       DBCursor cursor = null;
       BasicDBObject condition = new BasicDBObject("Avatar",nama);
       cursor = collection.find(condition);
       while (cursor.hasNext()) {
           obj = cursor.next();
                        ObjectId id  = (ObjectId)(obj.get("_id"));
                        String avatar = String.valueOf(obj.get("Avatar"));
                        String question = String.valueOf(obj.get("Question"));
                        String reponse1 = String.valueOf(obj.get("Reponse1"));
                        String reponse2 = String.valueOf(obj.get("Reponse2"));
                        String reponse3 = String.valueOf(obj.get("Reponse3"));
                        String point = String.valueOf(obj.get("Points"));
                        int pts=Integer.parseInt(point);
           x = new ReponseD(id, avatar, question, reponse1, reponse2, reponse3,pts);
           Avatar.add(x);
       }
      } 
        catch (MongoException e) 
        {
            e.printStackTrace();
        }
       return Avatar;

   }
        
        
        
    public void insert(String Avatar, String Question, String Reponse1, String Reponse2, String Reponse3,int Points) throws Exception {
        try {
            DB db = mon.getConnection();
            DBCollection table = db.getCollection("Reponse");
            BasicDBObject document = new BasicDBObject();
            document.put("Avatar", Avatar);
            document.put("Question", Question);
            document.put("Reponse1", Reponse1);
            document.put("Reponse2", Reponse2);
            document.put("Reponse3", Reponse3);
            document.put("Points", Points);
            table.insert(document);
        }
         catch (MongoException e) {
            e.printStackTrace();
        }
    }
    
    public void updateCustomers(String nom, String point) throws Exception {
        DB db = mon.getConnection();
        DBCollection table = db.getCollection("Reponse");
        BasicDBObject query = new BasicDBObject();
        query.put("first_name", nom);

        BasicDBObject newDocument = new BasicDBObject();
        newDocument.put("first_name", point);

        BasicDBObject updateObj = new BasicDBObject();
        updateObj.put("$set", newDocument);
        table.update(query, updateObj);
    }
}
