package com.area.api.controller;

import com.area.api.entity.User;
import com.area.api.service.UserService;
import com.common.entity.RestResponseBo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (User)表控制层
 *
 * @author 奔跑的月光
 * @since 2019-09-15 12:43:08
 */
@RestController
@RequestMapping("user")
public class UserController {
    /**
     * 服务对象
     */
    @Resource
    private UserService userService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public RestResponseBo<User> selectOne(Integer id) {
        return RestResponseBo.ok(this.userService.queryById(id));
    }
    
}