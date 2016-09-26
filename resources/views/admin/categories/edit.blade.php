@extends('app')

@section('content')
    <div class="container">
        @if($errors->any())
            @foreach($errors->all()  as $error)
            <div class="alert">{{$error}}</div>
            @endforeach
        @endif
        <div class="alert"></div>
        <h3>Edit category</h3>
        {!! Form::open(['route'=>['admin.categories.update',$category->id]]) !!}
        <div class="form-group">
            {!! Form::label("Name","Nome:") !!}
            {!! Form::text("name",$category->name, ['class'=>"form-control"]) !!}
        </div>
        <div class="form-group">
            {!! Form::submit("Editar categoria",["class"=>"btn btn-primary"]) !!}
        </div>
        {!! Form::close() !!}
      </div>

@endsection