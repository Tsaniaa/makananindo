@extends('main')

@section('content')
    <div class="container pt-2">
        <div class="text-center text-dark"><h2><b>Makanan Indonesia</b></h2></div>

        <div class="container pt-2">
            <div class="row">
            @foreach ($kuliner as $item)
                <div class="col-3 ml-3 mr-3">
                    <div class="card text-center" style="width: 18rem;">
                        <img src="{{ $item->gambar }}" class="card-img-top" alt="{{ $item->nama }}">
                        <div class="card-body">
                        <h5 class="card-title">{{ $item->nama }}</h5>
                        <a href="{{ ($item->id_jenis_kuliner == 1 ? 'makanan' : ($item->id_jenis_kuliner == 1 ? 'minuman' : 'jajanan')) }}/{{ $item->id_kuliner }}" class="btn btn-primary">Coba</a>
                        </div>
                    </div>
                </div>
            @endforeach
            </div>
        </div>   
    </div>
@endsection