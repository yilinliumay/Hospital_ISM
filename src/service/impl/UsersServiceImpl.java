package service.impl;

import Dao.UsersDao;
import Entity.Users;
import service.UsersService;

public class UsersServiceImpl implements UsersService {

    public void setUsersDao(UsersDao usersDao) {
        this.usersDao = usersDao;
    }

    private UsersDao usersDao;

    @Override
    public Users login(Users users) {
        Users existUser=usersDao.findByUserAndPassword(users);

        return existUser;
    }
}
