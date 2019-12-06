<?php
/**
 * 教学试题信息验证器
 */

namespace app\common\validate;

class QuestionValidate extends Validate
{
    protected $rule = [
        'name|试题名称' => 'require',
        'type|试题类型' => 'require',

    ];

    protected $message = [
        'name.require' => '试题名称不能为空',
        'type.require' => '试题类型不能为空',

    ];

    protected $scene = [
        'add' => ['name', 'type', ],
        'edit' => ['name', 'type', ],

    ];


}
