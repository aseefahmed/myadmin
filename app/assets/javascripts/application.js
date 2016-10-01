// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require lib/datatables/jquery.dataTables.min
//= require lib/datatables/extras/Scroller/media/js/dataTables.scroller.min
//= require lib/datatables/extras/TableTools/media/js/TableTools.min
//= require bootstrap/js/bootstrap.min
//= require_self

var ready;
ready = function(){
    $('#data-table').dataTable();
}

$(document).ready(ready);

