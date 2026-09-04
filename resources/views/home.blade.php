<!doctype html>
<html lang="uk">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Team</title>
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>

@include('partials/header')

<main id="top">

    @include('partials/hero')

    @include('partials/learning')

    @include('partials.technologies')

    @include('partials/works')

    <section class="section compact">
        <div class="page three-blocks">

            @include('partials/teacher')

            @include('partials/learning-program')

            @include('partials/reviews')

        </div>
    </section>

    <section id="learning" class="section compact">
        <div class="page learning-frame">

            @include('partials/course')

            @include('partials/faq')

        </div>
    </section>
</main>

@include('partials/footer')

</body>
</html>
