<?php
/**
 * 部门信息表模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Department extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'department';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name','description'];

    //所有列表
    public function getAll()
    {
        return $this->select();
    }
}
