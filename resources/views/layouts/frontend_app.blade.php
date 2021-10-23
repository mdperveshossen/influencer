<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Influencer Delivery Offers</title>
	<!-- Favicon Link -->
	<link rel="icon" type="image/x-icon" href="{{ asset('frontend_asset') }}/assets/images/favicon.ico">
	<!-- All CSS -->
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/wow/css/animate.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/css/style.css">
</head>
<body>
	<!-- Header Section -->
	<header class="header header--active w-100">
		<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand position-relative wow bounceInLeft" href="./index.html">influencer</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#header-navbar" aria-controls="header-navbar" aria-expanded="false" aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
			</button>
		
			<div class="collapse navbar-collapse" id="header-navbar">
			<ul class="navbar-nav text-center ml-auto">
				<li class="nav-item wow bounceInDown" data-wow-delay="0.2s">
				<a class="nav-link text-uppercase position-relative" href="{{ route('index') }}">Home</a>
				</li>
        @if(Auth::user()->rules == 2)
        <li class="nav-item wow bounceInDown" data-wow-delay="1s">
          <a class="nav-link text-uppercase position-relative" href="{{ url('dashboard/influencer') }}">Dashboard</a>
        </li>
        @else
        <li class="nav-item wow bounceInDown" data-wow-delay="1s">
          <a class="nav-link text-uppercase position-relative" href="{{ url('/home') }}">Dashboard</a>
        </li>
        @endif
				<li class="nav-item wow bounceInDown" data-wow-delay="0.6s">
				<a class="nav-link text-uppercase position-relative" href="{{ route('category') }}">Category</a>
				</li>
			</ul>
			</div>
		</div>
		</nav>
	</header>

  @yield('frontend_content')

  
  <!-- Footer Section -->
  <footer class="footer wow fadeInUp overflow-hidden">
    <div class="footer__top section-gap pb-md-5">
      <div class="section-header text-center col-12 mb-5">
        <h1 class="section-header__title">FOLLOW US</h1>
      </div>
      <div class="col-12">
        <!-- Changed animation delay -->
        <ul class="social list-inline text-center mb-0">
          @foreach ($socials as $social)
          <li class="list-inline-item mb-2 mb-sm-0 wow bounceInUp" data-wow-delay="0.1s">
            <a href="{{ $social->social_link }}" target="_blank" class="social__links d-inline-flex align-items-center justify-content-center rounded-circle"><i class="{{ $social->social_icon }}"></i></a>
          </li>
          @endforeach
        </ul>
      </div>
    </div>
    <div class="footer__bottom col-12 text-center py-3">
      <p class="copyright mb-0">Copyright © Influencer | Designed by <a href="https://www.sohanthink.com" target="_blank" class="copyright__link">Sohanthink</a></p>
    </div>
  </footer>

  <!-- Scroll To Top Button -->
  <div class="scroll-top position-fixed">
    <span class="scroll-top__btn d-inline-flex align-items-center justify-content-center"><i class="fas fa-chevron-up"></i></span>
  </div>

	<!-- All Scripts -->
	<script src="{{ asset('frontend_asset') }}/assets/js/jquery-1.12.4.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/bootstrap-select-country/js/bootstrap-select-country.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/fontawesome/js/all.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/slick-slider/js/slick.js"></script>
    <script src="{{ asset('frontend_asset') }}/assets/plugins/parallax/js/simpleParallax.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/wow/js/wow.min.js" defer></script>
	<script src="{{ asset('frontend_asset') }}/assets/js/script.js"></script>
</body>
</html>
