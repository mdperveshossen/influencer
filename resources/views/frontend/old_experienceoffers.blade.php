
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>
        @if ($type == 1)
            Influencer Delivery Offer
        @elseif ($type  == 2)
            Influencer Experience Offers
        @elseif ($type  == 3)
            Influencer Dinner Offers
        @endif
    </title>
	<!-- Favicon Link -->
	<link rel="icon" type="image/x-icon" href="{{ asset('frontend_asset') }}/assets/images/favicon.ico">
	<!-- All CSS -->
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/plugins/wow/css/animate.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_asset') }}/assets/css/style.css">
</head>
<body>
	<!-- Category Offers Header Section -->
	<header class="offers-header position-fixed w-100 py-3">
		<div class="container">
		<div class="col-12">
			<a href="{{ route('category') }}" class="back-btn d-inline-block rounded-sm wow bounceInLeft" data-wow-delay="0.1s"><i class="fas fa-chevron-left"></i></a>
			<span class="offers-header__title d-inline-block ml-3">Influencer Offers</span>
		</div>
		</div>
	</header>
	<!-- Category Offers Section -->
	<section class="offers position-relative section-gap">
		<div class="container">
			<div class="row">
                @foreach ($shops as $shop)


				<div class="col-lg-4 col-md-6 col-sm-9 mx-auto mb-5 wow bounceInUp" data-wow-delay="0.1s">
					<a href="{{ route('offerdetail',$shop->id) }}" class="offers__block d-flex align-items-center justify-content-center position-relative">
						<div class="offers__block__image position-absolute w-100 h-100 overflow-hidden">
							<img src="{{ asset('uploads/shop_photo') }}/{{ $shop->thumbnail }}" alt="experience-items" class="w-100 h-100">
						</div>
						<h3 class="offers__block__title text-center mb-0">{{ $shop->soldout_or_not }}</h3>
						<p class="offers__block__shop mb-0 position-absolute">{{ $shop->name }} @if ($shop->time_sidule!=null) <span class="offers__block__open-hours">({{ $shop->time_sidule }})</span>@endif </p>
					</a>
				</div>
                @endforeach

			</div>
		</div>
	</section>
	<!-- Scroll To Top Button -->
	<div class="scroll-top position-fixed wow bounce" data-wow-iteration="infinite" data-wow-duration="2s">
		<span class="scroll-top__btn d-inline-flex align-items-center justify-content-center"><i class="fas fa-chevron-up"></i></span>
	</div>

	<!-- All Scripts -->
	<script src="{{ asset('frontend_asset') }}/assets/js/jquery-1.12.4.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/fontawesome/js/all.min.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/slick-slider/js/slick.js"></script>
	<script src="{{ asset('frontend_asset') }}/assets/plugins/wow/js/wow.min.js" defer></script>
	<script src="{{ asset('frontend_asset') }}/assets/js/script.js"></script>
</body>
</html>
