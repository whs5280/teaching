<?php
/**
 * 教学案例资源模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Honor extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'honor';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['title'];
}
