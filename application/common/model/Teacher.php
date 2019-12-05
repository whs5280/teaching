<?php
/**
 * 教师信息表模型
*/

namespace app\common\model;

use think\model\concern\SoftDelete;

class Teacher extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'teacher';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = ['name','phone','job_number'];
}
