drop table if exists authority;
create table authority
(
    id        int          not null
        primary key,
    authority varchar(255) null
);

drop table if exists credentials;
create table credentials
(
    id       int          not null
        primary key,
    enabled  tinyint(1)   not null,
    name     varchar(255) not null,
    password varchar(255) not null,
    version  int          null
);
drop table if exists credentials_authorities;
create table credentials_authorities
(
    credentials_id bigint not null,
    authorities_id bigint not null
);
drop table if exists oauth_access_token;
create table oauth_access_token
(
    token_id          varchar(255) null,
    token             longblob     null,
    authentication_id varchar(255) null,
    user_name         varchar(255) null,
    client_id         varchar(255) null,
    authentication    longblob     null,
    refresh_token     varchar(255) null
);
drop table if exists oauth_approvals;
create table oauth_approvals
(
    userId         varchar(255) null,
    clientId       varchar(255) null,
    scope          varchar(255) null,
    status         varchar(10)  null,
    expiresAt      datetime     null,
    lastModifiedAt datetime     null
);
drop table if exists oauth_client_details;
create table oauth_client_details
(
    client_id               varchar(255) not null,
    resource_ids            varchar(255) null,
    client_secret           varchar(255) null,
    scope                   varchar(255) null,
    authorized_grant_types  varchar(255) null,
    web_server_redirect_uri varchar(255) null,
    authorities             varchar(255) null,
    access_token_validity   int          null,
    refresh_token_validity  int          null,
    additional_information  varchar(255) null,
    autoapprove             varchar(255) null
);
drop table if exists oauth_client_token;
create table oauth_client_token
(
    token_id          varchar(255) null,
    token             longblob     null,
    authentication_id varchar(255) null,
    user_name         varchar(255) null,
    client_id         varchar(255) null
);
drop table if exists oauth_code;
create table oauth_code
(
    code           varchar(255) null,
    authentication longblob     null
);
drop table if exists oauth_refresh_token;
create table oauth_refresh_token
(
    token_id       varchar(255) null,
    token          longblob     null,
    authentication longblob     null
);