/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.miage.demo.domain;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;

/**
 *
 * @author david
 */
public class User extends org.springframework.security.core.userdetails.User {
    
    private String mail; 

    private String lastName;
    
    private String firstName; 
    
    public User(String uid, String password, Collection<? extends GrantedAuthority> authorities, 
            String mail, String lastName, String firstName) {
        super(uid, password, authorities);        
        this.mail = mail;
        this.lastName = lastName;
        this.firstName = firstName;
    }
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    @Override
    public String toString() {
        return "User{ username=" + super.getUsername() + ", roles="+super.getAuthorities().toString() +", mail=" + mail + ", lastName=" + lastName + ", firstName=" + firstName + '}';
    }
    
    
}
