<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Entities\Category;
use CodeDelivery\Http\Requests\AdminCategoryRequest;
use CodeDelivery\Http\Requests\AdminProductRequest;
use CodeDelivery\Repositories\CategoryRepository;
use CodeDelivery\Repositories\ProductRepository;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;

class ProductController extends Controller
{

    /**
     * @var CategoryRepository
     */
    private $repository,$categoryRepository;

    public function __construct(ProductRepository $repository,CategoryRepository $categoryRepository)
    {

        $this->repository = $repository;
        $this->categoryRepository = $categoryRepository;
    }

    public  function index()
    {

        $products = $this->repository->paginate(5);
        return view('admin.products.index',compact('products'));
    }

    protected function create()
    {
        $categories = $this->lists($this->categoryRepository->orderBy('name')->all());

        return view('admin.products.create',compact('categories'));
    }

    protected function store(AdminProductRequest $request)
    {
        $data = $request->all();
        $this->repository->create($data);

        return redirect()->route('admin.products.index');
    }


    protected function edit($id)
    {
        $product = $this->repository->find($id);
        $categories = $this->lists($this->categoryRepository->orderBy('name')->all());
        return view('admin.products.edit',compact('product','categories'));
    }

    public function update(AdminProductRequest $request,$id){
        $data = $request->all();
        $this->repository->update($data,$id);
        return redirect()->route('admin.products.index');
    }

    public function delete($id){
        $this->repository->delete($id);
        return redirect()->route('admin.products.index');
    }

    public function lists($array){
        $a = array();
        foreach ($array as $t){
            $a[$t['id']]=$t['name'];
        }
        return $a;
    }
}
