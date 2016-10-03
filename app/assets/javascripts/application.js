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
//= require lib/jquery-ui/jquery-ui-1.10.0.custom.min
//= require turbolinks
//= require bootstrap/js/bootstrap.min
//= require lib/datatables/jquery.dataTables.min
//= require lib/datatables/extras/Scroller/media/js/dataTables.scroller.min
//= require lib/datatables/extras/TableTools/media/js/TableTools.min
//= require lib/datatables/extras/TableTools/media/js/ZeroClipboard
//= require lib/datatables/jquery.dataTables.bootstrap.min
//= require lib/select2/select2
//= require lib/fileinput/fileinput.min
//= require_self

var ready;
ready = function(){
    $('#data-table').dataTable({
        "bDestroy": true,
        "sPaginationType": "bootstrap",
        dom: 'Bfrtip',
        "sDom": "<'row'<'col-sm-4'l><'col-sm-4 text-right'T><'col-sm-4'f>r>t<'row'<'col-sm-5'i><'col-sm-7'p>>",
        buttons: [
            'copy', 'excel', 'pdf'
        ]
    });

    $('.s1').select2();

    $('.file-upload').fileinput({
        showUpload: false,
        previewFileType: "image",
    });
}

$(document).ready(ready);
$(document).on('turbolinks:load', ready);

