<?php
/**
 * 学院信息表验证器
 */

namespace app\common\validate;

class CollegeValidate extends Validate
{
    protected $rule = [
        'name|学院名称' => 'require',

    ];

    protected $message = [
        'name.require' => '学院名称不能为空',

    ];

    protected $scene = [
        'add'  => ['name',],
        'edit' => ['name',],

    ];
}
