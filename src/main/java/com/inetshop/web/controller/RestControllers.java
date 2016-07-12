package com.inetshop.web.controller;

import com.inetshop.core.bo.MarkService;
import com.inetshop.core.entities.json.ItemJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

/**
 * Created by SGurin on 14.07.2016.
 */
@RestController
public class RestControllers {

    @Autowired
    private MarkService markService;

    @RequestMapping(value = "/deleteItem", method = RequestMethod.POST)
    @ResponseBody
    public boolean drawComments(@RequestBody ItemJson itemJson) throws IOException {
        boolean result = false;
        if (itemJson.getType().equals("mark")) {
            result = markService.deleteMark(itemJson.getId());
        }
        return result;
    }
}
