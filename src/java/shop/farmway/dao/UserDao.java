/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.dao;
//importing package
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import shop.farmway.model.ContactUs;
import shop.farmway.model.UserModel;

/**
 *
 * @author rshiroya
 */
public class UserDao {
    
    public String userRegister(UserModel users){
        try{
        Connection con = DatabaseConnection.connection(); // creating a connecting with database
        PreparedStatement st = con.prepareStatement("INSERT INTO usermodel VALUES(?, ?, ?, ?, ?, ?, ?, ?)"); //preparedStatement class to write in sql query
        st.setString(1, users.getFirstName()); //setting string 1 to getFirstName method in users UserModel model
        st.setString(2, users.getLastName()); //setting string 2 to getLastName method in users UserModel model
        st.setString(3, users.getSex()); //setting string 3 to getSex method in users UserModel model
        st.setString(4, users.getEmail()); //setting string 4 to getEmail method in users UserModel model
        st.setString(5, users.getAddress()); //setting string 5 to getAddress method in users UserModel model
        st.setString(6, users.getPassword()); //setting string 6 to getPassword method in users UserModel model
        st.setInt(7, Integer.valueOf(0)); //setting string 7 to increment of integer in users UserModel model
        st.setString(8, users.getFirstName()+users.getLastName()); //setting string 8 to getFirstName + getLastName method in users UserModel model
        
        st.executeUpdate(); // execute the preparedStatement class
        st.close(); // close the preparedStatement class
        con.close(); //closs the connection
        return "Success";
    }
        //if error 
    catch(Exception e){
        e.printStackTrace();}
    
    return "Fail";
}
    
    public String userLogin(UserModel users){
          try{
        Connection con = DatabaseConnection.connection();// creating a connecting with database
        PreparedStatement st = con.prepareStatement("select * from usermodel where username=? and password=?"); //preparedStatement class to write in sql query
        st.setString(1, users.getUsername()); //setting string 1 to getUsername method in users UserModel model
        st.setString(2, users.getPassword()); //setting string 2 to getPassword method in users UserModel model
        ResultSet rs = st.executeQuery(); // creating an instance of ResultSet class to execute the query
            while (rs.next()) {
               //if username and password user entered matches with those in database then success
               if(users.getUsername().equals(rs.getString("username")) && users.getPassword().equals(rs.getString("password"))){
                   
                   return "Success";
               }
            }
        st.close();  // close the preparedStatement class
        con.close(); //closs the connection
        
    }//if error
    catch(Exception e){
        e.printStackTrace();}
     return "Fail";
    }
    
    public String addContactUs(ContactUs user){
        try{
        Connection con = DatabaseConnection.connection(); // creating a connecting with database
        PreparedStatement st = con.prepareStatement("insert into contact values(?, ?, ?, ?)"); //preparedStatement class to write in sql query
        st.setInt(1, Integer.valueOf(0)); //setting string 1 to increment of integer in users ContactUs model
        st.setString(2, user.getName()); //setting string 2 to getName method in users ContactUs model
        st.setString(3, user.getEmail());//setting string 2 to getEmail method in users ContactUs model
        st.setString(4, user.getMessage());//setting string 2 to getMessage method in users ContactUs model
        
        st.executeUpdate(); //execute the preparedStatement
        st.close(); // close the preparedStatement class
        con.close();//closs the connection
        return "success";
    }//if error
    catch(Exception e){
        e.printStackTrace();}
     return "Fail";
    }
    
    public List<UserModel> getUsers(){
        
        try{
        Connection con = DatabaseConnection.connection();// creating a connecting with database
        PreparedStatement st = con.prepareStatement("select * from usermodel"); //preparedStatement class to write in sql query
        ResultSet rs = st.executeQuery();// creating an instance of ResultSet class to execute the query
        List<UserModel> user1 = new ArrayList<UserModel>(); //creating a new UserModel model using List class
        
            
            while (rs.next()) {
                // creating a new instance of UserModel model
               UserModel users = new UserModel();
               
               //importing the values from database table and assigning that value to UserModel instance users
               users.setFirstName(rs.getString("firstName")); 
               users.setLastName(rs.getString("lastName"));
               users.setSex(rs.getString("sex"));
               users.setEmail(rs.getString("email"));
               users.setAddress(rs.getString("address"));
               users.setPassword(rs.getString("password"));

               users.setUsername(rs.getString("username"));
               user1.add(users);
            }
        st.close();// close the preparedStatement class
        con.close();//closs the connection
        return user1;
        
    }//if error
    catch(Exception e){
        e.printStackTrace();
        
    }
        return null;
        
    }
    
    public List<ContactUs> getMessages(){
        try{
        Connection con = DatabaseConnection.connection();// creating a connecting with database
        PreparedStatement st = con.prepareStatement("select * from contact");//preparedStatement class to write in sql query
        ResultSet rs = st.executeQuery();// creating an instance of ResultSet class to execute the query
        List<ContactUs> user1 = new ArrayList<ContactUs>(); //creating a new ContactUs model using List class
        
        
            while (rs.next()) {
                // creating a new instance of ContactUs model
               ContactUs users = new ContactUs();
                //importing the values from database table and assigning that value to UserModel instance users
               users.setName(rs.getString("name"));
               users.setEmail(rs.getString("email"));
               users.setMessage(rs.getString("message"));
               user1.add(users);
            }
        st.close();// close the preparedStatement class
        con.close();//closs the connection
        return user1;
        
    }//if error
    catch(Exception e){
        e.printStackTrace();
        
    }
        return null;
        
    }
  }

