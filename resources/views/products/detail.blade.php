@include('layouts.header')
@include('components.hader')

<!--====== BREADCRUMB PART START ======-->
<section class="breadcrumb-area"
         style="background-image: url({{ asset($product['images'][0] ?? 'assets/img/bg/default.jpg') }}); margin-top: 165px">
    <div class="container">
        <div class="breadcrumb-text">
            <h2 class="page-title">{{ $product['title'] }}</h2>
            <ul class="breadcrumb-nav">
                <li><a href="{{ route('home') }}">Начало</a></li>
                <li class="active">{{ $product['title'] }}</li>
            </ul>
        </div>
    </div>
</section>


@include('layouts.footer')
