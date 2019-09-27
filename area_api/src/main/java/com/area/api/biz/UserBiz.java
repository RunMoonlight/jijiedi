package com.area.api.biz;

import com.area.api.dao.UserDao;
import com.area.api.entity.User;
import com.common.biz.BaseBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-08 16:23
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserBiz extends BaseBiz<UserDao, User> {
    @Autowired
    UserDao userDao;

//    @Autowired
//    private MenuMapper menuMapper;
//    @Autowired
//    private UserAuthUtil userAuthUtil;
//    @Override
//    public void insertSelective(User entity) {
//        String password = new BCryptPasswordEncoder(UserConstant.PW_ENCORDER_SALT).encode(entity.getPassword());
//        entity.setPassword(password);
//        super.insertSelective(entity);
//    }
//
//    @Override
//    @CacheClear(pre="user{1.username}")
//    public void updateSelectiveById(User entity) {
//        super.updateSelectiveById(entity);
//    }
//
//    /**
//     * 根据用户名获取用户信息
//     * @param username
//     * @return
//     */
//    @Cache(key="user{1}")
//    public User getUserByUsername(String username){
//        User user = new User();
//        user.setUsername(username);
//        return mapper.selectOne(user);
//    }


        /**
     * 登录
     * @return
     */
    public User getUserByUsername(String email, String password){
        return userDao.queryByEmailAndPwd(email,password);

    }

}
