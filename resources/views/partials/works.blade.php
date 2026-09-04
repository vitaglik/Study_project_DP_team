<section id="works" class="section compact">
    <div class="page section-panel works-panel">

        <div class="works-heading">
            <h2>Роботи, які ти зможеш створювати 🔥</h2>
        </div>

        <div class="works-slider" data-works-slider>
            <button class="works-slider-button works-slider-prev" type="button" aria-label="Попередні роботи">
                <span aria-hidden="true">←</span>
            </button>

            <div class="works-viewport" data-works-viewport tabindex="0" aria-label="Приклади робіт">
                <div class="works-grid">

            <!-- 1. Интернет-магазин
            как все должно выстравиваться через БД:
            -*
            -->
            <article class="work-card work-card-mob-app">

                <div class="work-carousel">

                    <input type="radio" name="shop" id="shop-1" checked>
                    <input type="radio" name="shop" id="shop-2">
                    <input type="radio" name="shop" id="shop-3">
                    <input type="radio" name="shop" id="shop-4">
                    <input type="radio" name="shop" id="shop-5">

                    <div class="work-slides">

                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/web-design-app/mobile-app-first-image.png') }}')">
                        </div>

                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/web-design-app/mobile-app-second-image.png') }}')">
                        </div>

                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/web-design-app/mobile-app-third-image.png') }}')">
                        </div>

                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/web-design-app/mobile-app-fourth-image.png') }}')">
                        </div>

                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/web-design-app/mobile-app-fifth-image.png') }}')">
                        </div>

                    </div>
                    <div class="work-pages">
                        <label for="shop-1">1</label>
                        <label for="shop-2">2</label>
                        <label for="shop-3">3</label>
                        <label for="shop-4">4</label>
                        <label for="shop-5">5</label>
                    </div>

                </div>

                <h3>Інтернет-магазин</h3>
                <small>PHP, Laravel, MySQL, JS, CSS</small>
                <p>Повноцінний магазин з пошуком, замовленнями та адмін-панеллю.</p>
            </article>


            <!-- 2. Личный кабинет -->
            <article class="work-card work-card-parket-dream">

                <div class="work-carousel">

                    <input type="radio" name="cabinet" id="cabinet-1" checked>
                    <input type="radio" name="cabinet" id="cabinet-2">
                    <input type="radio" name="cabinet" id="cabinet-3">
                    <input type="radio" name="cabinet" id="cabinet-4">

                    <div class="work-slides">
                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/parket-dream/parket-dream-first-page.png') }}')">
                        </div>
                        <div class="work-slide" style="background-image: url('{{ asset('img/works/parket-dream/parket-dream-second-page.png') }}')">
                        </div>
                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/parket-dream/parket-dream-third-page.png') }}')">
                        </div>
                        <div class="work-slide" style="background-image: url('{{ asset('img/works/parket-dream/parket-dream-four-page.png') }}')">
                        </div>
                    </div>

                    <div class="work-pages">
                        <label for="cabinet-1">1</label>
                        <label for="cabinet-2">2</label>
                        <label for="cabinet-3">3</label>
                        <label for="cabinet-4">4</label>
                    </div>

                </div>

                <h3>ТУТ ВАШ ТЕКСТ</h3>
                <small>PHP, MySQL, JS, AJAX</small>
                <p>Сайт магазина паркета и ламинат для Киевской компании ПаркетДрим с калькулятором расчета необходимого количества упаковок.
                    https://parket-dream.com.ua</p>
            </article>


            <!-- 3. Сервис задач -->
            <article class="work-card work-card-summa">

                <div class="work-carousel">

                    <input type="radio" name="tasks" id="tasks-1" checked>
                    <input type="radio" name="tasks" id="tasks-2">

                    <div class="work-slides">
                        <div class="work-slide"
                             style="background-image: url('{{ asset('img/works/summa/summa-first-page.png') }}')">
                        </div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                    </div>

                    <div class="work-pages">
                        <label for="tasks-1">1</label>
                        <label for="tasks-2">2</label>
                    </div>

                </div>

                <h3>ТУТ ВАШ ТЕКСТ</h3>
                <small>PHP, Laravel, MySQL, JS</small>
                <p>Простая бизнес-страница компании по продаже лазерных режущих принтеров<br>https://summa.com.ua</p>
            </article>


            <!-- 4. API -->
            <article class="work-card">

                <div class="work-carousel">

                    <input type="radio" name="api" id="api-1" checked>
                    <input type="radio" name="api" id="api-2">
                    <input type="radio" name="api" id="api-3">
                    <input type="radio" name="api" id="api-4">
                    <input type="radio" name="api" id="api-5">

                    <div class="work-slides">
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                    </div>

                    <div class="work-pages">
                        <label for="api-1">1</label>
                        <label for="api-2">2</label>
                        <label for="api-3">3</label>
                        <label for="api-4">4</label>
                        <label for="api-5">5</label>
                    </div>

                </div>

                <h3>API для мобільного додатку</h3>
                <small>PHP, Laravel, JSON API</small>
                <p>REST API для мобільного додатку з документацією та тестуванням.</p>
            </article>


            <!-- 5. Landing -->
            <article class="work-card">

                <div class="work-carousel">

                    <input type="radio" name="landing" id="landing-1" checked>
                    <input type="radio" name="landing" id="landing-2">
                    <input type="radio" name="landing" id="landing-3">
                    <input type="radio" name="landing" id="landing-4">
                    <input type="radio" name="landing" id="landing-5">

                    <div class="work-slides">
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                        <div class="work-slide"></div>
                    </div>

                    <div class="work-pages">
                        <label for="landing-1">1</label>
                        <label for="landing-2">2</label>
                        <label for="landing-3">3</label>
                        <label for="landing-4">4</label>
                        <label for="landing-5">5</label>
                    </div>

                </div>

                <h3>Лендінг компанії</h3>
                <small>HTML, CSS, JS</small>
                <p>Сучасний адаптивний сайт для бізнесу або стартапу.</p>
            </article>

                </div>
            </div>

            <button class="works-slider-button works-slider-next" type="button" aria-label="Наступні роботи">
                <span aria-hidden="true">→</span>
            </button>
        </div>
    </div>
</section>

<script src="{{ asset('js/works-carousel.js') }}" defer></script>
