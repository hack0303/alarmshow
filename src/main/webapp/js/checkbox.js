 // Table: Toggle all checkboxes
    $('.table .toggle-all :checkbox').on('click', function () {
      var $this = $(this);
      var ch = $this.prop('checked');
      $this.closest('.table').find('tbody :checkbox').radiocheck(!ch ? 'uncheck' : 'check');
    });