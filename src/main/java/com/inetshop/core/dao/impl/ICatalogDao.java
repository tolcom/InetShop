package com.inetshop.core.dao.impl;

import com.inetshop.core.dao.CatalogDao;
import com.inetshop.core.entities.Catalog;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by DVaschenko on 12.07.2016.
 */
@Repository
public class ICatalogDao implements CatalogDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    @Transactional
    public Catalog add(Catalog catalog) {
        return em.merge(catalog);
    }

    @Override
    @Transactional
    public Catalog update(Catalog catalog) {
        return em.merge(catalog);
    }

    @Override
    public Catalog find(int id) {
        return em.find(Catalog.class, id);
    }

    @Override
    public List<Catalog> getCatalogList() {
        return em.createQuery("select c from Catalog c where c.parent is null").getResultList();
    }
}
