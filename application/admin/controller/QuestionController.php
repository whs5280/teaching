<?php
/**
 * 教学试题信息控制器
 */

namespace app\admin\controller;

use app\common\model\Attachment;
use app\common\model\Type;
use think\Db;
use think\facade\Session;
use think\Request;
use app\common\model\Question;

use app\common\validate\QuestionValidate;

class QuestionController extends Controller
{

    //列表
    public function index(Request $request, Question $model)
    {
        $param = $request->param();
        $model  = $model->scope('where', $param);
        
        $data = $model->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
        //关键词，排序等赋值
        $this->assign($request->get());

        foreach ($data as &$item) {
            $item['type_name'] = Db::name('type')->where('id', $item['type'])->value('name');
            $item['teacher_name'] = Db::name('admin_user')->where('id', $item['teacher_id'])->value('nickname');
        }

        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),
            
        ]);
        return $this->fetch();
    }

    //添加
    public function add(Request $request, Question $model, QuestionValidate $validate)
    {
        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            //处理上传
            $attachment = new Attachment();
            $file_       = $attachment->upload('path','question/');

            if ($file_) {
                $param['path'] = $file_->url;
            } else {
                return error($attachment->getError());
            }

            //上传教师的ID
            $param['teacher_id'] = Session::get('user')['id'];
            
            $result = $model::create($param);

            $url = URL_BACK;
            if(isset($param['_create']) && $param['_create']==1){
               $url = URL_RELOAD;
            }

            return $result ? success('添加成功',$url) : error();
        }

        $typeModel = new Type();
        $type_info = $typeModel->getAll();

        $this->assign([
            'type_info'  => $type_info,

        ]);

        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, Question $model, QuestionValidate $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            //处理上传
            $attachment = new Attachment();
            $file_       = $attachment->upload('path','question/');

            if ($file_) {
                $param['path'] = $file_->url;
            } else {
                return error($attachment->getError());
            }

            $result = $data->save($param);
            return $result ? success() : error();
        }

        $typeModel = new Type();
        $type_info = $typeModel->getAll();

        $this->assign([
            'data' => $data,
            'type_info'  => $type_info,
            
        ]);
        return $this->fetch('add');

    }

    //删除
    public function del($id, Question $model)
    {
        if (count($model->noDeletionId) > 0) {
            if (is_array($id)) {
                if (array_intersect($model->noDeletionId, $id)) {
                    return error('ID为' . implode(',', $model->noDeletionId) . '的数据无法删除');
                }
            } else if (in_array($id, $model->noDeletionId)) {
                return error('ID为' . $id . '的数据无法删除');
            }
        }

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    
}
