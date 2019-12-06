<?php
/**
 * 学院信息表模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class College extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'college';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name'];

    //所有列表
    public function getAll()
    {
        return $this->select();
    }
}
