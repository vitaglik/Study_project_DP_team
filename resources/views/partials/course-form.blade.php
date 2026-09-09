@foreach($application_sections as $section)

    <article id="apply" class="apply-panel">

        <div class="apply-content">

            <span class="section-kicker">
                {{ $section->kicker }}
            </span>

            <h2>
                {{ $section->title }}
            </h2>

            <p class="apply-subtitle">
                {{ $section->subtitle }}
            </p>

            <form action="#" method="post">

                @csrf

                <input
                    type="hidden"
                    name="course"
                    value="WEB з нуля"
                >

                <div class="form-grid">

                    <label>
                        Ім'я

                        <input
                            type="text"
                            name="name"
                            placeholder="Введіть ваше ім'я"
                        >
                    </label>

                    <label>
                        Telegram / Телефон

                        <input
                            type="text"
                            name="contact"
                            placeholder="@username або +38..."
                        >
                    </label>

                </div>

                <label>
                    Курс

                    <input
                        class="course-input"
                        type="text"
                        value="WEB з нуля — онлайн навчання"
                        readonly
                    >
                </label>

                <label>
                    Коментар

                    <span>(необов'язково)</span>

                    <textarea
                        name="message"
                        placeholder="Напиши, якщо є питання або побажання"
                    ></textarea>
                </label>

                <button class="form-button" type="submit">
                    {{ $section->button_text }}
                </button>

            </form>

        </div>


        <aside class="apply-side">

            <div class="apply-side-text">

                @foreach($section->items as $item)

                    @if($item->sort_order == 1)

                        <span>
                            {{ $item->title }}
                        </span>

                    @elseif($item->sort_order == 2)

                        <strong>
                            {{ $item->title }}

                            @elseif($item->sort_order == 3)

                                <br>
                                {{ $item->title }}
                        </strong>

                        @if($item->subtitle)
                            <p>
                                {{ $item->subtitle }}
                            </p>
                        @endif

                    @endif

                @endforeach

            </div>


            @foreach($section->items as $item)

                @if($item->sort_order == 4)

                    <div class="apply-image-slot">
                        <span>{{ $item->icon }}</span>
                    </div>

                @endif

            @endforeach

        </aside>

    </article>

@endforeach
