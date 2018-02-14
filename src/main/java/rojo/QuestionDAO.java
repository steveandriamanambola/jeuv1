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
import connexion.Connexion;
import java.util.List;
import org.bson.types.ObjectId;

/**
 *
 * @author HP
 */
public class QuestionDAO {
     AvatarD[] ct= new AvatarD[50];
     Connexion mon = new Connexion();

         public ArrayList<QuestionD> Find_list() throws Exception {
       QuestionD x = null;
       ArrayList<QuestionD> question = new ArrayList<QuestionD>();
       try {
       DB db = mon.getConnection();
       DBCollection collection = db.getCollection("Question");
       DBObject obj = null;
       DBCursor cursor = null;
       cursor = collection.find();
       while (cursor.hasNext()) {
           obj = cursor.next();
                        ObjectId id  = (ObjectId)(obj.get("_id"));
                        String nom = String.valueOf(obj.get("Question"));
           x = new QuestionD(id, nom);
           question.add(x);
       }
      } 
        catch (MongoException e) 
        {
            e.printStackTrace();
        }
       return question;

   }
        
        
        
    public void insert(String nom) throws Exception {
        try {
            DB db = mon.getConnection();
            DBCollection table = db.getCollection("Question");
            BasicDBObject document = new BasicDBObject();
            document.put("Question", nom);
            table.insert(document);}
         catch (MongoException e) {
            e.printStackTrace();
        }
    }
}
