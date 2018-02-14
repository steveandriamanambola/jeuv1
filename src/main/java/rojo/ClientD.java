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
public class ClientD {
        private ObjectId id ;
	private String nom;
	private String prenom;
	private String age;
	private String loisir;
	private String description;
        private int jaime;
        private String avatar;
        private int pourcentage;
        private int admin;
        private String mdp;
        private String image;
        

	
	public ClientD(ObjectId i, String n, String p, String a, String l, String d,int j,String av,int pourc,int ad,String pass,String img)
	{
		id = i ;
		nom =n;
		prenom =p;
		age =a;
		loisir =l;
		description =d;
                jaime=j;
                avatar=av;
                pourcentage=pourc;
                admin=ad;
                mdp=pass;
                image=img;
                
                

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
	public void set_age(String go)
	{
		age = go;

	}
        public void set_loisir(String l)
	{
		loisir = l;

	}
	public void set_description(String d)
	{
		description = d;
	}
	public void set_jaime(int j)
	{
		jaime = j;

	}
        public void set_avatare(String a)
	{
		avatar = a;

	}
	public void set_pourcentage(int pourc)
	{
		pourcentage = pourc;
	}
	public void set_admin(int ad)
	{
		admin = ad;
	}
        public void set_pass(String pass)
	{
		mdp = pass;
	}
        public void set_img(String img)
	{
		image = img;
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
			public int get_jaime()
			{
				return jaime;
			}
			public String get_avatare()
			{
				return avatar;
			}
			public int get_pourcentage()
			{
				return pourcentage;
			}
			public int get_admin()
			{
				return admin;
			}
			public String get_pass()
			{
				return mdp;
			}
			public String get_img()
			{
				return image;
			}
}
