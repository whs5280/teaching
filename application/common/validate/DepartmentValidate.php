<?php
/**
 * 部门信息表验证器
 */

namespace app\common\validate;

class DepartmentValidate extends Validate
{
    protected $rule = [
        'name|部门名称' => 'require',
        'description|说明备注' => 'require',

    ];

    protected $message = [
        'name.require' => '部门名称不能为空',
        'description.require' => '说明备注不能为空',

    ];

    protected $scene = [
        'add'  => ['name', 'description',],
        'edit' => ['name', 'description',],
    ];

    

}
