<section id="learning" class="section compact">

    @foreach($learning_sections as $section)

        <div class="page section-panel">

            {!! $section->title !!}

            <div class="benefits-grid">

                @foreach($section->items as $item)

                    <article class="benefit-card">

                        {!! $item->item_icon !!}

                        {!! $item->item_title !!}

                        {!! $item->item_description !!}

                    </article>

                @endforeach

            </div>

        </div>

    @endforeach

</section>
