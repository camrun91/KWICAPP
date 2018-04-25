/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import javax.ejb.Stateless;

/**
 *
 * @author cameron
 */
@Stateless
public class mySession implements mySessionRemote {
    Controller controller = new Controller();
    Connection myConnObj = null;
    Statement myStateObj = null;
    Statement myStateObj2 = null;
    ResultSet myresObj  = null;
    ResultSet myresObj2  = null;
    String query = "Select * from SE.URL ";
    
    @Override
    public void setToDatabase(String input) {
        try{
            //String name=" ";
            
            ArrayList<String> lines;
            ArrayList<String> inputl;
            myConnObj = DriverManager.getConnection("jdbc:derby://localhost:1527/Kwic", "se", "Password1234");
            myStateObj = myConnObj.createStatement();
            myStateObj2 = myConnObj.createStatement();
            myresObj= myStateObj.executeQuery(query);
            String s = "";
            inputl = new ArrayList<>(Arrays.asList(input.split("\\r?\\n")));
            inputl.forEach((String str)->{
                int idx = str.indexOf("http://");
               String name = str.substring(0,idx);
               String url = str.substring(idx);
              try{
                       name = "'"+name+"'";
                       url = "'"+url+"'";
                    myStateObj2.executeUpdate("insert into se.URL (line, url)values ("+name+","+url+")");
                    }
                    catch(java.sql.SQLException e){
                        e.printStackTrace();
                    }
            });
            myStateObj = myConnObj.createStatement();
            myresObj= myStateObj.executeQuery(query);
            while(myresObj.next()){
                int id =myresObj.getInt("URL_ID");
                String line = myresObj.getString("Line");
                line = line.trim();
                s =controller.processCircularShift(line);
                lines = new ArrayList<>(Arrays.asList(s.split("\\r?\\n")));
                lines.forEach((phrase) -> {
                    try{
                        phrase = "'"+phrase+"'";
                        phrase = phrase.trim();
                    myStateObj2.executeUpdate("insert into se.shifted values ("+id+","+phrase+")");
                    }
                    catch(java.sql.SQLException e){
                        e.printStackTrace();
                    }
                });
            }
        }   
        catch(java.sql.SQLException e){
            e.printStackTrace();
        }
    }
    
    

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public String search(String s) {
        String results= "";
        String querystr = "";
        ArrayList<String> inputl;
        inputl = new ArrayList<>(Arrays.asList(s.split("\\s+")));
        querystr= inputl.get(0);
        if(querystr.equals("best")){
            querystr = " best";
        }
        query = "select ID from se.SHIFTED where Line like '"+querystr+"%'";

        try{
        myConnObj = DriverManager.getConnection("jdbc:derby://localhost:1527/Kwic", "se", "Password1234");
            myStateObj = myConnObj.createStatement();
            myStateObj2 = myConnObj.createStatement();
            myresObj= myStateObj.executeQuery(query);
            while(myresObj.next()){
                int id =myresObj.getInt("ID");
                myresObj2=myStateObj2.executeQuery("select Line, URL from se.URL where URL_ID = "+id);
                while(myresObj2.next()){
                    results = results +myresObj2.getString("Line")+" "+myresObj2.getString("URL")+("\n");
                }  
            }
        }
        catch(java.sql.SQLException e){
             e.printStackTrace();
            
        }
        return results;
    }
}
