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
import java.util.ArrayList;
import java.util.List;
import org.bson.types.ObjectId;

/**
 *
 * @author HP
 */
public class ClientDAO {
        AvatarD[] ct= new AvatarD[50];
       connexion mon = new connexion();

       public ArrayList<ClientD> Find_list1(int n ) throws Exception {
       ClientD x = null;
       ArrayList<ClientD> Avatar = new ArrayList<ClientD>();
       try {
       DB db = mon.getConnection();
       DBCollection collection = db.getCollection("Client");
       DBObject obj = null;
       DBCursor cursor = null;
       BasicDBObject condition = new BasicDBObject("admin",n);
       cursor = collection.find(condition);
       while (cursor.hasNext()) {
           obj = cursor.next();
                        ObjectId id  = (ObjectId)(obj.get("_id"));
                        String nom = String.valueOf(obj.get("Nom"));
                        String prenom = String.valueOf(obj.get("Prenom"));
                        String age = String.valueOf(obj.get("Age"));
                        String loisir = String.valueOf(obj.get("loisir"));
                        String description = String.valueOf(obj.get("description"));
                        String jaime = String.valueOf(obj.get("jaime"));
                        String avatare = String.valueOf(obj.get("avatar"));
                        String pourcentage = String.valueOf(obj.get("pourcentage"));
                        String admin = String.valueOf(obj.get("admin"));
                        String pass = String.valueOf(obj.get("mdp"));
                        String img = String.valueOf(obj.get("img"));
                        int j=Integer.parseInt(jaime);
                        int p=Integer.parseInt(pourcentage);
                        int a=Integer.parseInt(admin);
                        
           x = new ClientD(id, nom, prenom, age, loisir, description,j,avatare,p,a,pass,img);
           Avatar.add(x);
       }
      } 
        catch (MongoException e) 
        {
            e.printStackTrace();
        }
       return Avatar;

   }
       
       public ArrayList<ClientD> Find_list() throws Exception {
       ClientD x = null;
       ArrayList<ClientD> Avatar = new ArrayList<ClientD>();
       try {
       DB db = mon.getConnection();
       DBCollection collection = db.getCollection("Client");
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
                        String jaime = String.valueOf(obj.get("jaime"));
                        String avatare = String.valueOf(obj.get("avatar"));
                        String pourcentage = String.valueOf(obj.get("pourcentage"));
                        String admin = String.valueOf(obj.get("admin"));
                        String pass = String.valueOf(obj.get("mdp"));
                        String img = String.valueOf(obj.get("img"));
                        int j=Integer.parseInt(jaime);
                        int p=Integer.parseInt(pourcentage);
                        int a=Integer.parseInt(admin);
                        
           x = new ClientD(id, nom, prenom, age, loisir, description,j,avatare,p,a,pass,img);
           Avatar.add(x);
       }
      } 
        catch (MongoException e) 
        {
            e.printStackTrace();
        }
       return Avatar;

   
       }      
        
        
    public void insert(String nom, String prenom, String age, String loisir, String description, int jaime, String avat,int p,int admin,String pass) throws Exception {
        try {
            DB db = mon.getConnection();
            DBCollection table = db.getCollection("Client");
            BasicDBObject document = new BasicDBObject();
            document.put("Nom", nom);
            document.put("Prenom", prenom);
            document.put("Age", age);
            document.put("loisir", loisir);
            document.put("description", description);
            document.put("jaime", jaime);
            document.put("avatar", avat);
            document.put("pourcentage", p);
            document.put("admin", admin);
            document.put("mdp", pass);
            table.insert(document);}
         catch (MongoException e) {
            e.printStackTrace();
        }
    }
}
