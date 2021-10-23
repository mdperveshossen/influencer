@extends('layouts.dashboard_app')
@section('title')
    Update | Shop | Dashboard
@endsection
@section('shop')
    active
@endsection
@section('dashboard_content')
    <!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
    <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
        <a class="breadcrumb-item" href="{{ route('shops.index') }}">Shop</a>
        <a class="breadcrumb-item active">Update shop</a>
    </nav>
    
    <div class="sl-pagebody">
        <div class="sl-page-title">
            <h5>Update shop</h5>
        </div><!-- sl-page-title -->
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto">
                    @if (session('update_shop'))
                    <div class="alert alert-success">{{ session('update_shop') }}</div>
                    @endif
                    
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-header">update Shop</div>
                        <div class="card-body">
                            <form action="{{ route('shops.update', $info->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PATCH')
                            <div class="form-group">
                                <label for="my-select">Select Category</label>
                                <select id="my_select" class="form-control" name="type">
                                    <option>--Select--</option>    
                                {{-- <option {{ ($active_category->id == $product_info->category_id ? "selected":"") }} value="{{ $active_category->id }}">{{ $active_category->category_name }}</option> --}}
                                    <option {{ ($info->type == 1 ? "selected":"") }} value="1">Delivery</option>
                                    <option {{ ($info->type == 2 ? "selected":"") }} value="2">Experience</option>
                                    <option {{ ($info->type == 3 ? "selected":"") }} value="3">Dinner Out</option>
                                </select>
                            </div>
                            <div class="form-group"  style="display:{{ ($info->type == 3 ? "block":"none") }}" id="dinner_category">
                                <label>Dinner Category</label>
                                <select class="form-control me" name="dinner_start" required>
                                    <option>--Select--</option>
                                    <option value="One Star">One Star</option>
                                    <option value="Two Star">Two Star</option>
                                    <option value="Three Star">Three Star</option>
                                    <option value="Four Star">Four Star</option>
                                    <option value="Five Star">Five Star</option>
                                    <option value="Five Star">Six Star</option>
                                </select>
                            </div>
                                <div class="form-group">
                                    <label>Shop name</label>
                                    <input type="text" class="form-control" name="name"  value="{{ $info->name }}">
                                </div>
                                <div class="form-group" style="display:{{ ($info->type == 3 ? "none":"block") }}" id="others_category1">
                                    <label>Shop Schedule</label>
                                    <input type="text" class="form-control" name="time_sidule" value="{{ $info->time_sidule }}">
                                </div>
                                <div class="form-group">
                                    <label>Shop description</label>
                                    <textarea name="details" id="editor1" rows="4" class="form-control">{{ $info->details }}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Shop rules</label>
                                    <textarea name="rules" rows="4" id="editor2" class="form-control">{{ $info->rules }}</textarea>
                                </div>
                                <div class="form-group" style="display:{{ ($info->type == 3 ? "none":"block") }}" id="others_category2">
                                    <label>Shop availability</label>
                                    <input type="text"  class="form-control" name="soldout_or_not"  value="{{ $info->soldout_or_not }}">
                                </div>
                                <div class="form-group">
                                    <label>Shop thumbnail (640*426)</label>
                                    <input type="file" class="form-control" name="thumbnail">
                                </div>
                                <img style="width: 50px;" src="{{ asset('uploads/shop_photo') }}/{{ $info->thumbnail }}" alt="">
                                <br>
                                <br>
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
<script>
    $('#my_select').change(function(){
        const selectValue  = $(this).val();
            const dinner_category = document.getElementById('dinner_category');
            const others_category1 = document.getElementById('others_category1');
            const others_category2= document.getElementById('others_category2');
        if (selectValue == 3) {
            
              dinner_category.style.display = 'block';
            others_category1.style.display = 'none';
            others_category2.style.display = 'none';
        } else {
         dinner_category.style.display = 'none';
            others_category1.style.display = 'block';
            others_category2.style.display = 'block';
        }
    })
 </script>

@endsection