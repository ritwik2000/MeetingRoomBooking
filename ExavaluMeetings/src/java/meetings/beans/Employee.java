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
public class Employee {
   private String empId;
   private String empName;
   private String deptId;
   private String email;
   private String password;
   private String phone;
  

    /**
     * @return the empId
     */
    public String getEmpId() {
        return empId;
    }

    /**
     * @param empId the empId to set
     */
    public void setEmpId(String empId) {
        this.empId = empId;
    }

    /**
     * @return the empName
     */
    public String getEmpName() {
        return empName;
    }

    /**
     * @param empName the empName to set
     */
    public void setEmpName(String empName) {
        this.empName = empName;
    }

    /**
     * @return the deptId
     */
    public String getDeptId() {
        return deptId;
    }

    /**
     * @param deptId the deptId to set
     */
    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
}
