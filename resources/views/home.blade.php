@extends('main')

@section('content')
    <div class="jumbotron jumbotron-fluid">
        <div class="container text-center">
            <h1 class="display-4"><b>Daftar Kuliner Indonesia</b></h1>
            <p class="lead">Macam-Macam Masakan Indonesia mulai dari Makanan, Minuman, hingga Jajanan Khas tiap Daerah Nusantara</p>
        </div>
    </div>
    
    <div class="container">
        <div class="row">
        @foreach ($jenis_kuliner as $item)
            <div class="col-3 ml-3 mr-3">
                <div class="card text-center" style="width: 18rem;">
                    <img src="{{ $item->ikon }}" class="card-img-top" alt="{{ $item->jenis_kuliner }}" max-width="300px">
                    <div class="card-body">
                    <h5 class="card-title">{{ $item->jenis_kuliner }}</h5>
                    <a href="{{ $item->id_jenis_kuliner }}" class="btn btn-primary">jelajah</a>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
    </div>   
@endsection