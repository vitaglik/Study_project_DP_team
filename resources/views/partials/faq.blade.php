<div id="faq" class="faq-area">

    @foreach($faq_sections as $section)

        <h2>{{ $section->title }}</h2>

        <div class="faq-grid">

            @foreach($section->items as $item)

                <article>

                    <span class="faq-number">
                        {{ str_pad($loop->iteration, 2, '0', STR_PAD_LEFT) }}
                    </span>

                    <div>
                        <h3>{{ $item->question }}</h3>

                        <p>
                            {{ $item->answer }}
                        </p>
                    </div>

                </article>

            @endforeach

        </div>

    @endforeach

</div>
