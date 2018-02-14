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
public class AvatarD {
    private ObjectId id ;
	private String nom;
	private String prenom;
	private String age;
	private String loisir;
	private String description;

	
	public AvatarD(ObjectId i, String n, String p, String a, String l, String d)
	{
		id = i ;
		nom =n;
		prenom =p;
		age =a;
		loisir =l;
		description =d;

	} 
	public void set_id(ObjectId i)
	{
		id = i;
	}
	public void set_nom(String n)
	{
		nom = n;

	}
		public void set_prenom(String p)
	{
		prenom = p;
	}
	public void set_age(String a)
	{
		age = a;

	}
		public void set_loisir(String l)
	{
		loisir = l;

	}
		public void set_description(String d)
	{
		description = d;
	}


			public ObjectId get_id()
			{
				return id;
			}
			public String get_nom()
			{
				return nom;
			}
			public String get_prenom()
			{
				return prenom;
			}
			public String get_age()
			{
				return age;
			}
			public String get_loisir()
			{
				return loisir;
			}
			public String get_description()
			{
				return description;
			}

}
