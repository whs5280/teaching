<?php
/**
 * 教学课件信息验证器
 */

namespace app\common\validate;

class CoursewareValidate extends Validate
{
    protected $rule = [
        'name|课件名称' => 'require',
        'type|课件类型' => 'require',

    ];

    protected $message = [
        'name.require' => '课件名称不能为空',
        'type.require' => '课件类型不能为空',

    ];

    protected $scene = [
        'add' => ['name', 'type', ],
        'edit' => ['name', 'type', ],

    ];


}
