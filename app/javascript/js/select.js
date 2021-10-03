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

  $('#admin_table').DataTable({
    paging: false,
    scrollY: 400,
    'language': {
      'url': "//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Japanese.json"
    },
  });

    let toggleBtn = document.querySelector("#navbar-toggle");
    let collapse = document.querySelector("#navbar-collapse");


    toggleBtn.onclick = () => {
    collapse.classList.toggle("hidden");
    collapse.classList.toggle("flex");
};

});

