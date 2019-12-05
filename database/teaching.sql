/*
Navicat MySQL Data Transfer

Source Server         : whs
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : teaching

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-05 08:45:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) NOT NULL COMMENT '用户',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'URL',
  `log_method` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  `log_ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作IP',
  `create_time` int(10) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台操作日志';

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', '1', '登录', 'admin/auth/login', 'POST', '::1', '1575267686');
INSERT INTO `admin_log` VALUES ('2', '1', '登录', 'admin/auth/login', 'POST', '::1', '1575340902');
INSERT INTO `admin_log` VALUES ('3', '1', '添加学院信息', 'admin/college/add.html', 'POST', '::1', '1575340996');
INSERT INTO `admin_log` VALUES ('4', '1', '添加学院信息', 'admin/college/add.html', 'POST', '::1', '1575341364');
INSERT INTO `admin_log` VALUES ('5', '1', '修改学院信息表', 'admin/college/edit/id/3.html', 'POST', '::1', '1575341527');
INSERT INTO `admin_log` VALUES ('6', '1', '删除学院信息表', 'admin/college/del.html', 'POST', '::1', '1575341536');
INSERT INTO `admin_log` VALUES ('7', '1', '修改学院信息表', 'admin/college/edit/id/2.html', 'POST', '::1', '1575341543');
INSERT INTO `admin_log` VALUES ('8', '1', '修改学院信息表', 'admin/college/edit/id/1.html', 'POST', '::1', '1575341683');
INSERT INTO `admin_log` VALUES ('9', '1', '修改学院信息表', 'admin/college/edit/id/1.html', 'POST', '::1', '1575341692');
INSERT INTO `admin_log` VALUES ('10', '1', '添加学院信息', 'admin/college/add.html', 'POST', '::1', '1575342353');
INSERT INTO `admin_log` VALUES ('11', '1', '修改学院信息', 'admin/college/edit/id/4.html', 'POST', '::1', '1575342359');
INSERT INTO `admin_log` VALUES ('12', '1', '添加部门信息', 'admin/department/add.html', 'POST', '::1', '1575342768');
INSERT INTO `admin_log` VALUES ('13', '1', '修改部门信息', 'admin/department/edit/id/3.html', 'POST', '::1', '1575342780');
INSERT INTO `admin_log` VALUES ('14', '1', '删除部门信息', 'admin/department/del.html', 'POST', '::1', '1575342785');
INSERT INTO `admin_log` VALUES ('15', '1', '登录', 'admin/auth/login', 'POST', '::1', '1575344912');
INSERT INTO `admin_log` VALUES ('16', '1', '登录', 'admin/auth/login', 'POST', '::1', '1575351102');
INSERT INTO `admin_log` VALUES ('17', '1', '添加资源类型', 'admin/type/add.html', 'POST', '::1', '1575351305');
INSERT INTO `admin_log` VALUES ('18', '1', '修改资源类型', 'admin/type/edit/id/1.html', 'POST', '::1', '1575351319');
INSERT INTO `admin_log` VALUES ('19', '1', '添加资源类型', 'admin/type/add.html', 'POST', '::1', '1575351325');
INSERT INTO `admin_log` VALUES ('20', '1', '登录', 'admin/auth/login', 'POST', '::1', '1575377820');
INSERT INTO `admin_log` VALUES ('21', '1', '添加教师信息', 'admin/teacher/add.html', 'POST', '::1', '1575378552');
INSERT INTO `admin_log` VALUES ('22', '1', '修改教师信息', 'admin/teacher/edit/id/1.html', 'POST', '::1', '1575378819');
INSERT INTO `admin_log` VALUES ('23', '1', '修改教师信息', 'admin/teacher/edit/id/1.html', 'POST', '::1', '1575378828');
INSERT INTO `admin_log` VALUES ('24', '1', '添加教师信息', 'admin/teacher/add.html', 'POST', '::1', '1575379643');

-- ----------------------------
-- Table structure for `admin_log_data`
-- ----------------------------
DROP TABLE IF EXISTS `admin_log_data`;
CREATE TABLE `admin_log_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_log_id` int(11) NOT NULL COMMENT '日志ID',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '日志内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台操作日志数据';

-- ----------------------------
-- Records of admin_log_data
-- ----------------------------
INSERT INTO `admin_log_data` VALUES ('1', '1', '9206077d4VweMnEppnjQ7nAMCVpJs/dQi5hFvusYgisThZMsuhkgTbARv7ekCEQYGO6wiPR9GRMmQbQbeKq8mYlnYvizJ4D/+3g6jd4jh7T+BKEfkgxjBFNct8O5F81a49MBxn4VngCOWvm/WjPBztP8gVtcEK4QgPq02N6t3n49C1T4B74tfnwr0vJfG7TAtv6G');
INSERT INTO `admin_log_data` VALUES ('2', '2', 'b4e53e6cZk2ZqIfRp8vyLYexO9i3k/msQVHx0Rcd5dkBONWOcgY3OPHSWjYPVMPyJj3Sn7MODy07Xk2ItzoTgpXeQTGEE6eHdf88PTZ9xB/Ox4FnE2CX2hOsdr83AoDONdmQglsbcP1154XMDj3utp9+Dt84MYrvTGgNMmjlnQskYh7H+GU6Vt5wacreDAuqp1fF');
INSERT INTO `admin_log_data` VALUES ('3', '3', '34751ae6U0LqUmNKvYYC3PUG1yTQjPPqQk3s+YO2SEOmnHybp2Rn9WpmR0SbzgCNi2jk0RQDiZmT+by94DbltEg/SScjCxhNRK6gE6dh+dSEf8EovvVB/RvtpAAVzH15T2YcELBYxk1vuFromFcsc+rkM7AHeDB/');
INSERT INTO `admin_log_data` VALUES ('4', '4', '95c04e73HJHQlvDNte2P3LR3hWoJOCnzMGo6vskVZZiY5a8q9GZvExSDFqdXMVERaEJuhJRJlyC4bhp3OwxCfmRyZ54PFjikh0njfbTRgfFXtl+H/fr7DuzZke02uYs0f1k4FaKnS9X43vdMEXl3HhiV/rkbjHpaF4yflkPhK4P79iDy1g');
INSERT INTO `admin_log_data` VALUES ('5', '5', '58a6f81fsJgF/i6S2pPvrqJGITmlzrQMC8Bpamsu8ccadck2YWGWSqhUFbX49GPvJ+ILVMPvWzzSMyWbFSWFf6ytPtlZr2NHxXHKuCI9LA2QOA3Dr2uxGar8z3Muua6AN8Q5kd+0J1mbDHx6gOBRLjTw3Hf8S1i7QwW+BMzbLWILRrAB2x5r9SkN3764');
INSERT INTO `admin_log_data` VALUES ('6', '6', '99d7c241ZIDaio9z/rmDZ5sPCbLuzWVf3C4eh3la4S5AyGho8uesAt6h');
INSERT INTO `admin_log_data` VALUES ('7', '7', '19be3c68Ma+WSpZlIcw+iy7z3IUF+fWSNDsjUEKNz+umUOpxpzFpL6B4FPhf+hW9q36NgudyiQ0X9WPfLzyljkQhAJjoTf2ga5uUoSB8phZVI3qw/f+EhPQ9nr9xUxGVUWdUg4FTWlQQa+QOBx4UmSrITlPPlXF2jlm4QFjWSOvwttNSknz7gfaYnON9');
INSERT INTO `admin_log_data` VALUES ('8', '8', 'c177e4b9gy+Y6xwDsZ6rxzDZILTA+n7mk+ejXbKp1txbymNzB6WVsIppbR8XC6w4lVyCutWNbb/u8dkAIPtgHc/n8IgbxzU2P1SgZMw2gWlB2Q50OSuMwrjcIliWqrPpC1b1vgmzEJycqWY3ZLYh5TLqgUT7st+Mnqp70958epeFRsc8DnRGntbUa2cb');
INSERT INTO `admin_log_data` VALUES ('9', '9', '119253200iUsMZZtB29vcvZlBi0KtiyyFHw+E5ZRO3FEUcvV60xyUT/Ypni0ltrTYevMO/pv9KZKa64BmUHSeNjqrlQ2nqrv1SeeswGZ3BfezCUDf9e3LojvUYlUP+TQ0hqfv+3YaS93R+IgRzUtWD5ktXzvAma/ZrwJRuSd5F++NoqUtdP63qTksyZnng');
INSERT INTO `admin_log_data` VALUES ('10', '10', '1704fd1a9KX37+xAkpyG0WvGX0I+e3whmobEU4+EA+g14KhesVBKVtwbePFtbZh1engl+tqZ0JOIZEct8rfYFId+bf0i8254Syc7pgKWCAQB48NRNQWSbYq8GotAMHAKppCL6Tgocc5OHBkVVCbLVORQItHrX8xa');
INSERT INTO `admin_log_data` VALUES ('11', '11', '6ac47a79P58Syv4rEk2NU62w3IEcWLSk1gGZGNdkt5ivcoYlKXfe0FPazo7fCj90vpFpg4xC5bNCaeIXb2lQdqKa9tlisrwWjI9dNW1Q5hwdRg0BvLEU1DM2/C7tkZHrxoeCZo30gET8QW1RFqTouJrrVXcjuteHi6QLAnCm5um0');
INSERT INTO `admin_log_data` VALUES ('12', '12', 'e90ae98eLsNq3Y0b8Jn5Z8/Y9AgKHJbtp8hAOS6UB0wWe8hq7lOomFNxUmS/y3iqLAGHuICaUyqHR+/YGsJDj05dLwqM9ytB/jOon7HgqO1PLkOKJcy1Toaal6c8D38x6c3aNnIg5phpQO3JS/LV53ejwelyJRAbwz8sjrpr92hsGtq6VEvE/GTZVfCXj+zjNvMMzT3H+/vAZ+aRvoFta4/iCnMmS9g');
INSERT INTO `admin_log_data` VALUES ('13', '13', '20de24d9BDif7SBr2SgO33RaQWFXh3yup3pqeu12Uj5ylIlv9RJy2WBuVhCTFONaoUdBCYLSRY7JstFTwMPt3tRCdNUwBRAQwCnUEbcLYQvrMdof/7ul8wg9PEqkdGcaQ23MAp0Va1oRf/qjAib7RM/bBSBxnqhOQ3Bfm/uzCaEhfXPSAhGDgPj3des4Dh2A7+iJhzhNVtpfJMM3KoEaQOZxfPQne7t2+B4wvy2Q4NYOxoe5HleNHGH70Z8');
INSERT INTO `admin_log_data` VALUES ('14', '14', '2a80d562So1l4w4H0iKFo1VdldUfbNprUJVFJ3h7X9aVh6CzqKTr/ts/');
INSERT INTO `admin_log_data` VALUES ('15', '15', '86842681Fzk7g65JVJV7RouX/6Yn5wEH1Y+hUq0XDUzoo+jXyu8jcr3dP5ZhXza6yFlubHOYrBUIf+olCPwZtFrjv0VRNa5M5Ac0Dc6vNnKi9JTL9AX4d5SrDh0YYhyr5gJ2+VIC/ycEyX1cWZv+sEAEJ8ONmnCmtJO5k4a2o77UXlDTqDKCo8qJzO8PsYcDQwXl');
INSERT INTO `admin_log_data` VALUES ('16', '16', '077984ddtjZfAthsWcK4wXalum+sMtnP/SPkhWm3blii69WSXg/dbb4Gy+q9qezponv9Yp6vzIM5JmlkjSFqCb8ePZIqY0bF3kdsLJCDDLM8fUfWe4uBM1cjEh/Wg1JQcNQwXHzzSZMP6zX70iDY85RHbld0okB78nSuWaDHcG6QPwWkactRz8kQSvyZ+ObUvUIR');
INSERT INTO `admin_log_data` VALUES ('17', '17', 'fb69dbe8d+dIYRtBok+lF9Wpvtpk69vePCFSh/tEqBqYTEnPhpE22Myn+t07dyeJc/13dEzHgxsISbJNndw0CJ9Y+Zbnx6/2GkEuAf+SwCP0CJXlI3mdwO5qp9Na');
INSERT INTO `admin_log_data` VALUES ('18', '18', '31835f906wrEYBPBNmyK4RDIHG/k95BPAoO3zGudIxGUys8JhP+8rIxqXgEpXmhitv/3fdlY8v2Ja5dMoy0aoXnPqXggwL8Do/l+KDgTdD4sYg3kQcLxbKTwJw0wHkaKyaPEpgXQ');
INSERT INTO `admin_log_data` VALUES ('19', '19', '22e2add3KPwIzd1VnsqSBv6idEap34NicSIUWC+vCcj35+Ca1HNLpiXyHQvMkvNH5JlvclCZmATj7+XB4P9fxg/7HhnYV2ZVDHMZOBse+7O6w/u3qkTwDR4U8/Hkiw');
INSERT INTO `admin_log_data` VALUES ('20', '20', '6cdf64e4vHKHbV6PvBoKs4hRWprldm/s7flHEI2nkR4m7mY7DJg7FCXlxwws/5+VXirYCLdme3rlWnGc5Zkj2x0tvvRs3INrsZnejlGWP1eQYP0GlT17x3tzMBzP3veanJ/Bp3X4Ho4SHzAHn9miELsR/9OCKIUtvY67T2/T6to6G7p2fdoTxEqHNW5Srb6scGwU');
INSERT INTO `admin_log_data` VALUES ('21', '21', '92450e443IWTYP2DkF3RsAq51/ISuELLKRDz4y0XZwvfGuhMG4sYpJ7WmIROWyPjKh8iOR7alJVxEE3I8JhdwyE1of0LiiefjnkmkNsUV0zfYH1j6tDmOC7HFU5kFYSBJIc3M4gqsNZDsqOamx0hRHE1L5FONO3Xfj1H9lip2VdGa0n8dEku4q1DdVXPBjXugI2NdjmUhrcl3irpddIZGBrmlH6ZTAQuoTXNFkmiEDLfqoZEtw');
INSERT INTO `admin_log_data` VALUES ('22', '22', 'fb86d65dODygzDx8d6hDL40bKks8zBmgYWaOaFlgfsbYQqu5UPvg0JGkS44qVDZZe2jRx0dKmja0kp9j4SQEIYzZom8ZgBrpovWHWTTdCjMQoJWW00rmiNqXnQzV3aF4L8fHwomU7sjzot3zbOiXEUjpVyXx56aB/7mjTvYv82T16HxGytYk2EAUg/CQeRcVlESaLhuvKolpPs/Bd1Fe1BjnEAsWjALOwpruj6XNAwgO7GVsBipWJ48+W6+YqQ');
INSERT INTO `admin_log_data` VALUES ('23', '23', 'cf68a235f+3coiEENOREbk0vHjFYklmDc/7SCsUUpW2Tqh4CE9Kr4WwNvxhJuWyMvFaJU2G0rX5ZmikM5aAM8wFBJ7ikDfkyNhcnvvsz6edDyZV2CWzao12EkNcWmTBNXYxywWZmZgcbyHWbGqDNNYuJtGBDRsScAWC6kVINN/ZWxdHT7rIYa0TF257Nd1Gszbg28n2Pmb/FIEC27e5VJvwk+ujx4zORjDfaFSRxykVEPmE2sYS3U3pSxzK8mA');
INSERT INTO `admin_log_data` VALUES ('24', '24', 'b2270ff9tNVayL7LpHbD+BPx090Wm193+TfCjRzzbyhc0K9bwn9r4eR92a4aBYkY7pmuiEVm7q0atX0G2guyaylHs17VE1Xiv72tGeh1BVlY/fH/CT2wQoYy0W6y3Vay/J6vRbg8Z7MSEBK0ZGnhb00uc+tuLDNa0ErgUcpOUs/WtKBgzxoiCadfc13jlIC0FmfEPZJQ7sgs2Rf8uSxldyk+eQCZmYjHIlOZsvF4xUBhOKTtGA');

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级菜单',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url',
  `icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '等级',
  `sort_id` int(10) NOT NULL DEFAULT '1000' COMMENT '排序',
  `log_method` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  PRIMARY KEY (`id`),
  KEY `index_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台菜单';

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '后台首页', 'admin/index/index', 'fa-home', '1', '99', '不记录');
INSERT INTO `admin_menu` VALUES ('2', '0', '系统管理', 'admin/sys', 'fa-desktop', '1', '1099', '不记录');
INSERT INTO `admin_menu` VALUES ('3', '2', '用户管理', 'admin/admin_user/index', 'fa-user', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('4', '3', '添加用户', 'admin/admin_user/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('5', '3', '修改用户', 'admin/admin_user/edit', 'fa-edit', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('6', '3', '删除用户', 'admin/admin_user/del', 'fa-close', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('7', '2', '角色管理', 'admin/admin_role/index', 'fa-group', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('8', '7', '添加角色', 'admin/admin_role/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('9', '7', '修改角色', 'admin/admin_role/edit', 'fa-edit', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('10', '7', '删除角色', 'admin/admin_role/del', 'fa-close', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('11', '7', '角色授权', 'admin/admin_role/access', 'fa-key', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('12', '2', '菜单管理', 'admin/admin_menu/index', 'fa-align-justify', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('13', '12', '添加菜单', 'admin/admin_menu/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('14', '12', '修改菜单', 'admin/admin_menu/edit', 'fa-edit', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('15', '12', '删除菜单', 'admin/admin_menu/del', 'fa-close', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('16', '2', '操作日志', 'admin/admin_log/index', 'fa-keyboard-o', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('17', '16', '查看操作日志详情', 'admin/admin_log/view', 'fa-search-plus', '0', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('18', '2', '个人资料', 'admin/admin_user/profile', 'fa-smile-o', '1', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('19', '0', '用户管理', 'admin/user/mange', 'fa-users', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('20', '19', '用户管理', 'admin/user/index', 'fa-user', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('21', '20', '添加用户', 'admin/user/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('22', '20', '修改用户', 'admin/user/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('23', '20', '删除用户', 'admin/user/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('24', '20', '启用用户', 'admin/user/enable', 'fa-circle', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('25', '20', '禁用用户', 'admin/user/disable', 'fa-circle', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('26', '19', '用户等级管理', 'admin/user_level/index', 'fa-th-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('27', '26', '添加用户等级', 'admin/user_level/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('28', '26', '修改用户等级', 'admin/user_level/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('29', '26', '删除用户等级', 'admin/user_level/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('30', '26', '启用用户等级', 'admin/user_level/enable', 'fa-circle', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('31', '26', '禁用用户等级', 'admin/user_level/disable', 'fa-circle', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('32', '2', '开发管理', 'admin/develop/manager', 'fa-code', '1', '1005', '不记录');
INSERT INTO `admin_menu` VALUES ('33', '32', '代码生成', 'admin/generate/index', 'fa-file-code-o', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('34', '32', '设置配置', 'admin/develop/setting', 'fa-cogs', '1', '995', '不记录');
INSERT INTO `admin_menu` VALUES ('35', '34', '设置管理', 'admin/setting/index', 'fa-cog', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('36', '35', '添加设置', 'admin/setting/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('37', '35', '修改设置', 'admin/setting/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('38', '35', '删除设置', 'admin/setting/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('39', '34', '设置分组管理', 'admin/setting_group/index', 'fa-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('40', '39', '添加设置分组', 'admin/setting_group/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('41', '39', '修改设置分组', 'admin/setting_group/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('42', '39', '删除设置分组', 'admin/setting_group/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('43', '0', '设置中心', 'admin/setting/center', 'fa-cogs', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('44', '43', '所有配置', 'admin/setting/all', 'fa-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('47', '43', '后台设置', 'admin/setting/admin', 'fa-adjust', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('48', '43', '更新设置', 'admin/setting/update', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('49', '32', '数据维护', 'admin/database/table', 'fa-database', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('50', '49', '查看表详情', 'admin/database/view', 'fa-eye', '0', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('51', '49', '优化表', 'admin/database/optimize', 'fa-refresh', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('52', '49', '修复表', 'admin/database/repair', 'fa-circle-o-notch', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('61', '0', '学院信息管理', 'admin/college/index', 'fa-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('62', '61', '学院信息', 'admin/college/index', '', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('63', '62', '添加学院信息', 'admin/college/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('64', '62', '修改学院信息', 'admin/college/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('65', '62', '删除学院信息', 'admin/college/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('66', '0', '部门信息管理', 'admin/department/index', 'fa-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('67', '66', '部门信息', 'admin/department/index', '', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('68', '67', '添加部门信息', 'admin/department/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('69', '67', '修改部门信息', 'admin/department/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('70', '67', '删除部门信息', 'admin/department/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('71', '0', '资源类型管理', 'admin/type/index', 'fa-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('72', '71', '资源类型', 'admin/type/index', '', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('73', '72', '添加资源类型', 'admin/type/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('74', '72', '修改资源类型', 'admin/type/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('75', '72', '删除资源类型', 'admin/type/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('76', '0', '教师信息管理', 'admin/teacher/index', 'fa-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('77', '76', '教师信息', 'admin/teacher/index', '', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('78', '77', '添加教师信息', 'admin/teacher/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('79', '77', '修改教师信息', 'admin/teacher/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('80', '77', '删除教师信息', 'admin/teacher/del', 'fa-trash', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('81', '0', '教学视频管理', 'admin/video/index', 'fa-list', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('82', '81', '教学视频信息', 'admin/video/index', '', '1', '1000', '不记录');
INSERT INTO `admin_menu` VALUES ('83', '82', '添加教学视频', 'admin/video/add', 'fa-plus', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('84', '82', '修改教学视频', 'admin/video/edit', 'fa-pencil', '0', '1000', 'POST');
INSERT INTO `admin_menu` VALUES ('85', '82', '删除教学视频', 'admin/video/del', 'fa-trash', '0', '1000', 'POST');

-- ----------------------------
-- Table structure for `admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台角色';

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', '管理员', '后台管理员角色', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48', '1');

-- ----------------------------
-- Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJEZSTXI3ZmZoVUdWQTAvWTJrYkNxNmVpMWQ3RUdQVXlXNjhMUmF6Wi55aFBrYzk4dll6Yk1t' COMMENT '密码',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/admin/images/avatar.png' COMMENT '头像',
  `role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `index_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台用户';

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'super_admin', 'JDJ5JDEwJDgvVjRmd1R3c1RmTkJVRVBYU0hKNnViZUs1TjkudGJRY013OHdMOTVYMFdDdjBrTG1DakF5', '超级管理员', '/static/admin/images/avatar.png', '1', '1', '0');

-- ----------------------------
-- Table structure for `attachment`
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(11) NOT NULL COMMENT '后台用户ID',
  `user_id` int(11) NOT NULL COMMENT '前台用户ID',
  `original_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `save_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '保存文件名',
  `save_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `extension` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '后缀',
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `size` bigint(20) NOT NULL DEFAULT '0' COMMENT '大小',
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MD5',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

-- ----------------------------
-- Records of attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `college`
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '学院名称',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='学院信息表';

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '软件工程系', '1575269404', '1575341692', '0');
INSERT INTO `college` VALUES ('2', '国际贸易系', '1575269404', '1575341543', '0');
INSERT INTO `college` VALUES ('3', '绿色环保系', '1575341364', '1575341527', '0');
INSERT INTO `college` VALUES ('4', '财会算计系', '1575342353', '1575342359', '0');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '说明备注',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门信息表';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '财务部', '负责学院的财务支出管理等等', '1575269443', '1575269443', '0');
INSERT INTO `department` VALUES ('2', '教学部', '负责学院的教学等等', '1575269443', '1575269447', '0');
INSERT INTO `department` VALUES ('3', '管理部', '负责学院的管理等等', '1575342768', '1575342780', '0');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('20190302092540', 'AdminMenu', '2019-12-02 14:13:27', '2019-12-02 14:13:27', '0');
INSERT INTO `migrations` VALUES ('20190302094849', 'AdminUser', '2019-12-02 14:13:27', '2019-12-02 14:13:27', '0');
INSERT INTO `migrations` VALUES ('20190302094853', 'AdminLog', '2019-12-02 14:13:27', '2019-12-02 14:13:27', '0');
INSERT INTO `migrations` VALUES ('20190302094933', 'AdminRole', '2019-12-02 14:13:27', '2019-12-02 14:13:27', '0');
INSERT INTO `migrations` VALUES ('20190312021143', 'AdminLogData', '2019-12-02 14:13:27', '2019-12-02 14:13:27', '0');
INSERT INTO `migrations` VALUES ('20190518030432', 'Attachment', '2019-12-02 14:13:27', '2019-12-02 14:13:27', '0');
INSERT INTO `migrations` VALUES ('20190615081122', 'User', '2019-12-02 14:13:27', '2019-12-02 14:13:28', '0');
INSERT INTO `migrations` VALUES ('20190822082112', 'UserLevel', '2019-12-02 14:13:28', '2019-12-02 14:13:28', '0');
INSERT INTO `migrations` VALUES ('20191001081329', 'Setting', '2019-12-02 14:13:28', '2019-12-02 14:13:28', '0');
INSERT INTO `migrations` VALUES ('20191001081340', 'SettingGroup', '2019-12-02 14:13:28', '2019-12-02 14:13:28', '0');
INSERT INTO `migrations` VALUES ('20191012005355', 'Test', '2019-12-02 14:13:28', '2019-12-02 14:13:28', '0');

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_group_id` int(10) NOT NULL DEFAULT '0' COMMENT '所属分组',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设置配置及内容',
  `sort_number` int(10) NOT NULL DEFAULT '1000' COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设置';

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', '1', '基本设置', '后台的基本信息设置', 'base', '[{\"name\":\"\\u540e\\u53f0\\u540d\\u79f0\",\"field\":\"name\",\"type\":\"text\",\"content\":\"XX\\u540e\\u53f0\\u7cfb\\u7edf\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7b80\\u79f0\",\"field\":\"short_name\",\"type\":\"text\",\"content\":\"\\u540e\\u53f0\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u4f5c\\u8005\",\"field\":\"author\",\"type\":\"text\",\"content\":\"xx\\u79d1\\u6280\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7248\\u672c\",\"field\":\"version\",\"type\":\"text\",\"content\":\"0.1\",\"option\":\"\"}]', '1000', '1575267208', '1575267208', '0');
INSERT INTO `setting` VALUES ('2', '1', '登录设置', '后台登录相关设置', 'login', '[{\"name\":\"\\u767b\\u5f55token\\u9a8c\\u8bc1\",\"field\":\"token\",\"type\":\"switch\",\"content\":\"0\",\"option\":\"\"},{\"name\":\"\\u9a8c\\u8bc1\\u7801\",\"field\":\"captcha\",\"type\":\"select\",\"content\":\"1\",\"option\":\"0||\\u4e0d\\u5f00\\u542f\\r\\n1||\\u56fe\\u5f62\\u9a8c\\u8bc1\\u7801\\r\\n2||\\u6ed1\\u52a8\\u9a8c\\u8bc1\"},{\"name\":\"\\u767b\\u5f55\\u80cc\\u666f\",\"field\":\"background\",\"type\":\"image\",\"content\":\"\\/static\\/admin\\/images\\/login-default-bg.jpg\",\"option\":\"\"}]', '1000', '1575267208', '1575267208', '0');
INSERT INTO `setting` VALUES ('3', '1', '首页设置', '后台首页参数设置', 'index', '[{\"name\":\"\\u9ed8\\u8ba4\\u5bc6\\u7801\\u8b66\\u544a\",\"field\":\"password_warning\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u662f\\u5426\\u663e\\u793a\\u63d0\\u793a\\u4fe1\\u606f\",\"field\":\"show_notice\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u63d0\\u793a\\u4fe1\\u606f\\u5185\\u5bb9\",\"field\":\"notice_content\",\"type\":\"text\",\"content\":\"\\u6b22\\u8fce\\u6765\\u5230\\u4f7f\\u7528\\u672c\\u7cfb\\u7edf\\uff0c\\u5de6\\u4fa7\\u4e3a\\u83dc\\u5355\\u533a\\u57df\\uff0c\\u53f3\\u4fa7\\u4e3a\\u529f\\u80fd\\u533a\\u3002\",\"option\":\"\"}]', '1000', '1575267208', '1575267208', '0');

-- ----------------------------
-- Table structure for `setting_group`
-- ----------------------------
DROP TABLE IF EXISTS `setting_group`;
CREATE TABLE `setting_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作用模块',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `sort_number` int(10) NOT NULL DEFAULT '1000' COMMENT '排序',
  `auto_create_menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动生成菜单',
  `auto_create_file` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动生成配置文件',
  `icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设置分组';

-- ----------------------------
-- Records of setting_group
-- ----------------------------
INSERT INTO `setting_group` VALUES ('1', 'admin', '后台设置', '后台管理方面的设置', 'admin', '1000', '1', '1', 'fa-adjust', '1575267208', '1575267208', '0');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '教师名称',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别（1男2女）',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号码',
  `job_number` int(11) NOT NULL COMMENT '工号',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '所属学院',
  `did` int(11) NOT NULL DEFAULT '0' COMMENT '所属部门',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教师信息表';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张一方', '1', '13434119852', '10001', '1', '2', '1575378552', '1575378829', '0');
INSERT INTO `teacher` VALUES ('2', '林志凌', '2', '13434118596', '10002', '4', '1', '1575379643', '1575379643', '0');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `user_level_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户等级',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJGNmRDdNN2N1SEg4T2Fkak93SHZFRGVYR2xkYUo1dVpMZHN6RUZQanhjQmg5MDM5anA1Si9X' COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表-用户';

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='资源类型表';

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', 'PHP', '1575351305', '1575351319', '0');
INSERT INTO `type` VALUES ('2', 'JAVA', '1575351325', '1575351325', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `user_level_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户等级',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJHVycUc2N2RxVk01VVNEbnBNSHZ1anVWNVRUNWdyNXVYcUlGMUJvemF1bnAzcTU2a21qMC9D' COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '/uploads/attachment/20190822/02fce9aecd6cadf6e019e988ad8703ce.png', 'test001', '测试001', '13000000001', '2', 'JDJ5JDEwJGZRa2ppLmFGbmNMbFdjcy9vZjZ6bS53MmRSOFRCdjRwd0hoSXJvaWZQaE9SQ0VsbnFUYTI2', '1', '1575267207', '1575267207', '0');
INSERT INTO `user` VALUES ('2', '/uploads/attachment/20190822/56644a9f283c058cd371316e186ef48a.png', 'test002', '测试2号会员', '18328374923', '3', 'JDJ5JDEwJDcyTXBuVUk4b3FJTmx2ak1Mb0N0TXVVOU5Tcy4wNG1uN1NyeFZDY2QxMUpramZyMTZvNkZX', '1', '1575267207', '1575267207', '0');
INSERT INTO `user` VALUES ('3', '/uploads/attachment/20190822/f0a7cd43074283b428b0a33ecfca5f9d.png', '测试3号', '测试3号', '18653165683', '4', 'JDJ5JDEwJEtwME5lRWw4TGpsR0RSWWh3QXZ4Uk9kZzRPczAzR0xoMXR6QlF4Z25sZUI4TnZva0M3dHlp', '1', '1575267207', '1575267207', '0');
INSERT INTO `user` VALUES ('4', '/uploads/attachment/20190822/1771ce624eccb96aad992df540126d3b.png', '小女孩', '小女孩', '13638392923', '1', 'JDJ5JDEwJGh6QnBETDFWQ2hlRTJWekkyMkF4bU9aNGVZOWNUU0NFRloxcG5EZHF2aGZlL2VrdUQ4cVRT', '1', '1575267207', '1575267207', '0');

-- ----------------------------
-- Table structure for `user_level`
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/user_level_default.png' COMMENT '图片',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户等级';

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES ('1', '普通用户', '普通用户', '/uploads/attachment/20190822/65e4ad92ece9fdb7f3822ba4fc322bf6.png', '1', '1575267208', '1575267208', '0');
INSERT INTO `user_level` VALUES ('2', '青铜会员', '青铜会员', '/uploads/attachment/20190822/d0b153352b15ea7097403c563e9c3be4.png', '1', '1575267208', '1575267208', '0');
INSERT INTO `user_level` VALUES ('3', '白银会员', '白银会员', '/uploads/attachment/20190822/72031bafedeba534d1e862b8d717f8db.png', '1', '1575267208', '1575267208', '0');
INSERT INTO `user_level` VALUES ('4', '黄金会员', '黄金会员', '/uploads/attachment/20190822/6dcc15ea1701c449e63e6856f0931e2a.png', '1', '1575267208', '1575267208', '0');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '视频名称',
  `type` int(11) NOT NULL COMMENT '资源类型',
  `path` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频路径',
  `teacher_id` int(11) NOT NULL COMMENT '教师ID',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='视频信息表';

-- ----------------------------
-- Records of video
-- ----------------------------
