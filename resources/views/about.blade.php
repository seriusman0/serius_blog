@extends('layouts.main')
@section('container')
    <h1>Halaman About</h1>
    <h3>{{ $name }}</h3>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }} " alt="{{ $name }}" width='200' height='200' class="imt-thumbnail rounded-circle">
@endsection    