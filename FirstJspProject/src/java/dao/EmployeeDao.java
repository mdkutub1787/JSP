package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DBUtil;

public class EmployeeDao {

    static Employee e = new Employee();

    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";

<<<<<<<< HEAD:FirstJspProject/src/java/dao/EmployeeDao.java
    public static int saveEmployee(Employee e) {
========
    public static int saveStudent(Student s) {
>>>>>>>> 8dcd71c839e57efd51631ade61b807fa288db2c8:FirstJspProject/src/java/dao/StudentDao.java

        int status = 0;

        sql = "insert into employee(name, email, address) values(?,?,?)";

        try {
            ps = DBUtil.getCon().prepareStatement(sql);

            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getAddress());

            status = ps.executeUpdate();
            System.out.println(status);

            ps.close();
            DBUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return status;
    }

}
