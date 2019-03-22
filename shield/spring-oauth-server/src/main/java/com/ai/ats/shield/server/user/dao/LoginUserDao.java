package com.ai.ats.shield.server.user.dao;

import com.ai.ats.shield.server.user.entity.LoginUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface LoginUserDao extends JpaRepository<LoginUser, Long> {

    @Query("SELECT u FROM LoginUser u WHERE LOWER(u.username) = LOWER(:username)")
    LoginUser findByUsernameCaseInsensitive(@Param("username") String username);
}
