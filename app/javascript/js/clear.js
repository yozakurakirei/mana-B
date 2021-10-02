// clear ボタン
$(function () {
  $('#js_clear_button').click(function (e) {

    $('.reset_button').find('select').val("");
    $('.reset_button').find('input').val("");
    $('#search_button').val("完了");
    e.preventDefault();
    return false;
  });
});
