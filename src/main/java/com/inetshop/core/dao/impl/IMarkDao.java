package com.inetshop.core.dao.impl;

import com.inetshop.core.dao.MarkDao;
import com.inetshop.core.entities.Mark;
import com.inetshop.core.entities.User;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by SGurin on 11.07.2016.
 */

@Repository
public class IMarkDao implements MarkDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Mark> getAllMarks() {
        try {
            Query query = em.createQuery("select m from Mark m");
            return (List<Mark>) query.getResultList();
        } catch (Exception ex) {
            return null;
        }
    }

    @Override
    public void addMark(Mark mark) {
        em.persist(mark);
    }
}
