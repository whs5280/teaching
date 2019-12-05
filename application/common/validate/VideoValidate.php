<?php
/**
 * 视频信息验证器
 */

namespace app\common\validate;

class VideoValidate extends Validate
{
    protected $rule = [
        'name|视频名称' => 'require',
        'type|资源类型' => 'require',

    ];

    protected $message = [
        'name.require' => '视频名称不能为空',
        'type.require' => '资源类型不能为空',

    ];

    protected $scene = [
        'add' => ['name', 'type', ],
        'edit' => ['name', 'type', ],

    ];


}
