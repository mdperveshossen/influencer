
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Admin Regiser</title>

    <!-- vendor css -->
    <link href="{{ asset('dashboard_asset') }}/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="{{ asset('dashboard_asset') }}/lib/Ionicons/css/ionicons.css" rel="stylesheet">
    <link href="{{ asset('dashboard_asset') }}/lib/select2/css/select2.min.css" rel="stylesheet">


    <!-- Starlight CSS -->
    <link rel="stylesheet" href="{{ asset('dashboard_asset') }}/css/starlight.css">
  </head>

  <body>

    <div class="d-flex align-items-center justify-content-center bg-sl-primary ht-md-100v">

      <div class="login-wrapper wd-300 wd-xs-400 pd-25 pd-xs-40 bg-white">
        <div class="signin-logo tx-center tx-24 tx-bold tx-inverse">INFLUENCER</div>
        <div class="tx-center mg-b-60">Admin Register Only</div>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </div>
                    @endif
        <form action="{{ route('register') }}" method="POST" enctype="multipart/form-data">
            @csrf
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Enter your full name" name="name">
        </div><!-- form-group -->
        <div class="form-group">
          <input type="email" class="form-control" placeholder="Enter your email" name="email">
        </div><!-- form-group -->
        <div class="form-group">
                    <input  type="password" class="form-control" name="password" placeholder="Enter your password" required>
        </div><!-- form-group -->
        <div class="form-group">
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Retype your password">
        </div><!-- form-group -->
        <button type="submit" class="btn btn-info btn-block">Sign Up</button>
        </form>

        <div class="mg-t-40 tx-center">Already have an account? <a href="{{ route('login') }}" class="tx-info">Sign In</a></div>
      </div><!-- login-wrapper -->
    </div><!-- d-flex -->

    <script src="{{ asset('dashboard_asset') }}/lib/jquery/jquery.js"></script>
    <script src="{{ asset('dashboard_asset') }}/lib/popper.js/popper.js"></script>
    <script src="{{ asset('dashboard_asset') }}/lib/bootstrap/bootstrap.js"></script>
    <script src="{{ asset('dashboard_asset') }}/lib/select2/js/select2.min.js"></script>
    <script>
      $(function(){
        'use strict';

        $('.select2').select2({
          minimumResultsForSearch: Infinity
        });
      });
    </script>

  </body>
</html>
