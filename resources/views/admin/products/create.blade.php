@extends('app')

@section('content')
    <div class="container">
        <div class="alert"></div>
        <h3>New Product</h3>
        {!! Form::open(['route'=>'admin.products.store']) !!}
        @include('admin.products._form')

            <div class="form-group">
            {!! Form::submit("Criar produto",["class"=>"btn btn-primary"]) !!}
        </div>
        {!! Form::close() !!}
      </div>

@endsection