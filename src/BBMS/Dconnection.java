 package BBMS;

import java.sql.*;


 
public class Dconnection {
    
    Connection c;
    Statement s;
    
    
    public Dconnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver"); 
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbms","root","");
            s = c.createStatement();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
