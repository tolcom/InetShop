package com.inetshop.core.bo.impl;

import com.inetshop.core.bo.CatalogBO;
import com.inetshop.core.dao.CatalogDao;
import com.inetshop.core.entities.Catalog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by DVaschenko on 12.07.2016.
 */
@Service
public class ICatalogBO implements CatalogBO {

    @Autowired
    private CatalogDao catalogDao;

    @Override
    public Catalog createItem(Catalog catalog) {
        Catalog parent;
        Catalog child = catalogDao.add(catalog);

        if(catalog.getParent() != null) {
            parent = catalogDao.find(child.getParent().getId());
            parent.getListItem().add(child);
            catalogDao.update(parent);
        }

        return child;
    }

    @Override
    public Catalog find(int id) {
        return catalogDao.find(id);
    }

    @Override
    public List<Catalog> getCatalogList() {
        return catalogDao.getCatalogList();
    }
}
