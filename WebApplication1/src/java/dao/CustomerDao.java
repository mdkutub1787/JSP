package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import util.DBUtil;

public class CustomerDao {

    Customer c = new Customer();

    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";

    public static int saveCustomer(Customer c) {
        int status = 0;

        sql = "insert into customer (name,address,phone) values(?,?,?)";
        try {
            ps = DBUtil.getCon().prepareStatement(sql);
            ps.setString(1, c.getName());
            ps.setString(2, c.getName());
            ps.setString(3, c.getPhone());
            
            status=ps.executeUpdate();

            ps.close();
            DBUtil.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

}
