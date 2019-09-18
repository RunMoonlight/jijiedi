package com.area.api.controller;

import com.area.api.entity.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: wangzhen
 * @date: 2019/9/15
 * @description:
 */
@RestController
@RequestMapping("/")
public class test {
    @GetMapping("1")
    public String selectOne(Integer id) {
        return "index";
    }

}
