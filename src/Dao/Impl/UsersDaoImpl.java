package Dao.Impl;

import Dao.UsersDao;
import Entity.Users;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import javax.swing.text.html.parser.Entity;
import java.util.ArrayList;
import java.util.List;

public class UsersDaoImpl extends HibernateDaoSupport implements UsersDao {
    @Override
    public Users findByUserAndPassword(Users users) {

        //String hql="from Users u where u.username=? and u.password=?";
        String hql="from Users u where u.username=? and u.password=?";

        System.out.println(users.getUsername());

        List<?> empList = getHibernateTemplate().find(hql,users.getUsername(),users.getPassword());

        System.out.println("Employees found: " + empList.size());

        if(empList.size()==0){
            return null;
        }
        else return(Users)empList.get(0);

    }
}
