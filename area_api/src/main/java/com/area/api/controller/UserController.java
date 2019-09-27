package com.area.api.controller;

import com.area.api.biz.UserBiz;
import com.area.api.entity.User;
import com.common.msg.ObjectRestResponse;
import com.common.rest.BaseController;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (User)表控制层
 *
 * @author 奔跑的月光
 * @since 2019-09-26 10:04:38
 */
@RestController
@RequestMapping("user")
public class UserController extends BaseController<UserBiz,User> {

    @Autowired
    UserBiz userBiz;

    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    @ResponseBody
    public ObjectRestResponse<User> get(@PathVariable int id){
        ObjectRestResponse<User> entityObjectRestResponse = new ObjectRestResponse<User>();
        Object o = baseBiz.selectById(id);
        entityObjectRestResponse.data((User)o);
        return entityObjectRestResponse;
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ObjectRestResponse<User> login(@Param("email")String email,@Param("password")String password){
        ObjectRestResponse<User> entityObjectRestResponse = new ObjectRestResponse<User>();
        User user = userBiz.getUserByUsername(email,password);
        entityObjectRestResponse.data(user);
        return entityObjectRestResponse;
    }


}