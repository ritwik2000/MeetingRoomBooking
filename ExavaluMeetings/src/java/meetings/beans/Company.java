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
public class Company {
    private int companyId;
    private String companyName;
    private int empId;
    private int deptID;

    /**
     * @return the companyId
     */
    public int getCompanyId() {
        return companyId;
    }

    /**
     * @param companyId the companyId to set
     */
    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    /**
     * @return the companyName
     */
    public String getCompanyName() {
        return companyName;
    }

    /**
     * @param companyName the companyName to set
     */
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    /**
     * @return the empId
     */
    public int getEmpId() {
        return empId;
    }

    /**
     * @param empId the empId to set
     */
    public void setEmpId(int empId) {
        this.empId = empId;
    }

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
    
}
