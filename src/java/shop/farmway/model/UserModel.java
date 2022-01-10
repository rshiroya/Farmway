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
public class UserModel {
    //creating variabless
    private String firstName;
    private String lastName;
    private String sex;
    private String email;
    private String address;
    private String password;
    private String username;
    
    public UserModel(){
    firstName = "null";
    lastName = "null";
    sex = "null";
    email = "null";
    address = "null";
    password = "null";
    username = "null";
}
    //setter and getter methods
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public UserModel(String firstName, String lastName, String sex, String email, String address, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.sex = sex;
        this.email = email;
        this.address = address;
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserModel{" + "firstName=" + firstName + ", lastName=" + lastName + ", username ="+username +", sex=" + sex + ", email=" + email + ", address=" + address + ", password=" + password + '}';
    }

   
}
