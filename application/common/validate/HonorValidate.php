<?php
/**
 * 教学案例资源验证器
 */

namespace app\common\validate;

class HonorValidate extends Validate
{
    protected $rule = [
        'title|案例标题' => 'require',
        'content|案例内容' => 'require',
        'path|案例图片' => 'require',
        'sort|排序' => 'require',

    ];

    protected $message = [
        'title.require' => '案例标题不能为空',
        'content.require' => '案例内容不能为空',
        'path.require' => '案例图片不能为空',
        'sort.require' => '排序不能为空',

    ];

    protected $scene = [
        'add' => ['title', 'content', 'path', 'sort',],
        'edit' => ['title', 'content', 'path', 'sort',],

    ];


}
