$(document).ready(function() {
  rotateBackground();
  showLogin();
  changeTab();
  showNewUserForm();
  showEditUserForm();
  showArticlesIndex();
  showNewTripForm();
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

function showNewUserForm() {
  $(".sheet").on("click", "#show-new-user-form", function(e) {
    e.preventDefault();
    $(".sheet a").siblings().hide();
    $("#new-user-form").slideDown();
  })
}

function showEditUserForm() {
  $(".sheet").on("click", "#show-edit-user-form", function(e) {
    e.preventDefault();
    $(".sheet a").siblings().hide();
    $("#edit-user-form").slideDown();
  })
}

function showArticlesIndex() {
  $(".sheet").on("click", "#show-articles-index", function(e) {
    e.preventDefault();
    $(".sheet a").siblings().hide();
    $("#articles-index").slideDown();
  })
}

function showNewTripForm() {
  $(".sheet").on("click", "#show-new-trip-form", function(e) {
    e.preventDefault();
    $(".sheet a").siblings().hide();
    $("#new-trip-form").slideDown();
  })
}
