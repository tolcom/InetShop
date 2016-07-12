package com.inetshop.core.dao;

import com.inetshop.core.entities.User;

/**
 * Created by SGurin on 17.06.2016.
 */
public interface UserDao {
    public void createUser(User user);

    public User findUserByEmail(String name);
}
