@foreach($footer_sections as $footer)

    <footer id="contacts" class="footer">

        <div class="page footer-grid">

            <div class="footer-info">

                <a
                    class="brand footer-brand"
                    href="#top"
                    aria-label="D&P Team — на головну"
                ></a>

                <p>
                    {{ $footer->copyright_text }}
                </p>

            </div>


            <div class="footer-links">

                <b>
                    {{ $footer->links_title }}
                </b>

                <div>

                    @foreach($footer->links as $link)

                        <a href="{{ $link->href }}">
                            {{ $link->title }}
                        </a>

                    @endforeach

                </div>

            </div>


            <div class="footer-socials">

                <b>
                    {{ $footer->socials_title }}
                </b>

                <div>

                    @foreach($footer->socials as $social)

                        <a
                            href="{{ $social->url }}"
                            target="_blank"
                            rel="noopener noreferrer"
                        >

                            <img
                                src="../img/{{ $social->image }}"
                                alt="{{ $social->alt }}"
                                width="24"
                                height="24"
                            >

                        </a>

                    @endforeach

                </div>

            </div>

        </div>

    </footer>

@endforeach
