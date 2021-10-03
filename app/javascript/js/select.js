console.log("hello! rails!")

$(function () {
  $('#admin_company_id').select2({
    width: 'resolve'
  });
  $('#admin_staff_id').select2({
    width: 'resolve'
  });

  $(window).on('resize', function() {
    $('admin_area').each(function() {
        var formGroup = $(this),
            formgroupWidth = formGroup.outerWidth();
        formGroup.find('.select2-container').css('width', formgroupWidth);
    });
  });

  $('#admin_staff_id').val(null).trigger("change");

  // clear ボタン
  $('#js_clear_button').click(function (e) {

    $('.reset_button').find('select').val("");
    $('.reset_button').find('input').val("");
    $('#search_button').val("完了");
    e.preventDefault();
    return false;
  });
});

