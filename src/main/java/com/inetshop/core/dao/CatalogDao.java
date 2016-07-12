package com.inetshop.core.dao;

import com.inetshop.core.entities.Catalog;

import java.util.List;

/**
 * Created by DVaschenko on 12.07.2016.
 */
public interface CatalogDao {
    Catalog add(Catalog catalog);
    Catalog update(Catalog catalog);
    Catalog find(int id);
    List<Catalog> getCatalogList();
}
