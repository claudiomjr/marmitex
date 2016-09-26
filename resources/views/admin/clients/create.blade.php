@extends('app')

@section('content')
    <div class="container">
        @if($errors->any())
            @foreach($errors->all()  as $error)
            <div class="alert">{{$error}}</div>
            @endforeach
        @endif
        <div class="alert"></div>
        <h3>New Client</h3>
        {!! Form::open(['route'=>'admin.clients.store']) !!}

        @include('admin.clients._form')

        <div class="form-group">
            {!! Form::submit("Criar cliente",["class"=>"btn btn-primary"]) !!}
        </div>
        {!! Form::close() !!}
      </div>

@endsection