<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Entities\Category;
use CodeDelivery\Http\Requests\AdminCategoryRequest;
use CodeDelivery\Repositories\CategoryRepository;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;

class CategoryController extends Controller
{

    /**
     * @var CategoryRepository
     */
    private $repository;

    public function __construct(CategoryRepository $repository)
    {

        $this->repository = $repository;
    }

    public  function index()
    {

        $categories = $this->repository->paginate(10);
        return view('admin.categories.index',compact('categories'));
    }
    
    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return Category
     */
    protected function create()
    {
        return view('admin.categories.create');
    }

    protected function store(AdminCategoryRequest $request)
    {
        $data = $request->all();
        $this->repository->create($data);

        return redirect()->route('admin.categories.index');
    }


    protected function edit($id)
    {
        $category = $this->repository->find($id);
        return view('admin.categories.edit',compact('category'));
    }

    public function update(AdminCategoryRequest $request,$id){
        $data = $request->all();
        $this->repository->update($data,$id);
        return redirect()->route('admin.categories.index');
    }
}
