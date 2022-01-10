/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.model;

/**
 *
 * @author rshiroya
 */
public class ContactUs {
    //creating variables
    private Integer cID;
    private String name;
    private String email;
    private String message;
    
    
    //setter and getter methods
    public Integer getcID() {
        return cID;
    }

    public void setcID(Integer cID) {
        this.cID = cID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "ContactUs{" + "cID=" + cID + ", name=" + name + ", email=" + email + ", message=" + message + '}';
    }
    
    
}
