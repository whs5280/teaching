<?php
/**
 * 教学资料信息模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Material extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'material';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name'];
}
