@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>
  
        <a href="/dashboard/posts" class="btn btn-success btn-sm"><span data-feather="arrow-left"></span> Back to all my posts</a>
        <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning btn-sm"><span data-feather="edit"></span> Edit</a>
        <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
            @method('delete')
            @csrf
            <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><span data-feather="trash-2"></span>Delete</button>
        </form>

    @if ($post->image)
        <div style="max-height: 300px; overflow: hidden;">
        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
        </div>
    @else

        <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
    
    @endif


    <article class="my-3">
        {!! $post->body !!}
    </article>

        </div>
    </div>
</div>   
@endsection