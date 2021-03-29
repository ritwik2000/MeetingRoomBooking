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
public class BookMeetings {
    private int meetingId;
    private String day;
    private String time;
    private int empID;
    private String endTime;
    private String status;

    /**
     * @return the meetingId
     */
    public int getMeetingId() {
        return meetingId;
    }

    /**
     * @param meetingId the meetingId to set
     */
    public void setMeetingId(int meetingId) {
        this.meetingId = meetingId;
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
     * @return the empID
     */
    public int getEmpID() {
        return empID;
    }

    /**
     * @param empID the empID to set
     */
    public void setEmpID(int empID) {
        this.empID = empID;
    }

    /**
     * @return the endTime
     */
    public String getEndTime() {
        return endTime;
    }

    /**
     * @param endTime the endTime to set
     */
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
}
