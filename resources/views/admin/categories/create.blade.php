@extends('app')

@section('content')
    <div class="container">
        @if($errors->any())
            @foreach($errors->all()  as $error)
            <div class="alert">{{$error}}</div>
            @endforeach
        @endif
        <div class="alert"></div>
        <h3>New category</h3>
        {!! Form::open(['route'=>'admin.categories.store']) !!}
        <div class="form-group">
            {!! Form::label("Name","Nome:") !!}
            {!! Form::text("name",null, ['class'=>"form-control"]) !!}
        </div>
        <div class="form-group">
            {!! Form::submit("Criar categoria",["class"=>"btn btn-primary"]) !!}
        </div>
        {!! Form::close() !!}
      </div>

@endsection