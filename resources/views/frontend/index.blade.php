<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Influencer</title>
	<!-- Favicon Link -->
	<link rel="icon" type="image/x-icon" href="{{ asset('frontend_asset') }}/assets/images/favicon.ico">
	<!-- All CSS -->
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/slick-slider/css/slick.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/wow/css/animate.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/css/style.css">
</head>
<body data-spy="scroll" data-target="#header-navbar">
  <!-- Header Section -->
  <header class="header w-100">
    <nav class="navbar navbar-expand-lg">
      <div class="container">
        <a class="navbar-brand position-relative wow bounceInLeft" href="{{ url('/') }}"><img src="{{ asset('uploads/logo') }}/{{ $logo->logo }}" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#header-navbar" aria-controls="header-navbar" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars"></i>
        </button>
      
        <div class="collapse navbar-collapse" id="header-navbar">
          <ul class="navbar-nav text-center ml-auto">
            <li class="nav-item wow bounceInDown" data-wow-delay="0.2s">
              <a class="nav-link text-uppercase position-relative active" href="#banner">Home</a>
            </li>
            <li class="nav-item wow bounceInDown" data-wow-delay="0.4s">
              <a class="nav-link text-uppercase position-relative" href="#partners">Partners</a>
            </li>
            <li class="nav-item wow bounceInDown" data-wow-delay="0.6s">
              <a class="nav-link text-uppercase position-relative" href="#benefits">BENEFITS</a>
            </li>
            @guest
            <li class="nav-item wow bounceInDown" data-wow-delay="0.8s">
              <a class="nav-link text-uppercase position-relative" href="#services">Category</a>
            </li> 
            @endguest
            @guest
            <li class="nav-item wow bounceInDown" data-wow-delay="0.8s">
              <a class="nav-link text-uppercase position-relative" href="{{ route('merchant') }}">Merchant</a>
            </li> 
            @endguest
                @auth
                <li class="nav-item wow bounceInDown" data-wow-delay="0.8s">
                  <a class="nav-link text-uppercase position-relative" href="{{ route('category') }}">Category</a>
                </li> 
                @endauth
            
                @auth
                @if(Auth::user()->rules == 2)
                <li class="nav-item wow bounceInDown" data-wow-delay="1s">
                  <a class="nav-link text-uppercase position-relative" href="{{ url('dashboard/influencer') }}">Dashboard</a>
                </li>
                @else
                <li class="nav-item wow bounceInDown" data-wow-delay="1s">
                  <a class="nav-link text-uppercase position-relative" href="{{ url('/home') }}">Dashboard</a>
                </li>
                @endif
                @endauth
            
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <!-- Banner Section -->
  <section id="banner" class="banner position-relative">
    <div class="banner__slider">
      @foreach ($banners as $banner)
      <div class="banner__slide" style="background-image: url({{ asset('uploads/banner_bg') }}/{{ $banner->bg }});"></div>
      @endforeach
    </div>
    <div class="banner__content d-flex align-items-center position-absolute w-100 h-100">
      <div class="container text-center">
        <div class="col-lg-10 mx-auto wow bounceIn">
          <h1 class="banner__title text-uppercase mb-5">{{ $heading->text_one }} <span class="d-block"><!--between--></span> <span class="banner__title__bold d-block">{{ $heading->text_two }}</span></h1>
          <a href="{{ route('influencer.register') }}" class="primary-btn position-relative text-uppercase d-inline-block wow bounceInUp">
            <span class="position-relative">Become an Influencer</span>
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- Partners Section -->
  <section id="partners" class="partners section-gap">
    <div class="container">
      <div class="row">
        <div class="section-header text-center col-12 mb-5">
          <h1 class="section-header__title">OUR PARTNERS</h1>
        </div>
        <div class="col-12 wow bounceIn" data-wow-delay="0.2s">
          <div class="partners__slider position-relative">
            @foreach ($partners as $partner)
            <div class="partners__slide">
              <img src="{{ asset('uploads') }}/partner_logo/{{ $partner->partner_logo }}" alt="partners" class="w-100">
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Benefits Section -->
  <section id="benefits" class="benefits section-gap">
    <div class="container">
      <div class="row">
        <div class="section-header text-center col-12 mb-5">
          <h1 class="section-header__title text-uppercase">Influencer Benefits</h1>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 wow bounceInLeft">
          <div class="benefits__block text-center">
            <!-- Removed animation class -->
            <div class="benefits__image d-inline-block mb-3">
              <img src="{{ asset('uploads') }}/benifit_icon/{{ $benifits1->icon }}" alt="benefits" class="w-100">
            </div>
            <p class="benefits__text">{{ $benifits1->details }}</p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 wow bounceInUp mt-lg-5">
          <div class="benefits__block text-center">
            <!-- Removed animation class -->
            <div class="benefits__image d-inline-block mb-3">
              <img src="{{ asset('uploads') }}/benifit_icon/{{ $benifits2->icon }}" alt="benefits" class="w-100">
            </div>
            <p class="benefits__text">{{ $benifits2->details }}</p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 wow bounceInRight mx-auto">
          <div class="benefits__block text-center">
            <!-- Removed animation class -->
            <div class="benefits__image d-inline-block mb-3">
              <img src="{{ asset('uploads') }}/benifit_icon/{{ $benifits3->icon }}" alt="benefits" class="w-100">
            </div>
            <p class="benefits__text">{{ $benifits3->details }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>

   <!-- Partners Section -->
   <section id="services" class="services section-gap">
    <div class="container-fluid">
      <div class="row">
        <div class="section-header text-center col-12 mb-5">
          <h1 class="section-header__title text-uppercase">WHAT WE Offer</h1>
        </div>
        <div class="col-12 wow bounceInRight px-0" data-wow-delay="0.2s">
          <div class="services__slider">
            @foreach ($offers as $offer)
            <div class="services__slide position-relative">
              <div class="services__slide__image position-relative overflow-hidden rounded">
                <img src="{{ asset('uploads/offer_bg') }}/{{ $offer->bg }}" alt="delivery-items" class="w-100">
              </div>
              <div class="services__slide__content position-absolute d-flex flex-column align-items-center justify-content-center w-100 h-100">
                <h3 class="services__slide__content__title font-weight-bold">{{ $offer->heading }}</h3>
                <p class="services__slide__content__text">{{ $offer->detail }}</p>
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </section>

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
