<article id="teacher" class="section-panel teacher-panel">

    {!! $teacher->title !!}

    <div class="teacher-body">
        <div class="teacher-photo-slot" style="background-image: url('../{!! $teacher->image !!}');">

        </div>

        {!! $teacher->teacher_list !!}
    </div>
</article>
