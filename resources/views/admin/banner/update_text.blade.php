@extends('layouts.dashboard_app')
@section('title')
    Update | Banner | Text | Dashboard
@endsection
@section('banner')
    active
@endsection
@section('dashboard_content')
    <!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
    <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
        <a class="breadcrumb-item" href="{{ route('banner.index') }}">Banner</a>
        <a class="breadcrumb-item active">Update Banner Text</a>
    </nav>

    <div class="sl-pagebody">
        <div class="sl-page-title">
            <h5>Update Banner Text</h5>
        </div><!-- sl-page-title -->
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto">
                    @if (session('update_banner_text'))
                    <div class="alert alert-success">{{ session('update_banner_text') }}</div>
                    @endif
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-header">Update Banner Text</div>
                        <div class="card-body">
                            <form action="{{ route('bannertextupdatepost', $info->id) }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label>Banner Heading One</label>
                                    <input type="text" class="form-control" name="text_one" value="{{ $info->text_one }}">
                                </div>
                                <div class="form-group">
                                    <label>Banner Heading Two</label>
                                    <input type="text" class="form-control" name="text_two" value="{{ $info->text_two }}">
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div><!-- sl-pagebody -->
</div><!-- sl-mainpanel -->
@endsection
