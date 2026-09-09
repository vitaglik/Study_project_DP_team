<article class="section-panel format-panel">
    @foreach($learning_program as $item)
        <h2>{!! $item->title !!}</h2>

        <div class="format-list">
            @foreach($item->items as $row)
                <div class="format-item">
                    <div class="format-image-slot group-image" style="background-image: url('../img/{!! $row->item_image !!}');"></div>
                    <div>
                        <b>{!! $row->item_title !!}</b>
                        <span>{!! $row->item_subtitle !!}</span>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="map-image-slot" style="background-image: url('{!! $item->image !!}');">
        </div>
    @endforeach

</article>
