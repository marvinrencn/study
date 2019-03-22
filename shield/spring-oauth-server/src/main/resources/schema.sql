
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL
);

DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE oauth_refresh_token (
  token_id VARCHAR(256) DEFAULT NULL,
  token BLOB,
  authentication BLOB
);

DROP TABLE IF EXISTS `authority`;
create table authority (
    name varchar(50) not null,
    notes varchar(1024),
    primary key (name)
);


DROP TABLE IF EXISTS `login_user`;
create table login_user (
        id bigint not null auto_increment,
        `username` varchar(50) NOT NULL,
        `email` varchar(50) DEFAULT NULL,
        `password` varchar(500) DEFAULT NULL,
        `activated` tinyint(1) DEFAULT '0',
        `activationkey` varchar(50) DEFAULT NULL,
        `resetpasswordkey` varchar(50) DEFAULT NULL,
        primary key (id)
    );

DROP TABLE IF EXISTS `user_authority`;
create table user_authority (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `user_authority_idx_1` (`username`,`authority`),
  KEY `authority` (`authority`)
);