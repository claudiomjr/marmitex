<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Entities\Order;
use CodeDelivery\Http\Requests\AdminClientRequest;
use CodeDelivery\Repositories\ClientRepository;
use CodeDelivery\Repositories\OrderRepository;
use CodeDelivery\Services\ClientService;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;

class OrderController extends Controller
{
    /**
     * @var OrderRepository
     */
    private $orderRepository;

    public function __construct(OrderRepository $orderRepository)
    {

        $this->orderRepository = $orderRepository;
    }

    public function index()
    {
        $orders = $this->orderRepository->paginate(5);
        return view('admin.orders.index',compact('orders'));
    }

    public function edit($id)
    {
        $order = $this->orderRepository->find($id);
        $list_status = [0=>'Aguardando',1=>'A caminho', 2 => 'Entregue',3=>'Cancelado'];
        return view('admin.orders.edit',compact('order','list_status'));
    }

}
