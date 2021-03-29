/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package meetings.utilities;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 *
 * @author Avijit Chattopadhyay
 */
public class PropertiesReader {

    public static DbParamProvider readProperties(InputStream inputFile) {
        DbParamProvider dbParamProvider = new DbParamProvider();
        //Now read the property file and extarct the properties to set into DbParamProvider class
        try {
            Properties p = new Properties();
//            FileReader reader;
//            reader = new FileReader(in);
            p.load(inputFile);
            System.out.println("property file:::"+p.toString());
            dbParamProvider.setDriver(p.getProperty("Driver"));
            dbParamProvider.setDbUrl(p.getProperty("URL"));
            dbParamProvider.setDbName(p.getProperty("DbName"));
            dbParamProvider.setUserName(p.getProperty("Uname"));
            dbParamProvider.setPassword(p.getProperty("Password"));
            System.out.println("Driver name=" + p.getProperty("Driver"));
            System.out.println("db_url =" + p.getProperty("URL"));
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
//            System.out.println(ex.getMessage());
        } catch (IOException ex) {
            ex.printStackTrace();
//            System.out.println(ex.getMessage());
        }

        return dbParamProvider;
    }

}
