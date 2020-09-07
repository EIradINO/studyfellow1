$(".field input").on("focus", function () {
  $(this).addClass("focus");
});

$(".field input").on("blur", function () {
  if ($(this).val() == "")
    $(this).removeClass("focus");
});