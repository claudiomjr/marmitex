@extends('app')

@section('content')
    <div class="container">
        @if($errors->any())
            @foreach($errors->all()  as $error)
            <div class="alert">{{$error}}</div>
            @endforeach
        @endif
        <div class="alert"></div>
        <h3>Edit client</h3>
        {!! Form::model($client,['route'=>['admin.clients.update',$client->id]]) !!}

        @include('admin.clients._form')
            <div class="form-group">
            {!! Form::submit("Editar categoria",["class"=>"btn btn-primary"]) !!}
        </div>
        {!! Form::close() !!}
      </div>

@endsection