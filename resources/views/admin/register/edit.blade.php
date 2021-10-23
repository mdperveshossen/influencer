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
                <div class="col-lg-10 m-auto">
                    @if (session('add_partner'))
                    <div class="alert alert-success">{{ session('add_partner') }}</div>
                    @endif
                    
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-header">Add Partner</div>
                        <div class="card-body">
                            <form action="{{ route('info.update',1) }}" method="POST" >
                                @method('PATCH')
                                @csrf 
                                <div class="form-group">
                                    <label>First Title</label>
                                    <input type="text" class="form-control" name="first_title" value="{{ $registerinfo->first_title }}" required>
                                </div>
                                <div class="form-group">
                                    <label>First Description</label>
                                    <textarea id="editor1" rows="10" type="text" class="form-control" name="first_description" required>{{ $registerinfo->first_description }}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Secound Title</label>
                                    <input type="text" class="form-control" name="secound_title" value="{{ $registerinfo->secound_title }}" required>
                                </div>
                                <div class="form-group">
                                    <label>Secound Description</label>
                                    <textarea id="editor2" type="text" class="form-control" name="secound_description" required>{{ $registerinfo->secound_description }}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Third Title</label>
                                    <input type="text" class="form-control" name="third_title" value="{{ $registerinfo->third_title }}" required>
                                </div>
                                <div class="form-group">
                                    <label>Third Description</label>
                                    <textarea id="editor3" type="text" class="form-control" name="third_description" required>{{ $registerinfo->third_description }}</textarea>
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
@section('footer_scripts')
<script type="text/javascript">
  $(document).ready(function(){

    ClassicEditor
                                .create( document.querySelector( '#editor1' ) )
                                .then( editor => {
                                        console.log( editor );
                                } )
                                .catch( error => {
                                        console.error( error );
                                } );
  })

</script>
<script type="text/javascript">
  $(document).ready(function(){
    ClassicEditor
                                .create( document.querySelector( '#editor2' ) )
                                .then( editor => {
                                        console.log( editor );
                                } )
                                .catch( error => {
                                        console.error( error );
                                } );


  })
</script>
<script type="text/javascript">
  $(document).ready(function(){
    ClassicEditor
                                .create( document.querySelector( '#editor3' ) )
                                .then( editor => {
                                        console.log( editor );
                                } )
                                .catch( error => {
                                        console.error( error );
                                } );


  })
</script>

@endsection