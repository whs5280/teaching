<?php
/**
 * 教师资源验证器
 */

namespace app\common\validate;

class ProfessorValidate extends Validate
{
    protected $rule = [
        'title|教师资源标题' => 'require',
        'content|教师资源内容' => 'require',
        'path|教师资源图片' => 'require',
        'sort|排序' => 'require',

    ];

    protected $message = [
        'title.require' => '教师资源标题不能为空',
        'content.require' => '教师资源内容不能为空',
        'path.require' => '教师资源图片不能为空',
        'sort.require' => '排序不能为空',

    ];

    protected $scene = [
        'add' => ['title', 'content', 'path', 'sort',],
        'edit' => ['title', 'content', 'path', 'sort',],

    ];


}
