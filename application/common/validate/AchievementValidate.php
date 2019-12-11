<?php
/**
 * 教研成果资源验证器
 */

namespace app\common\validate;

class AchievementValidate extends Validate
{
    protected $rule = [
        'title|教研成果标题' => 'require',
        'content|教研成果内容' => 'require',
        'path|教研成果图片' => 'require',
        'sort|排序' => 'require',

    ];

    protected $message = [
        'title.require' => '教研成果标题不能为空',
        'content.require' => '教研成果内容不能为空',
        'path.require' => '教研成果图片不能为空',
        'sort.require' => '排序不能为空',

    ];

    protected $scene = [
        'add' => ['title', 'content', 'path', 'sort',],
        'edit' => ['title', 'content', 'path', 'sort',],

    ];


}
