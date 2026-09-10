<header class="site-header">
    <div class="page header-grid">

        <div class="brand logo "
             {{--         logo start  добавить в деффолт альт с название картинки--}}
             style="background-image: url('../{!! $header->logo !!}')"
             {{--         end --}}
             href="#top">
        </div>

        <nav class="main-nav">
            {{--             menu bar start --}}
            {!! $header->menu_bar !!}
            {{--             end --}}
        </nav>

        <div class="header-contacts">
            {{--            /* contacts start */--}}
            {!! $header->contacts !!}
            {{--            /* end */--}}
        </div>
        {{--        /* header action start */--}}
        {!! $header->header_action !!}
        {{--        /* end */--}}
    </div>
</header>
