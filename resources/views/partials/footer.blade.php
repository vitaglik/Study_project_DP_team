<footer id="contacts" class="footer">
    <div class="page footer-grid">
        <div class="footer-info">
            {!! $footer->logo !!}
            {!! $footer->copyright_text !!}

        </div>

        <div class="footer-links">
            {!! $footer->nav_title !!}
            <div>
                {!! $footer->nav_links !!}
            </div>
        </div>

        <div class="footer-socials">
            {!! $footer->contact_title !!}
            <div>
                {!! $footer->contact_links !!}
            </div>
        </div>
    </div>
</footer>
