-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-12-11 16:46:14
-- 服务器版本： 10.1.37-MariaDB-0+deb9u1
-- PHP 版本： 7.0.33-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `teaching`
--

-- --------------------------------------------------------

--
-- 表的结构 `achievement`
--

CREATE TABLE `achievement` (
  `id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '教研成果标题',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教研成果内容',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教研成果图片',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教研成果资源表';

-- --------------------------------------------------------

--
-- 表的结构 `admin_log`
--

CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL,
  `admin_user_id` int(10) NOT NULL COMMENT '用户',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'URL',
  `log_method` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  `log_ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作IP',
  `create_time` int(10) NOT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台操作日志';

--
-- 转存表中的数据 `admin_log`
--

INSERT INTO `admin_log` (`id`, `admin_user_id`, `name`, `url`, `log_method`, `log_ip`, `create_time`) VALUES
(1, 1, '登录', 'admin/auth/login', 'POST', '::1', 1575267686),
(2, 1, '登录', 'admin/auth/login', 'POST', '::1', 1575340902),
(3, 1, '添加学院信息', 'admin/college/add.html', 'POST', '::1', 1575340996),
(4, 1, '添加学院信息', 'admin/college/add.html', 'POST', '::1', 1575341364),
(5, 1, '修改学院信息表', 'admin/college/edit/id/3.html', 'POST', '::1', 1575341527),
(6, 1, '删除学院信息表', 'admin/college/del.html', 'POST', '::1', 1575341536),
(7, 1, '修改学院信息表', 'admin/college/edit/id/2.html', 'POST', '::1', 1575341543),
(8, 1, '修改学院信息表', 'admin/college/edit/id/1.html', 'POST', '::1', 1575341683),
(9, 1, '修改学院信息表', 'admin/college/edit/id/1.html', 'POST', '::1', 1575341692),
(10, 1, '添加学院信息', 'admin/college/add.html', 'POST', '::1', 1575342353),
(11, 1, '修改学院信息', 'admin/college/edit/id/4.html', 'POST', '::1', 1575342359),
(12, 1, '添加部门信息', 'admin/department/add.html', 'POST', '::1', 1575342768),
(13, 1, '修改部门信息', 'admin/department/edit/id/3.html', 'POST', '::1', 1575342780),
(14, 1, '删除部门信息', 'admin/department/del.html', 'POST', '::1', 1575342785),
(15, 1, '登录', 'admin/auth/login', 'POST', '::1', 1575344912),
(16, 1, '登录', 'admin/auth/login', 'POST', '::1', 1575351102),
(17, 1, '添加资源类型', 'admin/type/add.html', 'POST', '::1', 1575351305),
(18, 1, '修改资源类型', 'admin/type/edit/id/1.html', 'POST', '::1', 1575351319),
(19, 1, '添加资源类型', 'admin/type/add.html', 'POST', '::1', 1575351325),
(20, 1, '登录', 'admin/auth/login', 'POST', '::1', 1575377820),
(21, 1, '添加教师信息', 'admin/teacher/add.html', 'POST', '::1', 1575378552),
(22, 1, '修改教师信息', 'admin/teacher/edit/id/1.html', 'POST', '::1', 1575378819),
(23, 1, '修改教师信息', 'admin/teacher/edit/id/1.html', 'POST', '::1', 1575378828),
(24, 1, '添加教师信息', 'admin/teacher/add.html', 'POST', '::1', 1575379643),
(25, 1, '登录', 'admin/auth/login', 'POST', '::1', 1575626349),
(26, 1, '登录', 'admin/auth/login', 'POST', '::1', 1575967039),
(27, 1, '添加教学视频', 'admin/video/add.html', 'POST', '::1', 1575967112),
(28, 1, '登录', 'admin/auth/login', 'POST', '::1', 1576050262);

-- --------------------------------------------------------

--
-- 表的结构 `admin_log_data`
--

CREATE TABLE `admin_log_data` (
  `id` int(11) NOT NULL,
  `admin_log_id` int(11) NOT NULL COMMENT '日志ID',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '日志内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台操作日志数据';

--
-- 转存表中的数据 `admin_log_data`
--

INSERT INTO `admin_log_data` (`id`, `admin_log_id`, `data`) VALUES
(1, 1, '9206077d4VweMnEppnjQ7nAMCVpJs/dQi5hFvusYgisThZMsuhkgTbARv7ekCEQYGO6wiPR9GRMmQbQbeKq8mYlnYvizJ4D/+3g6jd4jh7T+BKEfkgxjBFNct8O5F81a49MBxn4VngCOWvm/WjPBztP8gVtcEK4QgPq02N6t3n49C1T4B74tfnwr0vJfG7TAtv6G'),
(2, 2, 'b4e53e6cZk2ZqIfRp8vyLYexO9i3k/msQVHx0Rcd5dkBONWOcgY3OPHSWjYPVMPyJj3Sn7MODy07Xk2ItzoTgpXeQTGEE6eHdf88PTZ9xB/Ox4FnE2CX2hOsdr83AoDONdmQglsbcP1154XMDj3utp9+Dt84MYrvTGgNMmjlnQskYh7H+GU6Vt5wacreDAuqp1fF'),
(3, 3, '34751ae6U0LqUmNKvYYC3PUG1yTQjPPqQk3s+YO2SEOmnHybp2Rn9WpmR0SbzgCNi2jk0RQDiZmT+by94DbltEg/SScjCxhNRK6gE6dh+dSEf8EovvVB/RvtpAAVzH15T2YcELBYxk1vuFromFcsc+rkM7AHeDB/'),
(4, 4, '95c04e73HJHQlvDNte2P3LR3hWoJOCnzMGo6vskVZZiY5a8q9GZvExSDFqdXMVERaEJuhJRJlyC4bhp3OwxCfmRyZ54PFjikh0njfbTRgfFXtl+H/fr7DuzZke02uYs0f1k4FaKnS9X43vdMEXl3HhiV/rkbjHpaF4yflkPhK4P79iDy1g'),
(5, 5, '58a6f81fsJgF/i6S2pPvrqJGITmlzrQMC8Bpamsu8ccadck2YWGWSqhUFbX49GPvJ+ILVMPvWzzSMyWbFSWFf6ytPtlZr2NHxXHKuCI9LA2QOA3Dr2uxGar8z3Muua6AN8Q5kd+0J1mbDHx6gOBRLjTw3Hf8S1i7QwW+BMzbLWILRrAB2x5r9SkN3764'),
(6, 6, '99d7c241ZIDaio9z/rmDZ5sPCbLuzWVf3C4eh3la4S5AyGho8uesAt6h'),
(7, 7, '19be3c68Ma+WSpZlIcw+iy7z3IUF+fWSNDsjUEKNz+umUOpxpzFpL6B4FPhf+hW9q36NgudyiQ0X9WPfLzyljkQhAJjoTf2ga5uUoSB8phZVI3qw/f+EhPQ9nr9xUxGVUWdUg4FTWlQQa+QOBx4UmSrITlPPlXF2jlm4QFjWSOvwttNSknz7gfaYnON9'),
(8, 8, 'c177e4b9gy+Y6xwDsZ6rxzDZILTA+n7mk+ejXbKp1txbymNzB6WVsIppbR8XC6w4lVyCutWNbb/u8dkAIPtgHc/n8IgbxzU2P1SgZMw2gWlB2Q50OSuMwrjcIliWqrPpC1b1vgmzEJycqWY3ZLYh5TLqgUT7st+Mnqp70958epeFRsc8DnRGntbUa2cb'),
(9, 9, '119253200iUsMZZtB29vcvZlBi0KtiyyFHw+E5ZRO3FEUcvV60xyUT/Ypni0ltrTYevMO/pv9KZKa64BmUHSeNjqrlQ2nqrv1SeeswGZ3BfezCUDf9e3LojvUYlUP+TQ0hqfv+3YaS93R+IgRzUtWD5ktXzvAma/ZrwJRuSd5F++NoqUtdP63qTksyZnng'),
(10, 10, '1704fd1a9KX37+xAkpyG0WvGX0I+e3whmobEU4+EA+g14KhesVBKVtwbePFtbZh1engl+tqZ0JOIZEct8rfYFId+bf0i8254Syc7pgKWCAQB48NRNQWSbYq8GotAMHAKppCL6Tgocc5OHBkVVCbLVORQItHrX8xa'),
(11, 11, '6ac47a79P58Syv4rEk2NU62w3IEcWLSk1gGZGNdkt5ivcoYlKXfe0FPazo7fCj90vpFpg4xC5bNCaeIXb2lQdqKa9tlisrwWjI9dNW1Q5hwdRg0BvLEU1DM2/C7tkZHrxoeCZo30gET8QW1RFqTouJrrVXcjuteHi6QLAnCm5um0'),
(12, 12, 'e90ae98eLsNq3Y0b8Jn5Z8/Y9AgKHJbtp8hAOS6UB0wWe8hq7lOomFNxUmS/y3iqLAGHuICaUyqHR+/YGsJDj05dLwqM9ytB/jOon7HgqO1PLkOKJcy1Toaal6c8D38x6c3aNnIg5phpQO3JS/LV53ejwelyJRAbwz8sjrpr92hsGtq6VEvE/GTZVfCXj+zjNvMMzT3H+/vAZ+aRvoFta4/iCnMmS9g'),
(13, 13, '20de24d9BDif7SBr2SgO33RaQWFXh3yup3pqeu12Uj5ylIlv9RJy2WBuVhCTFONaoUdBCYLSRY7JstFTwMPt3tRCdNUwBRAQwCnUEbcLYQvrMdof/7ul8wg9PEqkdGcaQ23MAp0Va1oRf/qjAib7RM/bBSBxnqhOQ3Bfm/uzCaEhfXPSAhGDgPj3des4Dh2A7+iJhzhNVtpfJMM3KoEaQOZxfPQne7t2+B4wvy2Q4NYOxoe5HleNHGH70Z8'),
(14, 14, '2a80d562So1l4w4H0iKFo1VdldUfbNprUJVFJ3h7X9aVh6CzqKTr/ts/'),
(15, 15, '86842681Fzk7g65JVJV7RouX/6Yn5wEH1Y+hUq0XDUzoo+jXyu8jcr3dP5ZhXza6yFlubHOYrBUIf+olCPwZtFrjv0VRNa5M5Ac0Dc6vNnKi9JTL9AX4d5SrDh0YYhyr5gJ2+VIC/ycEyX1cWZv+sEAEJ8ONmnCmtJO5k4a2o77UXlDTqDKCo8qJzO8PsYcDQwXl'),
(16, 16, '077984ddtjZfAthsWcK4wXalum+sMtnP/SPkhWm3blii69WSXg/dbb4Gy+q9qezponv9Yp6vzIM5JmlkjSFqCb8ePZIqY0bF3kdsLJCDDLM8fUfWe4uBM1cjEh/Wg1JQcNQwXHzzSZMP6zX70iDY85RHbld0okB78nSuWaDHcG6QPwWkactRz8kQSvyZ+ObUvUIR'),
(17, 17, 'fb69dbe8d+dIYRtBok+lF9Wpvtpk69vePCFSh/tEqBqYTEnPhpE22Myn+t07dyeJc/13dEzHgxsISbJNndw0CJ9Y+Zbnx6/2GkEuAf+SwCP0CJXlI3mdwO5qp9Na'),
(18, 18, '31835f906wrEYBPBNmyK4RDIHG/k95BPAoO3zGudIxGUys8JhP+8rIxqXgEpXmhitv/3fdlY8v2Ja5dMoy0aoXnPqXggwL8Do/l+KDgTdD4sYg3kQcLxbKTwJw0wHkaKyaPEpgXQ'),
(19, 19, '22e2add3KPwIzd1VnsqSBv6idEap34NicSIUWC+vCcj35+Ca1HNLpiXyHQvMkvNH5JlvclCZmATj7+XB4P9fxg/7HhnYV2ZVDHMZOBse+7O6w/u3qkTwDR4U8/Hkiw'),
(20, 20, '6cdf64e4vHKHbV6PvBoKs4hRWprldm/s7flHEI2nkR4m7mY7DJg7FCXlxwws/5+VXirYCLdme3rlWnGc5Zkj2x0tvvRs3INrsZnejlGWP1eQYP0GlT17x3tzMBzP3veanJ/Bp3X4Ho4SHzAHn9miELsR/9OCKIUtvY67T2/T6to6G7p2fdoTxEqHNW5Srb6scGwU'),
(21, 21, '92450e443IWTYP2DkF3RsAq51/ISuELLKRDz4y0XZwvfGuhMG4sYpJ7WmIROWyPjKh8iOR7alJVxEE3I8JhdwyE1of0LiiefjnkmkNsUV0zfYH1j6tDmOC7HFU5kFYSBJIc3M4gqsNZDsqOamx0hRHE1L5FONO3Xfj1H9lip2VdGa0n8dEku4q1DdVXPBjXugI2NdjmUhrcl3irpddIZGBrmlH6ZTAQuoTXNFkmiEDLfqoZEtw'),
(22, 22, 'fb86d65dODygzDx8d6hDL40bKks8zBmgYWaOaFlgfsbYQqu5UPvg0JGkS44qVDZZe2jRx0dKmja0kp9j4SQEIYzZom8ZgBrpovWHWTTdCjMQoJWW00rmiNqXnQzV3aF4L8fHwomU7sjzot3zbOiXEUjpVyXx56aB/7mjTvYv82T16HxGytYk2EAUg/CQeRcVlESaLhuvKolpPs/Bd1Fe1BjnEAsWjALOwpruj6XNAwgO7GVsBipWJ48+W6+YqQ'),
(23, 23, 'cf68a235f+3coiEENOREbk0vHjFYklmDc/7SCsUUpW2Tqh4CE9Kr4WwNvxhJuWyMvFaJU2G0rX5ZmikM5aAM8wFBJ7ikDfkyNhcnvvsz6edDyZV2CWzao12EkNcWmTBNXYxywWZmZgcbyHWbGqDNNYuJtGBDRsScAWC6kVINN/ZWxdHT7rIYa0TF257Nd1Gszbg28n2Pmb/FIEC27e5VJvwk+ujx4zORjDfaFSRxykVEPmE2sYS3U3pSxzK8mA'),
(24, 24, 'b2270ff9tNVayL7LpHbD+BPx090Wm193+TfCjRzzbyhc0K9bwn9r4eR92a4aBYkY7pmuiEVm7q0atX0G2guyaylHs17VE1Xiv72tGeh1BVlY/fH/CT2wQoYy0W6y3Vay/J6vRbg8Z7MSEBK0ZGnhb00uc+tuLDNa0ErgUcpOUs/WtKBgzxoiCadfc13jlIC0FmfEPZJQ7sgs2Rf8uSxldyk+eQCZmYjHIlOZsvF4xUBhOKTtGA'),
(25, 25, '8db408eb6khqYN+jk+6mzH6Jh+VpVOiH2mv2U1jicehglA1L1DaqE7ybPC9G9iu/EsUWD9+M0g0VjFlo+Q7JsjMiZs4FTDZA2QwhFl85sIsNUWG3rTDwyZ1/m5WJ2V4A+V9TlhmoKrcTOOMv66rG1rdNBqBwxs4/ljACQstNUgQzK2Q2vcKomswsi7spXlV3rlcV'),
(26, 26, '2745205dbTyBLKAqyGXaGFIGzpa1ywC2Lgp8WJUQmIMUpfkHzp8/maxQq6wr4MD0IYLU0CbyMntOpV5+Jj0mHVKN7qy8mzP0lzG33dpLJSF3+4CI7oYnktqhS2P8Wn8Gpe2UtGTIJfFvxwpAZizq5kd2NuURD06af53VVhVOifegXPly85sNZbQu7U8jkxTYWLlS'),
(27, 27, '23ee2415OkSUi2V6gLk/Vs+4Xcn3wFOluIXRRbFPnog8kdZQQkwURu0uKv114tOyMrylxQ6+E9OO4x82nxXzbz6UG1W7/Zmju7pqFXkdVUmsssVkoiFI2twnvykiqpy0ffSDobi3NnWOBiT/KDeV04Be'),
(28, 28, '350a736en+Q5N8J6eWpcRWNCYwJ948VJAq5kiLxAGFiCcanDY3DU4fDy4kp+Qghto4mDYltRsahmLvaD6Arak8ElkdL21zj9X+FUD5wRof1QaLpfahDCIEyLv7nr5fUXc0miF4aJ66mQUrAb2sxWlmWjNsOj/I+HuYM1FnuYz2cOCLnp8UyvUmmosKbvWRqDpGmv');

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级菜单',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url',
  `icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '等级',
  `sort_id` int(10) NOT NULL DEFAULT '1000' COMMENT '排序',
  `log_method` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台菜单';

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `name`, `url`, `icon`, `is_show`, `sort_id`, `log_method`) VALUES
(1, 0, '后台首页', 'admin/index/index', 'fa-home', 1, 99, '不记录'),
(2, 0, '系统管理', 'admin/sys', 'fa-desktop', 1, 1099, '不记录'),
(3, 2, '用户管理', 'admin/admin_user/index', 'fa-user', 1, 1000, '不记录'),
(4, 3, '添加用户', 'admin/admin_user/add', 'fa-plus', 0, 1000, 'POST'),
(5, 3, '修改用户', 'admin/admin_user/edit', 'fa-edit', 0, 1000, 'POST'),
(6, 3, '删除用户', 'admin/admin_user/del', 'fa-close', 0, 1000, 'POST'),
(7, 2, '角色管理', 'admin/admin_role/index', 'fa-group', 1, 1000, '不记录'),
(8, 7, '添加角色', 'admin/admin_role/add', 'fa-plus', 0, 1000, 'POST'),
(9, 7, '修改角色', 'admin/admin_role/edit', 'fa-edit', 0, 1000, 'POST'),
(10, 7, '删除角色', 'admin/admin_role/del', 'fa-close', 0, 1000, 'POST'),
(11, 7, '角色授权', 'admin/admin_role/access', 'fa-key', 0, 1000, 'POST'),
(12, 2, '菜单管理', 'admin/admin_menu/index', 'fa-align-justify', 1, 1000, '不记录'),
(13, 12, '添加菜单', 'admin/admin_menu/add', 'fa-plus', 0, 1000, 'POST'),
(14, 12, '修改菜单', 'admin/admin_menu/edit', 'fa-edit', 0, 1000, 'POST'),
(15, 12, '删除菜单', 'admin/admin_menu/del', 'fa-close', 0, 1000, 'POST'),
(16, 2, '操作日志', 'admin/admin_log/index', 'fa-keyboard-o', 1, 1000, '不记录'),
(17, 16, '查看操作日志详情', 'admin/admin_log/view', 'fa-search-plus', 0, 1000, '不记录'),
(18, 2, '个人资料', 'admin/admin_user/profile', 'fa-smile-o', 1, 1000, 'POST'),
(19, 0, '用户管理', 'admin/user/mange', 'fa-users', 1, 1000, '不记录'),
(20, 19, '用户管理', 'admin/user/index', 'fa-user', 1, 1000, '不记录'),
(21, 20, '添加用户', 'admin/user/add', 'fa-plus', 0, 1000, 'POST'),
(22, 20, '修改用户', 'admin/user/edit', 'fa-pencil', 0, 1000, 'POST'),
(23, 20, '删除用户', 'admin/user/del', 'fa-trash', 0, 1000, 'POST'),
(24, 20, '启用用户', 'admin/user/enable', 'fa-circle', 0, 1000, 'POST'),
(25, 20, '禁用用户', 'admin/user/disable', 'fa-circle', 0, 1000, 'POST'),
(26, 19, '用户等级管理', 'admin/user_level/index', 'fa-th-list', 1, 1000, '不记录'),
(27, 26, '添加用户等级', 'admin/user_level/add', 'fa-plus', 0, 1000, 'POST'),
(28, 26, '修改用户等级', 'admin/user_level/edit', 'fa-pencil', 0, 1000, 'POST'),
(29, 26, '删除用户等级', 'admin/user_level/del', 'fa-trash', 0, 1000, 'POST'),
(30, 26, '启用用户等级', 'admin/user_level/enable', 'fa-circle', 0, 1000, 'POST'),
(31, 26, '禁用用户等级', 'admin/user_level/disable', 'fa-circle', 0, 1000, 'POST'),
(32, 2, '开发管理', 'admin/develop/manager', 'fa-code', 1, 1005, '不记录'),
(33, 32, '代码生成', 'admin/generate/index', 'fa-file-code-o', 1, 1000, '不记录'),
(34, 32, '设置配置', 'admin/develop/setting', 'fa-cogs', 1, 995, '不记录'),
(35, 34, '设置管理', 'admin/setting/index', 'fa-cog', 1, 1000, '不记录'),
(36, 35, '添加设置', 'admin/setting/add', 'fa-plus', 0, 1000, 'POST'),
(37, 35, '修改设置', 'admin/setting/edit', 'fa-pencil', 0, 1000, 'POST'),
(38, 35, '删除设置', 'admin/setting/del', 'fa-trash', 0, 1000, 'POST'),
(39, 34, '设置分组管理', 'admin/setting_group/index', 'fa-list', 1, 1000, '不记录'),
(40, 39, '添加设置分组', 'admin/setting_group/add', 'fa-plus', 0, 1000, 'POST'),
(41, 39, '修改设置分组', 'admin/setting_group/edit', 'fa-pencil', 0, 1000, 'POST'),
(42, 39, '删除设置分组', 'admin/setting_group/del', 'fa-trash', 0, 1000, 'POST'),
(43, 0, '设置中心', 'admin/setting/center', 'fa-cogs', 1, 1000, '不记录'),
(44, 43, '所有配置', 'admin/setting/all', 'fa-list', 1, 1000, '不记录'),
(47, 43, '后台设置', 'admin/setting/admin', 'fa-adjust', 1, 1000, '不记录'),
(48, 43, '更新设置', 'admin/setting/update', 'fa-pencil', 0, 1000, 'POST'),
(49, 32, '数据维护', 'admin/database/table', 'fa-database', 1, 1000, '不记录'),
(50, 49, '查看表详情', 'admin/database/view', 'fa-eye', 0, 1000, '不记录'),
(51, 49, '优化表', 'admin/database/optimize', 'fa-refresh', 0, 1000, 'POST'),
(52, 49, '修复表', 'admin/database/repair', 'fa-circle-o-notch', 0, 1000, 'POST'),
(61, 0, '学院信息管理', 'admin/college/index', 'fa-list', 1, 1000, '不记录'),
(62, 61, '学院信息', 'admin/college/index', '', 1, 1000, '不记录'),
(63, 62, '添加学院信息', 'admin/college/add', 'fa-plus', 0, 1000, 'POST'),
(64, 62, '修改学院信息', 'admin/college/edit', 'fa-pencil', 0, 1000, 'POST'),
(65, 62, '删除学院信息', 'admin/college/del', 'fa-trash', 0, 1000, 'POST'),
(66, 0, '部门信息管理', 'admin/department/index', 'fa-list', 1, 1000, '不记录'),
(67, 66, '部门信息', 'admin/department/index', '', 1, 1000, '不记录'),
(68, 67, '添加部门信息', 'admin/department/add', 'fa-plus', 0, 1000, 'POST'),
(69, 67, '修改部门信息', 'admin/department/edit', 'fa-pencil', 0, 1000, 'POST'),
(70, 67, '删除部门信息', 'admin/department/del', 'fa-trash', 0, 1000, 'POST'),
(71, 0, '资源类型管理', 'admin/type/index', 'fa-list', 1, 1000, '不记录'),
(72, 71, '资源类型', 'admin/type/index', '', 1, 1000, '不记录'),
(73, 72, '添加资源类型', 'admin/type/add', 'fa-plus', 0, 1000, 'POST'),
(74, 72, '修改资源类型', 'admin/type/edit', 'fa-pencil', 0, 1000, 'POST'),
(75, 72, '删除资源类型', 'admin/type/del', 'fa-trash', 0, 1000, 'POST'),
(76, 0, '教师信息管理', 'admin/teacher/index', 'fa-list', 1, 1000, '不记录'),
(77, 76, '教师信息', 'admin/teacher/index', '', 1, 1000, '不记录'),
(78, 77, '添加教师信息', 'admin/teacher/add', 'fa-plus', 0, 1000, 'POST'),
(79, 77, '修改教师信息', 'admin/teacher/edit', 'fa-pencil', 0, 1000, 'POST'),
(80, 77, '删除教师信息', 'admin/teacher/del', 'fa-trash', 0, 1000, 'POST'),
(81, 0, '教学视频管理', 'admin/video/index', 'fa-list', 1, 1000, '不记录'),
(82, 81, '教学视频信息', 'admin/video/index', '', 1, 1000, '不记录'),
(83, 82, '添加教学视频', 'admin/video/add', 'fa-plus', 0, 1000, 'POST'),
(84, 82, '修改教学视频', 'admin/video/edit', 'fa-pencil', 0, 1000, 'POST'),
(85, 82, '删除教学视频', 'admin/video/del', 'fa-trash', 0, 1000, 'POST'),
(86, 0, '教学资料管理', 'admin/material/index', 'fa-list', 1, 1000, '不记录'),
(87, 86, '教学资料', 'admin/material/index', '', 1, 1000, '不记录'),
(88, 87, '添加教学资料', 'admin/material/add', 'fa-plus', 0, 1000, 'POST'),
(89, 87, '修改教学资料', 'admin/material/edit', 'fa-pencil', 0, 1000, 'POST'),
(90, 87, '删除教学资料', 'admin/material/del', 'fa-trash', 0, 1000, 'POST'),
(91, 0, '教学课件管理', 'admin/courseware/index', 'fa-list', 1, 1000, '不记录'),
(92, 91, '教学课件', 'admin/courseware/index', '', 1, 1000, '不记录'),
(93, 92, '添加教学课件', 'admin/courseware/add', 'fa-plus', 0, 1000, 'POST'),
(94, 92, '修改教学课件', 'admin/courseware/edit', 'fa-pencil', 0, 1000, 'POST'),
(95, 92, '删除教学课件', 'admin/courseware/del', 'fa-trash', 0, 1000, 'POST'),
(96, 0, '教学试题管理', 'admin/question/index', 'fa-list', 1, 1000, '不记录'),
(97, 96, '教学试题', 'admin/question/index', '', 1, 1000, '不记录'),
(98, 97, '添加教学试题', 'admin/question/add', 'fa-plus', 0, 1000, 'POST'),
(99, 97, '修改教学试题', 'admin/question/edit', 'fa-pencil', 0, 1000, 'POST'),
(100, 97, '删除教学试题', 'admin/question/del', 'fa-trash', 0, 1000, 'POST'),
(101, 0, '教学案例资源管理', 'admin/honor/index', 'fa-list', 1, 1000, '不记录'),
(102, 101, '教学案例资源', 'admin/honor/index', '', 1, 1000, '不记录'),
(103, 102, '添加教学案例资源', 'admin/honor/add', 'fa-plus', 0, 1000, 'POST'),
(104, 102, '修改教学案例资源', 'admin/honor/edit', 'fa-pencil', 0, 1000, 'POST'),
(105, 102, '删除教学案例资源', 'admin/honor/del', 'fa-trash', 0, 1000, 'POST'),
(106, 0, '教研成果资源管理', 'admin/achievement/index', 'fa-list', 1, 1000, '不记录'),
(107, 106, '教研成果资源', 'admin/achievement/index', '', 1, 1000, '不记录'),
(108, 107, '添加教研成果资源', 'admin/achievement/add', 'fa-plus', 0, 1000, 'POST'),
(109, 107, '修改教研成果资源', 'admin/achievement/edit', 'fa-pencil', 0, 1000, 'POST'),
(110, 107, '删除教研成果资源', 'admin/achievement/del', 'fa-trash', 0, 1000, 'POST'),
(111, 0, '教师资源管理', 'admin/professor/index', 'fa-list', 1, 1000, '不记录'),
(112, 111, '教师资源', 'admin/professor/index', '', 1, 1000, '不记录'),
(113, 112, '添加教师资源', 'admin/professor/add', 'fa-plus', 0, 1000, 'POST'),
(114, 112, '修改教师资源', 'admin/professor/edit', 'fa-pencil', 0, 1000, 'POST'),
(115, 112, '删除教师资源', 'admin/professor/del', 'fa-trash', 0, 1000, 'POST');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台角色';

--
-- 转存表中的数据 `admin_role`
--

INSERT INTO `admin_role` (`id`, `name`, `description`, `url`, `status`) VALUES
(1, '管理员', '后台管理员角色', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48', 1);

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJEZSTXI3ZmZoVUdWQTAvWTJrYkNxNmVpMWQ3RUdQVXlXNjhMUmF6Wi55aFBrYzk4dll6Yk1t' COMMENT '密码',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/admin/images/avatar.png' COMMENT '头像',
  `role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台用户';

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`, `nickname`, `avatar`, `role`, `status`, `delete_time`) VALUES
(1, 'super_admin', 'JDJ5JDEwJDgvVjRmd1R3c1RmTkJVRVBYU0hKNnViZUs1TjkudGJRY013OHdMOTVYMFdDdjBrTG1DakF5', '超级管理员', '/static/admin/images/avatar.png', '1', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `attachment`
--

CREATE TABLE `attachment` (
  `id` int(11) NOT NULL,
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
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

--
-- 转存表中的数据 `attachment`
--

INSERT INTO `attachment` (`id`, `admin_user_id`, `user_id`, `original_name`, `save_name`, `save_path`, `url`, `extension`, `mime`, `size`, `md5`, `sha1`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 0, 0, 'php1.1.mp4', '55a84290579e4d9bb3946e16a068a1be.mp4', '/var/www/html/teaching/public/uploads/attachment/video/20191210/55a84290579e4d9bb3946e16a068a1be.mp4', '/uploads/attachment/video/20191210/55a84290579e4d9bb3946e16a068a1be.mp4', 'mp4', 'video/mp4', 7876305, '8ec832c01e03cf268b61ac3c804b55bb', 'd0efb6b0c40086502ad251a42cc2a4084c8583ef', 1575967112, 1575967112, 0);

-- --------------------------------------------------------

--
-- 表的结构 `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '学院名称',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='学院信息表';

--
-- 转存表中的数据 `college`
--

INSERT INTO `college` (`id`, `name`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '软件工程系', 1575269404, 1575341692, 0),
(2, '国际贸易系', 1575269404, 1575341543, 0),
(3, '绿色环保系', 1575341364, 1575341527, 0),
(4, '财会算计系', 1575342353, 1575342359, 0);

-- --------------------------------------------------------

--
-- 表的结构 `courseware`
--

CREATE TABLE `courseware` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '课件名称',
  `type` int(11) NOT NULL COMMENT '课件类型',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '课件路径',
  `teacher_id` int(11) NOT NULL COMMENT '教师ID',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教学课件信息表';

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '说明备注',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门信息表';

--
-- 转存表中的数据 `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '财务部', '负责学院的财务支出管理等等', 1575269443, 1575269443, 0),
(2, '教学部', '负责学院的教学等等', 1575269443, 1575269447, 0),
(3, '管理部', '负责学院的管理等等', 1575342768, 1575342780, 0);

-- --------------------------------------------------------

--
-- 表的结构 `honor`
--

CREATE TABLE `honor` (
  `id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '案例标题',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '案例内容',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '案例图片',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教学案例资源表';

-- --------------------------------------------------------

--
-- 表的结构 `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '资料名称',
  `type` int(11) NOT NULL COMMENT '资料类型',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资料路径',
  `teacher_id` int(11) NOT NULL COMMENT '教师ID',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教学资料信息表';

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20190302092540, 'AdminMenu', '2019-12-02 06:13:27', '2019-12-02 06:13:27', 0),
(20190302094849, 'AdminUser', '2019-12-02 06:13:27', '2019-12-02 06:13:27', 0),
(20190302094853, 'AdminLog', '2019-12-02 06:13:27', '2019-12-02 06:13:27', 0),
(20190302094933, 'AdminRole', '2019-12-02 06:13:27', '2019-12-02 06:13:27', 0),
(20190312021143, 'AdminLogData', '2019-12-02 06:13:27', '2019-12-02 06:13:27', 0),
(20190518030432, 'Attachment', '2019-12-02 06:13:27', '2019-12-02 06:13:27', 0),
(20190615081122, 'User', '2019-12-02 06:13:27', '2019-12-02 06:13:28', 0),
(20190822082112, 'UserLevel', '2019-12-02 06:13:28', '2019-12-02 06:13:28', 0),
(20191001081329, 'Setting', '2019-12-02 06:13:28', '2019-12-02 06:13:28', 0),
(20191001081340, 'SettingGroup', '2019-12-02 06:13:28', '2019-12-02 06:13:28', 0),
(20191012005355, 'Test', '2019-12-02 06:13:28', '2019-12-02 06:13:28', 0);

-- --------------------------------------------------------

--
-- 表的结构 `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '教师资源标题',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教师资源内容',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教师资源图片',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教师资源表';

-- --------------------------------------------------------

--
-- 表的结构 `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '试题名称',
  `type` int(11) NOT NULL COMMENT '试题类型',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '试题路径',
  `teacher_id` int(11) NOT NULL COMMENT '教师ID',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教学试题信息表';

-- --------------------------------------------------------

--
-- 表的结构 `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_group_id` int(10) NOT NULL DEFAULT '0' COMMENT '所属分组',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设置配置及内容',
  `sort_number` int(10) NOT NULL DEFAULT '1000' COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设置';

--
-- 转存表中的数据 `setting`
--

INSERT INTO `setting` (`id`, `setting_group_id`, `name`, `description`, `code`, `content`, `sort_number`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 1, '基本设置', '后台的基本信息设置', 'base', '[{\"name\":\"\\u540e\\u53f0\\u540d\\u79f0\",\"field\":\"name\",\"type\":\"text\",\"content\":\"XX\\u540e\\u53f0\\u7cfb\\u7edf\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7b80\\u79f0\",\"field\":\"short_name\",\"type\":\"text\",\"content\":\"\\u540e\\u53f0\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u4f5c\\u8005\",\"field\":\"author\",\"type\":\"text\",\"content\":\"xx\\u79d1\\u6280\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7248\\u672c\",\"field\":\"version\",\"type\":\"text\",\"content\":\"0.1\",\"option\":\"\"}]', 1000, 1575267208, 1575267208, 0),
(2, 1, '登录设置', '后台登录相关设置', 'login', '[{\"name\":\"\\u767b\\u5f55token\\u9a8c\\u8bc1\",\"field\":\"token\",\"type\":\"switch\",\"content\":\"0\",\"option\":\"\"},{\"name\":\"\\u9a8c\\u8bc1\\u7801\",\"field\":\"captcha\",\"type\":\"select\",\"content\":\"1\",\"option\":\"0||\\u4e0d\\u5f00\\u542f\\r\\n1||\\u56fe\\u5f62\\u9a8c\\u8bc1\\u7801\\r\\n2||\\u6ed1\\u52a8\\u9a8c\\u8bc1\"},{\"name\":\"\\u767b\\u5f55\\u80cc\\u666f\",\"field\":\"background\",\"type\":\"image\",\"content\":\"\\/static\\/admin\\/images\\/login-default-bg.jpg\",\"option\":\"\"}]', 1000, 1575267208, 1575267208, 0),
(3, 1, '首页设置', '后台首页参数设置', 'index', '[{\"name\":\"\\u9ed8\\u8ba4\\u5bc6\\u7801\\u8b66\\u544a\",\"field\":\"password_warning\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u662f\\u5426\\u663e\\u793a\\u63d0\\u793a\\u4fe1\\u606f\",\"field\":\"show_notice\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u63d0\\u793a\\u4fe1\\u606f\\u5185\\u5bb9\",\"field\":\"notice_content\",\"type\":\"text\",\"content\":\"\\u6b22\\u8fce\\u6765\\u5230\\u4f7f\\u7528\\u672c\\u7cfb\\u7edf\\uff0c\\u5de6\\u4fa7\\u4e3a\\u83dc\\u5355\\u533a\\u57df\\uff0c\\u53f3\\u4fa7\\u4e3a\\u529f\\u80fd\\u533a\\u3002\",\"option\":\"\"}]', 1000, 1575267208, 1575267208, 0);

-- --------------------------------------------------------

--
-- 表的结构 `setting_group`
--

CREATE TABLE `setting_group` (
  `id` int(11) NOT NULL,
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
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设置分组';

--
-- 转存表中的数据 `setting_group`
--

INSERT INTO `setting_group` (`id`, `module`, `name`, `description`, `code`, `sort_number`, `auto_create_menu`, `auto_create_file`, `icon`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 'admin', '后台设置', '后台管理方面的设置', 'admin', 1000, 1, 1, 'fa-adjust', 1575267208, 1575267208, 0);

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '教师名称',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别（1男2女）',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号码',
  `job_number` int(11) NOT NULL COMMENT '工号',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '所属学院',
  `did` int(11) NOT NULL DEFAULT '0' COMMENT '所属部门',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教师信息表';

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `sex`, `phone`, `job_number`, `cid`, `did`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '张一方', 1, '13434119852', 10001, 1, 2, 1575378552, 1575378829, 0),
(2, '林志凌', 2, '13434118596', 10002, 4, 1, 1575379643, 1575379643, 0);

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `user_level_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户等级',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJGNmRDdNN2N1SEg4T2Fkak93SHZFRGVYR2xkYUo1dVpMZHN6RUZQanhjQmg5MDM5anA1Si9X' COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表-用户';

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='资源类型表';

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`id`, `name`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 'PHP', 1575351305, 1575351319, 0),
(2, 'JAVA', 1575351325, 1575351325, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `user_level_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户等级',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJHVycUc2N2RxVk01VVNEbnBNSHZ1anVWNVRUNWdyNXVYcUlGMUJvemF1bnAzcTU2a21qMC9D' COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `avatar`, `username`, `nickname`, `mobile`, `user_level_id`, `password`, `status`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '/uploads/attachment/20190822/02fce9aecd6cadf6e019e988ad8703ce.png', 'test001', '测试001', '13000000001', 2, 'JDJ5JDEwJGZRa2ppLmFGbmNMbFdjcy9vZjZ6bS53MmRSOFRCdjRwd0hoSXJvaWZQaE9SQ0VsbnFUYTI2', 1, 1575267207, 1575267207, 0),
(2, '/uploads/attachment/20190822/56644a9f283c058cd371316e186ef48a.png', 'test002', '测试2号会员', '18328374923', 3, 'JDJ5JDEwJDcyTXBuVUk4b3FJTmx2ak1Mb0N0TXVVOU5Tcy4wNG1uN1NyeFZDY2QxMUpramZyMTZvNkZX', 1, 1575267207, 1575267207, 0),
(3, '/uploads/attachment/20190822/f0a7cd43074283b428b0a33ecfca5f9d.png', '测试3号', '测试3号', '18653165683', 4, 'JDJ5JDEwJEtwME5lRWw4TGpsR0RSWWh3QXZ4Uk9kZzRPczAzR0xoMXR6QlF4Z25sZUI4TnZva0M3dHlp', 1, 1575267207, 1575267207, 0),
(4, '/uploads/attachment/20190822/1771ce624eccb96aad992df540126d3b.png', '小女孩', '小女孩', '13638392923', 1, 'JDJ5JDEwJGh6QnBETDFWQ2hlRTJWekkyMkF4bU9aNGVZOWNUU0NFRloxcG5EZHF2aGZlL2VrdUQ4cVRT', 1, 1575267207, 1575267207, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/user_level_default.png' COMMENT '图片',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户等级';

--
-- 转存表中的数据 `user_level`
--

INSERT INTO `user_level` (`id`, `name`, `description`, `img`, `status`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '普通用户', '普通用户', '/uploads/attachment/20190822/65e4ad92ece9fdb7f3822ba4fc322bf6.png', 1, 1575267208, 1575267208, 0),
(2, '青铜会员', '青铜会员', '/uploads/attachment/20190822/d0b153352b15ea7097403c563e9c3be4.png', 1, 1575267208, 1575267208, 0),
(3, '白银会员', '白银会员', '/uploads/attachment/20190822/72031bafedeba534d1e862b8d717f8db.png', 1, 1575267208, 1575267208, 0),
(4, '黄金会员', '黄金会员', '/uploads/attachment/20190822/6dcc15ea1701c449e63e6856f0931e2a.png', 1, 1575267208, 1575267208, 0);

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '视频名称',
  `type` int(11) NOT NULL COMMENT '资源类型',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频路径',
  `teacher_id` int(11) NOT NULL COMMENT '教师ID',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教学视频信息表';

--
-- 转存表中的数据 `video`
--

INSERT INTO `video` (`id`, `name`, `type`, `path`, `teacher_id`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '视频1', 1, '/uploads/attachment/video/20191210/55a84290579e4d9bb3946e16a068a1be.mp4', 1, 1575967112, 1575967112, 0);

--
-- 转储表的索引
--

--
-- 表的索引 `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_log_data`
--
ALTER TABLE `admin_log_data`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_url` (`url`);

--
-- 表的索引 `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_username` (`username`);

--
-- 表的索引 `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `courseware`
--
ALTER TABLE `courseware`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`version`);

--
-- 表的索引 `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `setting_group`
--
ALTER TABLE `setting_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `achievement`
--
ALTER TABLE `achievement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `admin_log_data`
--
ALTER TABLE `admin_log_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- 使用表AUTO_INCREMENT `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `courseware`
--
ALTER TABLE `courseware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `honor`
--
ALTER TABLE `honor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `setting_group`
--
ALTER TABLE `setting_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
