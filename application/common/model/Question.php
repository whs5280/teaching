<?php
/**
 * 教学试题信息模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Question extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'question';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name'];
}
