const THRESHOLD = 300;
const $paginationElem = $('.pagination');
const $window = $(window);
const $document = $(document);
const paginationUrl = $paginationElem.attr('data-pagination-endpoint');
const pagesAmount = $paginationElem.attr('data-pagination-pages');
let currentPage = 1;
let baseEndpoint;

/* validate if the pagination URL has query params */
if (new URL(paginationUrl).search != "") {
  baseEndpoint = paginationUrl + "&page=";
} else {
  baseEndpoint = paginationUrl + "?page="
}

/* initialize pagination */
$paginationElem.hide()
let isPaginating = false

/* listen to scrolling */
  $window.on('scroll', _.debounce(function () {
    if (!isPaginating && currentPage < pagesAmount && $window.scrollTop() > $document.height() - $window.height() - THRESHOLD) {
      isPaginating = true;
      currentPage++;
      $paginationElem.show();
      $.ajax({
        url: baseEndpoint + currentPage
      }).done(function (result) {
        $('.js-items-container').append(result);
        isPaginating = false;
      });
    if (currentPage >= pagesAmount) {
      $paginationElem.hide();
    }
  }, 100));
