@extends('layouts.frontend_app')
@section('frontend_content')

	<!-- Category Offers Section -->
	<section class="offers position-relative section-gap">
		<div class="container">
			<div class="row justify-content-center">
                @foreach ($shops as $shop)
				<div class="col-lg-4 col-md-6 col-sm-9 wow bounceInUp" data-wow-delay="0.4s">
					<a href="{{ route('offerdetail',$shop->id) }}" class="offers__block d-flex align-items-end justify-content-center position-relative">
						<div class="offers__block__image position-relative overflow-hidden w-100">
							<img src="{{ asset('uploads/shop_photo') }}/{{ $shop->thumbnail }}" alt="delivery-items" class="position-absolute w-100 h-100">
						</div>
						<div class="offers__block__content position-absolute text-center">
                            @if ($shop->time_sidule!=null)
							<span class="offers__block__open-hours d-inline-block">{{ $shop->time_sidule }}</span>
							<h3 class="offers__block__title text-center my-2">{{ $shop->soldout_or_not }}</h3>
                            <p class="offers__block__shop mb-0">{{ $shop->name }}</p>
                            @else
                            <div class="offers__block__content position-absolute text-center">
                                <span class="offers__block__open-hours d-inline-block">{{ $shop->dinner_start }}</span>
                                <h3 class="offers__block__title text-center my-2">Food Place</h3>
                            </div>

							@endif

						</div>
					</a>
				</div>
                @endforeach
			</div>
		</div>
	</section>
	@endsection
