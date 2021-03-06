<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Entities\Client;
use CodeDelivery\Http\Requests\AdminClientRequest;
use CodeDelivery\Repositories\ClientRepository;
use CodeDelivery\Services\ClientService;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;

class ClientController extends Controller
{

    /**
     * @var ClientRepository
     */
    private $repository;
    /**
     * @var ClientService
     */
    private $clientService;

    public function __construct(ClientRepository $repository,ClientService $clientService)
    {

        $this->repository = $repository;
        $this->clientService = $clientService;
    }

    public  function index()
    {

        $clients = $this->repository->paginate(10);
        return view('admin.clients.index',compact('clients'));
    }
    
    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return client
     */
    protected function create()
    {
        return view('admin.clients.create');
    }

    protected function store(AdminClientRequest $request)
    {
        $data = $request->all();
        $this->clientService->store($data);

        return redirect()->route('admin.clients.index');
    }


    protected function edit($id)
    {
        $client = $this->repository->find($id);
        return view('admin.clients.edit',compact('client'));
    }

    public function update(AdminClientRequest $request,$id){
        $data = $request->all();
        $this->clientService->update($data,$id);
        return redirect()->route('admin.clients.index');
    }
}
