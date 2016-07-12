package com.inetshop.core.bo;

import com.inetshop.core.dao.MarkDao;
import com.inetshop.core.entities.Mark;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by SGurin on 11.07.2016.
 */
@Service
public class MarkService {
    @Autowired
    private MarkDao markDao;

    public List<Mark> getAllMarks(){
        return markDao.getAllMarks();
    }

    public void addMark(Mark mark){
        markDao.addMark(mark);
    }

}
