<section class="hero">
    <div class="page hero-layout">
        <div class="hero-left">
            <div class="hero-pill">◷ Онлайн-навчання з нуля 🔥</div>
{{--main_text start--}}
            {!! $hero->main_text !!}
            {{--end--}}
{{--            technology_list start--}}
            {!! $hero->technology_list !!}
            {{--end--}}
{{--            hero_description start--}}
            {!! $hero->hero_description !!}
                {{--end--}}
            <div class="hero-facts">
{{--                hero_facts start + добавь альты--}}
                {!! $hero->hero_facts !!}
                {{--end--}}
            </div>
{{--            hero_actions start--}}
            {!! $hero->hero_actions !!}
{{--            end--}}
        </div>

        <div class="hero-right">
{{--            hero image start + добавь альт--}}
            {!! $hero->hero_image !!}

            {{--end--}}
            <div class="hero-greeting">
{{--                hero message start--}}
                {!! $hero->hero_message !!}

                {{--                end--}}
            </div>
        </div>
    </div>
</section>
