<!-- ФОРМАТ НАВЧАННЯ -->
<article class="training-panel" id="training-panel">
        {!! $course->kicker !!}
    <div class="training-heading">
        <div>

            {!! $course->title !!}
        </div>

        <div class="training-hours">
{{--            придумать как сделать--}}
            <strong>30</strong><span>годин</span>
        </div>
    </div>
{{--сделать столбик с subtitle--}}
    <p class="training-intro">
        Курс для тих, хто хоче з нуля вивчити основи веб-розробки
        та навчитися створювати сучасні веб-сайти.
    </p>


    {!! $course->course_description !!}


    <div class="training-bottom">

        <div class="training-duration">
            <span>Тривалість курсу</span>
            <strong>30 годин</strong>
        </div>

        {!! $course->action !!}

    </div>

</article>


