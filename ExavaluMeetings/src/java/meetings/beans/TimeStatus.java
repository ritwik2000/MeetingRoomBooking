/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package meetings.beans;

/**
 *
 * @author RITWIK
 */
public class TimeStatus {
    private int deptID;
    private String time;
    private String day;
    private int availability;

    /**
     * @return the deptID
     */
    public int getDeptID() {
        return deptID;
    }

    /**
     * @param deptID the deptID to set
     */
    public void setDeptID(int deptID) {
        this.deptID = deptID;
    }

    /**
     * @return the time
     */
    public String getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * @return the day
     */
    public String getDay() {
        return day;
    }

    /**
     * @param day the day to set
     */
    public void setDay(String day) {
        this.day = day;
    }

    /**
     * @return the availability
     */
    public int getAvailability() {
        return availability;
    }

    /**
     * @param availability the availability to set
     */
    public void setAvailability(int availability) {
        this.availability = availability;
    }
    
}
