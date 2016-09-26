@extends('app')

@section('content')
    <div class="container">
        @include('errors.error_default')
        <h3>Edit Order</h3>
        {!! Form::model($order,['route'=>['admin.orders.update',$order->id]]) !!}



        <?php /*
            Itens adicionados somente para leitura.
            A alteração dos itens é somente no status e no entregador.
            */?>
            <h2>Número do Pedido #{{$order->id}}</h2>
            <h3>{{$order->client->user->name}}</h3>
            <h4>{{$order->client->address}} - {{$order->client->city}} - {{$order->client->state}} - {{$order->client->zipcode}}</h4>
            <h5> {{$order->created_at->format('d/m/Y H:m:s')}}</h5>

            <p>Itens</p>
             <ul>
                    @foreach($order->item as $item)
                        <li>{{$item->product->name}}</li>
                    @endforeach
                </ul>
            </td>
            <p>{{$order->status}}</p>


        {!! Form::open(['route'=>['admin.orders.update',$order->id]]) !!}
            <div class="form-group">
                {!! Form::label("Entregador","Entregador:") !!}
                {!! Form::select("status",$list_status, null, ['class'=>"form-control"]) !!}
            </div>
            <div class="form-group">
            {!! Form::submit("Edit product",["class"=>"btn btn-primary"]) !!}
        </div>
        {!! Form::close() !!}
      </div>

@endsection