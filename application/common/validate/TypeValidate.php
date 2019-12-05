<?php
/**
 * 类型表验证器
 */

namespace app\common\validate;

class TypeValidate extends Validate
{
    protected $rule = [
            'name|类型名称' => 'require',

    ];

    protected $message = [
            'name.require' => '类型名称不能为空',

    ];

    protected $scene = [
        'add'  => ['name',],
'edit' => ['name',],

    ];

    

}
