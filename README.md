# 项目树形图
```text
├── HELP.md
├── LICENSE
├── README.md
├── authorization-server
│   ├── README.md
│   ├── authorization-server.iml
│   ├── pom.xml
│   ├── src
│   │   ├── main
│   │   │   ├── java
│   │   │   │   └── com
│   │   │   │       └── xpp
│   │   │   │           └── sslt5
│   │   │   │               └── as
│   │   │   │                   ├── AuthorizationServerApplication.java
│   │   │   │                   ├── config
│   │   │   │                   │   ├── AuthorizationServerConfig.java
│   │   │   │                   │   └── SecurityConfig.java
│   │   │   │                   ├── entity
│   │   │   │                   │   └── User.java
│   │   │   │                   ├── repository
│   │   │   │                   │   └── UserRepository.java
│   │   │   │                   └── svc
│   │   │   │                       └── UserDetailSvc.java
│   │   │   └── resources
│   │   │       ├── application.yml
│   │   │       ├── oauth2-data-mysql.sql
│   │   │       └── oauth2-schema-mysql.sql
│   │   └── test
│   │       └── java
│   └── target
│       ├── classes
│       │   ├── application.yml
│       │   ├── com
│       │   │   └── xpp
│       │   │       └── sslt5
│       │   │           └── as
│       │   │               ├── AuthorizationServerApplication.class
│       │   │               ├── config
│       │   │               │   ├── AuthorizationServerConfig.class
│       │   │               │   └── SecurityConfig.class
│       │   │               ├── entity
│       │   │               │   └── User.class
│       │   │               ├── repository
│       │   │               │   └── UserRepository.class
│       │   │               └── svc
│       │   │                   └── UserDetailSvc.class
│       │   ├── oauth2-data-mysql.sql
│       │   └── oauth2-schema-mysql.sql
│       └── generated-sources
│           └── annotations
├── mvnw
├── mvnw.cmd
├── pom.xml
├── resource-server
│   ├── pom.xml
│   ├── resource-server.iml
│   └── src
│       ├── main
│       │   ├── java
│       │   └── resources
│       └── test
│           └── java
└── spring-security-lt5-oauth2.iml
```