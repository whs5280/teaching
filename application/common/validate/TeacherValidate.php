<?php
/**
 * 教师信息表验证器
 */

namespace app\common\validate;

class TeacherValidate extends Validate
{
    protected $rule = [
        'name|教师名称' => 'require',
        'sex|性别' => 'require',
        'phone|手机号码' => 'require',
        'job_number|工号' => 'require',
        'cid|所属学院' => 'require',
        'did|所属部门' => 'require',

    ];

    protected $message = [
        'name.require' => '教师名称不能为空',
        'sex.require' => '性别不能为空',
        'phone.require' => '手机号码不能为空',
        'job_number.require' => '工号不能为空',
        'cid.require' => '所属学院不能为空',
        'did.require' => '所属部门不能为空',

    ];

    protected $scene = [
        'add' => ['name', 'sex', 'phone', 'job_number', 'cid', 'did',],
        'edit' => ['name', 'sex', 'phone', 'job_number', 'cid', 'did',],

    ];


}
