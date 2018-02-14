/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rojo;

import org.bson.types.ObjectId;

/**
 *
 * @author HP
 */
public class ReponseD {
    	private ObjectId id ;
	private String avatar;
	private String question;
	private String reponse1;
	private String reponse2;
	private String reponse3;
        private int points;

	
	public ReponseD(ObjectId i, String a, String n, String r1, String r2, String r3,int pts)
	{
		id = i ;
		avatar=a;
		question =n;
		reponse1=r1;
		reponse2=r2;
		reponse3=r3;
                points=pts;

	} 
	public void set_id(ObjectId i)
	{
		id = i;
	}
	public void set_avatar(String a)
	{
		avatar = a;
	}
	public void set_question(String n)
	{
		question = n;
	}
	public void set_rep1(String r1)
	{
		reponse1 = r1;
	}
	public void set_rep2(String r2)
	{
		reponse2 = r2;
	}
	public void set_rep3(String r3)
	{
		reponse3 = r3;
	}
        public void set_points(int pts)
	{
		points = pts;
	}

		
	public ObjectId get_id()
	{
		return id;
	}
	public String get_avatar()
	{
		return avatar;
	}
	public String get_question()
	{
		return question;
	}
	public String get_rep1()
	{
		return reponse1;
	}
	public String get_rep2()
	{
		return reponse2;
	}
	public String get_rep3()
	{
		return reponse3;
	}
        public int get_pts()
	{
		return points;
	}
}
