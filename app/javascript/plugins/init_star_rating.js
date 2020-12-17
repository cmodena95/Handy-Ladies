import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  const starRating = document.getElementById("review_star_rating");

  if (starRating) {
    $('#review_star_rating').barrating({
      theme: 'css-stars'
    });
  }

};

export { initStarRating };
