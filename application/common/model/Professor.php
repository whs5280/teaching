<?php
/**
 * 教师资源模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Professor extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'professor';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['title'];
}
