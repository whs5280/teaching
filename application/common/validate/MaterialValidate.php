<?php
/**
 * 教学资料信息验证器
 */

namespace app\common\validate;

class MaterialValidate extends Validate
{
    protected $rule = [
        'name|资料名称' => 'require',
        'type|资料类型' => 'require',

    ];

    protected $message = [
        'name.require' => '资料名称不能为空',
        'type.require' => '资料类型不能为空',

    ];

    protected $scene = [
        'add' => ['name', 'type', ],
        'edit' => ['name', 'type', ],

    ];


}
