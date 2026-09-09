<section id="works" class="section compact">
    <div class="page section-panel works-panel">
        @foreach($works_sections as $section)
            <div class="works-heading">

                <h2>{!! $section->title !!}</h2>
            </div>

            <div class="works-slider" data-works-slider>
                <button class="works-slider-button works-slider-prev" type="button" aria-label="Попередні роботи">
                    <span aria-hidden="true">←</span>
                </button>

                <div class="works-viewport" data-works-viewport tabindex="0" aria-label="Приклади робіт">
                    <div class="works-grid">

                        <!-- 1. Интернет-магазин
                        как все должно выстравиваться через БД:
                        -*
                        -->
                        @foreach($section->items as $item)
                            <article class="work-card {!! $item->name_work !!}">



                                <div class="work-carousel">
                                    @foreach($item->images as $ordinal_number)
                                        <input type="radio" name="{!! $item->name_work !!}" id="{!! $item->name_work !!}-{!! $ordinal_number->ordinal_number !!}" @checked($loop->first)>

                                    @endforeach


                                    <div class="work-slides">
                                        @foreach($item->images as $image)
                                            <div class="work-slide"
                                                 style="background-image: url('{!! $image->item_image !!}')">
                                            </div>
                                        @endforeach


                                    </div>
                                    <div class="work-pages">
                                        @foreach($item->images as $ordinal_number)
                                            <label for="{!! $item->name_work !!}-{!! $ordinal_number->ordinal_number !!}">{!! $ordinal_number->ordinal_number !!}</label>
                                        @endforeach
                                    </div>

                                </div>

                                <h3>{!! $item->item_title !!}</h3>
                                <small>{!! $item->item_subtitle !!}</small>
                                <p>{!! $item->item_description !!}</p>

                            </article>
                        @endforeach
                    </div>
                </div>

                <button class="works-slider-button works-slider-next" type="button" aria-label="Наступні роботи">
                    <span aria-hidden="true">→</span>
                </button>
            </div>
        @endforeach
    </div>
</section>

<script src="{{ asset('js/works-carousel.js') }}" defer></script>

