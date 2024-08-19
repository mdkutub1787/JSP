package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;
import util.DBUtil;

public class StudentDao {

    public static int saveStudent(Student s) {
        String sql = "insert into teacher(name, department, gender) values(?,?,?)";
        int status = 0;

        try (PreparedStatement ps = DBUtil.getCon().prepareStatement(sql)) {
            ps.setString(1, s.getName());
            ps.setString(2, s.getDepartment());
            ps.setString(3, s.getGender());

            status = ps.executeUpdate();
            System.out.println(status);

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.getCon().close();
            } catch (SQLException ex) {
                Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return status;
    }

    public static List<Student> viewAllStudent() {
        List<Student> stList = new ArrayList<>();
        String sql = "select * from teacher";

        try (PreparedStatement ps = DBUtil.getCon().prepareStatement(sql); 
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Student s = new Student(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("department"),
                        rs.getString("gender")
                );
                stList.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.getCon().close();
            } catch (SQLException ex) {
                Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return stList;
    }

    public static void deleteStudent(Student s) {
        String sql = "delete from teacher where id=?";

        try (PreparedStatement ps = DBUtil.getCon().prepareStatement(sql)) {
            ps.setInt(1, s.getId());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.getCon().close();
            } catch (SQLException ex) {
                Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static void updateStudent(Student s) {
        String sql = "update teacher set name=?,department=?,gender=? where id=?";

        try (PreparedStatement ps = DBUtil.getCon().prepareStatement(sql)) {
            ps.setString(1, s.getName());
            ps.setString(2, s.getDepartment());
            ps.setString(3, s.getGender());
            ps.setInt(4, s.getId());

            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.getCon().close();
            } catch (SQLException ex) {
                Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static Student getById(int id) {
        Student s = null;
        String sql = "select * from teacher where id=?";

        try (PreparedStatement ps = DBUtil.getCon().prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    s = new Student(
                            rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("department"),
                            rs.getString("gender")
                    );
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.getCon().close();
            } catch (SQLException ex) {
                Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return s;
    }
}
