<article id="teacher" class="section-panel teacher-panel">
    @foreach( $teacher as $item)
        <h2>{!! $item->title !!}</h2>

        <div class="teacher-body">
            <div class="teacher-photo-slot " style="background-image: url('{!! $item->image !!}');">

            </div>

            <ul class="teacher-list">
                @foreach($item->items as $row)
                    <li>{!! $row->teacher_experience !!}</li>
                @endforeach
            </ul>
        </div>
    @endforeach

</article>
