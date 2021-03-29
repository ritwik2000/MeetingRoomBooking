/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package meetings.utilities;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Avijit Chattopadhyay
 */
public class ConnectionProviderToDB {

    private static ConnectionProviderToDB connectionProviderToDB = null;

    public static ConnectionProviderToDB getConnectionObject() {
        if (connectionProviderToDB == null) {
            connectionProviderToDB = new ConnectionProviderToDB();
        }

        return connectionProviderToDB;

    }

    //This is private constructor
    private ConnectionProviderToDB() {

    }

    public static Connection getConnection(InputStream inputFile) {
        Connection connection = null;

        try {
            DbParamProvider dbParamProvider = PropertiesReader.readProperties(inputFile);
            //step1 load the driver class
            Class.forName(dbParamProvider.getDriver());
            //step2 create  the connection object  
            connection = DriverManager.getConnection(dbParamProvider.getDbUrl() + dbParamProvider.getDbName(), dbParamProvider.getUserName(), dbParamProvider.getPassword());
            System.out.println("Connection object=" + connection);
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
//            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }

        return connection;

    }

}
