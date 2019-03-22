package com.ai.ats.shield.server.user.api;

import com.ai.ats.shield.server.user.dao.LoginUserDao;
import com.ai.ats.shield.server.user.entity.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @Autowired
    LoginUserDao loginUserDao;

    @RequestMapping("/api/userinfo")
    public ResponseEntity<UserInfoVO> getUserInfo(){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        LoginUser loginUser = loginUserDao.findByUsernameCaseInsensitive(user.getUsername());

        UserInfoVO userInfo = new UserInfoVO();
        userInfo.setName(loginUser.getUsername());
        userInfo.setEmail(loginUser.getEmail());

        return ResponseEntity.ok(userInfo);
    }
}
