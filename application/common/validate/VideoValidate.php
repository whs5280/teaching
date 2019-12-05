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
        'path|视频路径' => 'require',
        'teacher_id|教师ID' => 'require',

    ];

    protected $message = [
        'name.require' => '视频名称不能为空',
        'type.require' => '资源类型不能为空',
        'path.require' => '视频路径不能为空',
        'teacher_id'   => '教师ID不能为空',

    ];

    protected $scene = [
        'add' => ['name', 'type', 'path', 'teacher_id',],
        'edit' => ['name', 'type', 'path', 'teacher_id',],

    ];


}
