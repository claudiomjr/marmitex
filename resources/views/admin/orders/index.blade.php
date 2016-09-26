@extends('app')
@section('content')
    <div class="container">
        @include('errors.error_default')
       <h3>Orders</h3>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Cliente</th>
            <th>Total</th>
            <th>Data</th>
            <th>Status</th>
            <th>Itens</th>
            <th>Ação</th>
        </tr></thead>
        <tbody>

        @foreach($orders as $order)
        <tr>
            <td>
                {{$order->client->user->name}}
            </td>
            <td>
                {{$order->id}}
            </td>
            <td>
                {{$order->total}}
            </td>
            <td>
                {{$order->created_at->format('d/m/Y')}}
            </td>
            <td>
                {{$order->status}}
            </td>
            <td>
                <ul>
                @foreach($order->item as $item)
                 <li>{{$item->product->name}}</li>
                @endforeach
                </ul>
            </td>
            <td>
                <a href="{{route('admin.orders.edit',['id'=> $order->id])}}" class="btn btn-primary">@</a>
                <a href="#" class="btn btn-default">X</a>
            </td>
        </tr>

        @endforeach
        </tbody>
    </table>
        {!! $orders->render() !!}
    </div>

@endsection