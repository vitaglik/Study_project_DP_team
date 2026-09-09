<!-- ФОРМАТ НАВЧАННЯ -->
<article class="training-panel" id="training-panel">
@foreach($course_sections as $section)
        <div class="training-heading">
            <div>
                <span class="section-kicker">{!! $section->course_format !!}</span>
                <h2>{!! $section->title !!}</h2>
            </div>

            <div class="training-hours">
                <strong>{!! $section->course_duration !!}</strong><span>годин</span>
            </div>
        </div>

        <p class="training-intro">
            {!! $section->subtitle !!}
        </p>


        @foreach($section->about as $about)

            <div class="training-block">

                <h3>{{ $about->title }}</h3>

                @if($about->type === 'skills')

                    <div class="learning-list">

                        @foreach($about->items as $item)

                            <div class="learning-item">
                                <span class="learning-check">✓</span>

                                <div>
                                    <strong>{{ $item->item_title }}</strong>
                                    <p>{{ $item->item_subtitle }}</p>
                                </div>
                            </div>

                        @endforeach

                    </div>

                @elseif($about->type === 'process')

                    <div class="format-grid">

                        @foreach($about->items as $item)

                            <div class="format-card">

                        <span class="format-number">
                            {{ str_pad($loop->iteration, 2, '0', STR_PAD_LEFT) }}
                        </span>

                                <div>
                                    <strong>{{ $item->item_title }}</strong>
                                    <p>{{ $item->item_subtitle }}</p>
                                </div>

                            </div>

                        @endforeach

                    </div>

                @endif

            </div>

        @endforeach


        <div class="training-bottom">

            <div class="training-duration">
                <span>Тривалість курсу</span>
                <strong>{!! $section->course_duration !!} годин</strong>
            </div>

            <a href="#apply" class="training-button">
                {!! $section->course_action !!}
            </a>

        </div>

    @endforeach

</article>


