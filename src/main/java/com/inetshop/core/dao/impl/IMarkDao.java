package com.inetshop.core.dao.impl;

import com.inetshop.core.dao.MarkDao;
import com.inetshop.core.entities.Mark;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
            Query query = em.createQuery("SELECT m FROM Mark m");
            return (List<Mark>) query.getResultList();
        } catch (Exception ex) {
            return null;
        }
    }

    @Override
    @Transactional
    public void addMark(Mark mark) {
        em.merge(mark);
    }

    @Override
    @Transactional
    public boolean deleteMark(int id) {
        try {
            em.remove(em.find(Mark.class, id));
            return true;
        } catch (Exception e) {
            return false;
        }

    }
}
