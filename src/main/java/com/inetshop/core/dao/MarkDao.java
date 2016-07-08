package com.inetshop.core.dao;

import com.inetshop.core.entities.Mark;

import java.util.List;

/**
 * Created by SGurin on 11.07.2016.
 */
public interface MarkDao {
    public List<Mark> getAllMarks();

    public void addMark(Mark mark);
}
