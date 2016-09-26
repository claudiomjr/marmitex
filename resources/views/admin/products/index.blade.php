@extends('app')
@section('content')
    <div class="container">
        @include('errors.error_default')
       <h3>Categories</h3>
        <a href="{{ route('admin.products.create') }}" class="btn btn-default">New Product</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Preço</th>
            <th>Criado em</th>
            <th>Ação</th>
        </tr></thead>
        <tbody>

        @foreach($products as $product)
        <tr>
            <td>
                {{$product->id}}
            </td>
            <td>
                {{$product->name}}
            </td>
            <td>
                {{$product->category->id}}{{$product->category->name}}
            </td>
            <td>
                {{$product->price}}
            </td>
            <td>
                {{$product->created_at->format('d/m/Y')}}
            </td>
            <td>
                <a href="{{route('admin.products.edit',['id'=>$product->id])}}" class="btn btn-primary">@</a>
                <a href="{{route('admin.products.delete',['id'=>$product->id])}}" class="btn btn-default">X</a>
            </td>
        </tr>

        @endforeach
        </tbody>
    </table>
        {!! $products->render() !!}
    </div>

@endsection