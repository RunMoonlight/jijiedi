package com.area.api.dao;

import com.area.api.entity.User;
import tk.mybatis.mapper.common.Mapper;

/**
 * (User)表数据库访问层
 *
 * @author 奔跑的月光
 * @since 2019-09-26 10:04:36
 */
public interface UserDao extends Mapper<User> {

    /**
     * 通过email和密码查询单条数据
     *
     * @return 实例对象
     */
    User queryByEmailAndPwd(String email, String password);

}