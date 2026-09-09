<section id="program" class="section compact">
    @foreach($technologies as $technology)
    <div class="page section-panel technologies-panel">
        {!! $technology->title !!}

        <div class="technologies-grid">

            @foreach($technology->items as $item)

                <div class="technology">
                    <div class="tech-image-slot" style=" {!! $item->item_icon !!}"></div>
                    <b>{{ $item->item_title }}</b>
                </div>

            @endforeach

        </div>
    </div>
    @endforeach
</section>
