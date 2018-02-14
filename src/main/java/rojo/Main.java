/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rojo;

import static java.lang.System.out;
import static java.time.Clock.system;
import java.util.ArrayList;

/**
 *
 * @author HP
 */
public class Main {
    public static void main(String[] args) throws Exception {
            AvatarDAO al= new AvatarDAO();
            ArrayList<AvatarD> Avatar = new ArrayList<AvatarD>();
            Avatar=al.Find_list();
            for(int i=0;i<Avatar.size();i++){
                    out.println(Avatar.get(i).get_nom());
                    out.println(Avatar.get(i).get_prenom()); 
                    out.println(Avatar.get(i).get_age());
                    out.println(Avatar.get(i).get_loisir());
                    out.println(Avatar.get(i).get_description());
              }
        }
}
