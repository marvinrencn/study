package com.ai.ats.shield.server.user.dao;

import com.ai.ats.shield.server.user.entity.Authority;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorityDao extends JpaRepository<Authority, String> {
}
