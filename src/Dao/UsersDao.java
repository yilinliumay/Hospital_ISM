package Dao;

import Entity.Users;

public interface UsersDao {
    Users findByUserAndPassword(Users users);
}
