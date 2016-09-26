@extends('app')

@section('content')
    <div class="container">
        @include('errors.error_default')
        <h3>Edit Product</h3>
        {!! Form::model($product,['route'=>['admin.products.update',$product->id]]) !!}

       @include('admin.products._form')

        <div class="form-group">
            {!! Form::submit("Edit product",["class"=>"btn btn-primary"]) !!}
        </div>
        {!! Form::close() !!}
      </div>

@endsection