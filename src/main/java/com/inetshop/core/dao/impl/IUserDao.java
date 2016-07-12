package com.inetshop.core.dao.impl;

import com.inetshop.core.dao.UserDao;
import com.inetshop.core.entities.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 * Created by SGurin on 17.06.2016.
 */
@Repository
public class IUserDao implements UserDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    @Transactional
    public void createUser(User user) {
        em.merge(user);
    }

    @Override
    public User findUserByEmail(String email) {
        try {
            Query query = em.createQuery("select u from User u where u.email = ?1").setParameter(1, email);
            return (User) query.getSingleResult();
        } catch (Exception ex) {
            return null;
        }
    }
}
