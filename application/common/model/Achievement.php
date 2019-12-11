<?php
/**
 * 教研成果资源模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Achievement extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'achievement';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['title'];
}
