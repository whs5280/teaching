<?php
/**
 * 视频信息模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Video extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'video';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name'];
}
