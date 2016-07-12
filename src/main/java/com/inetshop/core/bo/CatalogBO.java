package com.inetshop.core.bo;

import com.inetshop.core.entities.Catalog;

import java.util.List;

/**
 * Created by DVaschenko on 12.07.2016.
 */
public interface CatalogBO {
    Catalog createItem(Catalog catalog);
    Catalog find(int id);
    List<Catalog> getCatalogList();
}
