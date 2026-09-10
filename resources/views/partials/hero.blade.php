<section class="hero">
    <div class="page hero-layout">
        <div class="hero-left">
            <div class="hero-pill">◷ Онлайн-навчання з нуля 🔥</div>

           {!! $hero->main_text !!}

            {!! $hero->technology_list !!}

            {!! $hero->hero_description !!}

            <div class="hero-facts">

                {!! $hero->hero_facts !!}

            </div>

            {!! $hero->hero_actions !!}

        </div>

        <div class="hero-right">

            <div class="hero-image-slot"
                 style=" background-image: url('../{!! $hero->hero_image !!}')"
                 aria-label="main_img">

            </div>


            <div class="hero-greeting">

                {!! $hero->hero_message !!}

            </div>
        </div>
    </div>
</section>
