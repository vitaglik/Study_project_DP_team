<!-- ФОРМА -->
<article id="apply" class="apply-panel">

    <div class="apply-content">

        {!! $course_form->kicker !!}

        {!! $course_form->title !!}

        {!! $course_form->sub_title !!}

        <form action="#" method="post">

            {!! $course_form->form_space !!}

            {!! $course_form->action !!}

        </form>

    </div>


    {!! $course_form->course_description !!}


</article>
