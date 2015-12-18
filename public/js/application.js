$(document).ready(function() {
  rotateBackground();
  showLogin();
  changeTab();
});

function rotateBackground() {
  $('#slideshow').cycle({
    fx: 'fade',
    pager: '#smallnav',
    pause:   1,
    speed: 2000,
    timeout:  4000
  });
};

function showLogin() {
  $("nav").on("click", "a#login", function(e) {
    e.preventDefault();
    if ($(".login-container").is(":hidden")) {
      $(".login-container").slideDown(300);
    } else {
      $(".login-container").slideUp(300);
    };
  });
};

function changeTab() {
  $(document).on("click", ".tab", function(e) {
    e.preventDefault();
    $(".tab").removeClass("active");
    $(this).addClass("active");

    var newSheet = $(this).children("a").attr("href")
    $(".sheet").hide();
    $("#" + newSheet).removeClass("hidden").show();
  });
};
