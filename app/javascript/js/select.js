console.log("hello!!")

$(function () {
  $('#admin_company_id').select2();
  $('#admin_staff_id').select2();
  $('#admin_staff_id').val(null).trigger("change");

  $('#admin_table').DataTable();
});

