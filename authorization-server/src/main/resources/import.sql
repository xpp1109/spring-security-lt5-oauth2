
# 初始化account表
# 初始化a1, a2,a3 三个不同的用户，角色也不同。
INSERT INTO account (id, password, role_identifies, username) VALUES (1, '$2a$10$/IyUZOPoGqQGxGnmgz2J7epFK0MihNMdtVQML1Il78KTx0CdjeI5O', 'ADMIN', 'a1');
INSERT INTO account (id, password, role_identifies, username) VALUES (2, '$2a$10$/IyUZOPoGqQGxGnmgz2J7epFK0MihNMdtVQML1Il78KTx0CdjeI5O', 'USER', 'a2');
INSERT INTO account (id, password, role_identifies, username) VALUES (3, '$2a$10$/IyUZOPoGqQGxGnmgz2J7epFK0MihNMdtVQML1Il78KTx0CdjeI5O', 'ADMIN,USER', 'a3');