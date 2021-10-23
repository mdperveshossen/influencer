@extends('layouts.dashboard_app')
@section('title')
    Sing Up info | Dashboard
@endsection
@section('info')
    active
@endsection
@section('dashboard_content')
    <!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
    <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
        <a class="breadcrumb-item active">Partner</a>
    </nav>
    
    <div class="sl-pagebody">
        <div class="sl-page-title">
            <h5>Partner</h5>
        </div><!-- sl-page-title -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    @if (session('registerinfo'))
                    <div class="alert alert-success">{{ session('registerinfo') }}</div>
                    @endif
                   
                    <div class="card bd-0">
                        <div class="card-header card-header-default">
                          {{ $registerinfo->first_title }}
                        </div><!-- card-header -->
                        <div class="card-body bd bd-t-0 rounded-bottom">
                            {{ $registerinfo->first_description }}
                        </div><!-- card-body -->
                      </div><!-- card -->
                    <div class="card bd-0">
                        <div class="card-header card-header-default">
                          {{ $registerinfo->first_title }}
                        </div><!-- card-header -->
                        <div class="card-body bd bd-t-0 rounded-bottom">
                            {{ $registerinfo->first_description }}
                        </div><!-- card-body -->
                      </div><!-- card -->
                    <div class="card bd-0">
                        <div class="card-header card-header-default">
                          {{ $registerinfo->first_title }}
                        </div><!-- card-header -->
                        <div class="card-body bd bd-t-0 rounded-bottom">
                            {{ $registerinfo->first_description }}
                        </div><!-- card-body -->
                        <div class="card-heade">
                            <a href="{{ route('info.show',1) }}" style="width: 100%; height:100%" class="btn btn-primary d-block">Edite</a>
                          </div><!-- card-header -->
                      </div><!-- card -->
                </div>
            </div>
        </div>

</div><!-- sl-pagebody -->
</div><!-- sl-mainpanel -->
@endsection