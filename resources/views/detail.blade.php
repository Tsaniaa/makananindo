@extends('main')

@section('content')
    <div class="container">
        <h6 class="display-4"><b>{{ $kuliner->nama }}</b></h6>
        <img src="{{ $kuliner->gambar }}" class="img-thumbnail" max-width="300px">
        <p class="lead">{{ $kuliner->deskripsi }}</p>
    </div>   
@endsection