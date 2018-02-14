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
public class QuestionD {
    	private ObjectId id ;
	private String question;

	
	public QuestionD(ObjectId i, String n)
	{
		id = i ;
		question =n;

	} 
	public void set_id(ObjectId i)
	{
		id = i;
	}
	public void set_question(String n)
	{
		question = n;
        }
    public ObjectId get_id()
	{
		return id;
	}
	public String get_question()
	{
		return question;
	}

}
