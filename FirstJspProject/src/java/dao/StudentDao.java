package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
<<<<<<< Updated upstream
import model.Student;
import util.DBUtil;

public class StudentDao {

    static Student s = new Student();
=======
import model.Employee;
import util.DBUtil;

public class EmployeeDao {

    static Employee e = new Employee();

>>>>>>> Stashed changes
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";

<<<<<<< Updated upstream
<<<<<<<< Updated upstream:FirstJspProject/src/java/dao/StudentDao.java
    public static int saveStudent(Student s) {
========
    public static int saveData(Student s) {
>>>>>>>> Stashed changes:JspConnection/src/java/dao/StudentDao.java

        int status = 0;
        sql = "insrt into student(name,email,address,cell)"
                + "values(?,?,?,?)";
        try {
            ps = DBUtil.getCon().prepareStatement(sql);
            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getAddress());
            ps.setString(4, s.getCell());
=======
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
>>>>>>> Stashed changes

            status = ps.executeUpdate();
            System.out.println(status);

            ps.close();
            DBUtil.getCon().close();

        } catch (SQLException ex) {
<<<<<<< Updated upstream
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;

=======
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return status;
>>>>>>> Stashed changes
    }

}
