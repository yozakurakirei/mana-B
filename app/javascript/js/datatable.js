$(function() {
  $('#admin_table').DataTable({
    paging: false,
    scrollY: 400,
    'language': {
      'url': "//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Japanese.json"
    },
    'pagingType' : 'full_numbers', 
    info: false
  });
});