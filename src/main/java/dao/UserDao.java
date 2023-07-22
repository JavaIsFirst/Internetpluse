package dao;
 
import domain.User;
import java.sql.*;
import java.util.List;
 
public interface UserDao {
    public List<User> findAll();
}