<article id="reviews" class="section-panel reviews-panel">
    @foreach($reviews as $item)
        <h2>{!! $item->title !!}</h2>
        @foreach($item->items as $row)
            <div class="review-item">
                <div class="review-photo-slot" style="background-image: url('../img/{!! $row->student_image !!}');"></div>
                <div>
                    <div class="review-head" ><b>{!! $row->student_name !!}</b><span>★★★★★</span></div>
                    <p>{!! $row->student_review !!}</p>
                </div>
            </div>
        @endforeach

    @endforeach

    <div class="slider-dots review-dots"><b></b><span></span><span></span></div>
</article>
