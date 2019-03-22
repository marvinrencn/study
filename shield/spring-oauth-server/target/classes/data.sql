INSERT INTO `authority` VALUES ('ROLE_ADMIN', '');
INSERT INTO `authority` VALUES ('ROLE_USER', '');
INSERT INTO `login_user` VALUES (1, 'admin', 'admin@mail.me', 'b8f57d6d6ec0a60dfe2e20182d4615b12e321cad9e2979e0b9f81e0d6eda78ad9b6dcfe53e4e22d1', '1', null, null);
INSERT INTO `login_user` VALUES (2, 'user', 'user@mail.me', 'd6dfa9ff45e03b161e7f680f35d90d5ef51d243c2a8285aa7e11247bc2c92acde0c2bb626b1fac74', '1', null, null);
INSERT INTO `login_user` VALUES (3, 'rajith', 'rajith@abc.com', 'd6dfa9ff45e03b161e7f680f35d90d5ef51d243c2a8285aa7e11247bc2c92acde0c2bb626b1fac74', '1', null, null);
INSERT INTO `user_authority` VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO `user_authority` VALUES ('admin', 'ROLE_USER');
INSERT INTO `user_authority` VALUES ('rajith', 'ROLE_USER');
INSERT INTO `user_authority` VALUES ('user', 'ROLE_USER');