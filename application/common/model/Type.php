<?php
/**
 * 类型表模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Type extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'type';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name'];

    //所有列表
    public function getAll()
    {
        return $this->select();
    }
}
