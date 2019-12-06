<?php
/**
 * 教学课件信息模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Courseware extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'courseware';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name'];
}
