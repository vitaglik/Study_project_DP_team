document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('[data-works-slider]').forEach((slider) => {
        const viewport = slider.querySelector('[data-works-viewport]');
        const section = slider.closest('.works-panel');
        const previousButton = section?.querySelector('.works-slider-prev');
        const nextButton = section?.querySelector('.works-slider-next');

        if (!viewport || !previousButton || !nextButton) {
            return;
        }

        const getCards = () => Array.from(viewport.querySelectorAll('.work-card'));

        const getCardPosition = (card) => {
            const viewportLeft = viewport.getBoundingClientRect().left;

            return card.getBoundingClientRect().left - viewportLeft + viewport.scrollLeft;
        };

        const scrollToAdjacentCard = (direction) => {
            const cards = getCards();
            const currentPosition = viewport.scrollLeft;
            const tolerance = 2;
            const orderedCards = direction > 0 ? cards : cards.reverse();
            const target = orderedCards.find((card) => {
                const position = getCardPosition(card);

                return direction > 0
                    ? position > currentPosition + tolerance
                    : position < currentPosition - tolerance;
            });

            if (!target) {
                return;
            }

            viewport.scrollTo({
                left: getCardPosition(target),
                behavior: 'smooth',
            });
        };

        const updateButtons = () => {
            const maximumScroll = viewport.scrollWidth - viewport.clientWidth;
            const tolerance = 2;

            previousButton.disabled = viewport.scrollLeft <= tolerance;
            nextButton.disabled = viewport.scrollLeft >= maximumScroll - tolerance;
        };

        previousButton.addEventListener('click', () => {
            scrollToAdjacentCard(-1);
        });

        nextButton.addEventListener('click', () => {
            scrollToAdjacentCard(1);
        });

        viewport.addEventListener('keydown', (event) => {
            if (event.key !== 'ArrowLeft' && event.key !== 'ArrowRight') {
                return;
            }

            event.preventDefault();
            scrollToAdjacentCard(event.key === 'ArrowLeft' ? -1 : 1);
        });

        viewport.addEventListener('scroll', updateButtons, { passive: true });
        window.addEventListener('resize', updateButtons);

        updateButtons();
    });
});
