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
//= require lib/jquery.inputmask/dist/jquery.inputmask.bundle.min
//= require_self

var ready;
ready = function(){
    $('#data-table').dataTable({
        "bDestroy": true,
        "sPaginationType": "bootstrap",
        dom: 'Bfrtip',
        "sDom": "<'row'<'col-sm-4'l><'col-sm-4 text-right'T><'col-sm-4'f>r>t<'row'<'col-sm-5'i><'col-sm-7'p>>",

    });

    $('.select2js').select2();

    $('.inputmaskjs').inputmask("yyyy-mm-dd");

    $('.file-upload').fileinput({
        showUpload: false,
        previewFileType: "image",
    });

    $("#order_qty").blur(function(e){
        order_qty_per_dzn = Math.round($("#order_qty").val()/12*100, 2);
        order_qty_per_dzn = order_qty_per_dzn/100;
        $("#order_qty_per_dzn").val(order_qty_per_dzn);

        fob = $("#order_fob").val();
        qty = $("#order_qty").val();
        total = fob*qty;
        order_total_fob = $("#order_total_fob").val(total);
    });

    $("#order_acc_rate").blur(function(e){
        rate = $("#order_acc_rate").val();
        order_qty_per_dzn = $("#order_qty_per_dzn").val();
        total_rate = Math.round(rate * order_qty_per_dzn);
        $("#order_total_acc_cost").val(total_rate);
    });

    $("#order_btn_cost").blur(function(e){
        rate = $("#order_btn_cost").val();
        order_qty_per_dzn = $("#order_qty_per_dzn").val();
        total_rate = Math.round(rate * order_qty_per_dzn);
        $("#order_total_btn_cost").val(total_rate);
    });

    $("#order_zipper_cost").blur(function(e){
        rate = $("#order_zipper_cost").val();
        order_qty_per_dzn = $("#order_qty_per_dzn").val();
        total_rate = Math.round(rate * order_qty_per_dzn);
        $("#order_total_zipper_cost").val(total_rate);
    });

    $("#order_print_cost").blur(function(e){
        rate = $("#order_print_cost").val();
        order_qty_per_dzn = $("#order_qty_per_dzn").val();
        total_rate = Math.round(rate * order_qty_per_dzn);
        $("#order_total_print_cost").val(total_rate);
    });

    $("#order_fob").blur(function(e){
        fob = $("#order_fob").val();
        qty = $("#order_qty").val();
        total = fob*qty;
        $("#order_total_fob").val(total);

    });


    order_total_yarn_weight = 0;
    order_total_yarn_cost = 0;
    compositions = new Array()
    n=0;
    $('#composition_plus').click(function(evt){
        evt.stopImmediatePropagation();
        composition_name = $('#composition_name').val();
        composition_percentage = $('#composition_percentage').val();
        composition_yarn_rate = $('#composition_yarn_rate').val();
        composition_wastage = $('#composition_wastage').val();
        compositions[n] = [composition_name, composition_percentage, composition_yarn_rate, composition_wastage];

        composition_str = JSON.stringify(compositions);
        $('#order_compositions').val(composition_str)
        n++;

        $('#composition-div-group').css('display','block');
        $('#composition-div-group').append("<div class='composition-div'><div class='col-sm-3 composition_name_arr'><input class='form-control' readonly='readonly' name='composition_name_arr' value='"+composition_name+"'type='text' placeholder='Name'></div><div class='col-sm-3'><input class='form-control' readonly='readonly' name='composition_percentage_arr' value='"+composition_percentage+"'type='number' placeholder='Percentage'></div><div class='col-sm-2'><input class='form-control' readonly='readonly' name='composition_yarn_rate_arr' value='"+composition_yarn_rate+"'type='number' placeholder='Percentage'></div><div class='col-sm-2'><input class='form-control' readonly='readonly' name='composition_wastage_arr' value='"+composition_wastage+"'type='number' placeholder='Percentage'></div></div>");

        order_total_yarn_weight =  Number(order_total_yarn_weight) + Number($("#order_qty_per_dzn").val()*$("#order_weight_per_dzn").val()*composition_percentage/100*(1+Number(composition_wastage/100)));
        order_total_yarn_cost = Number(order_total_yarn_cost) + Number(Number($("#order_qty_per_dzn").val()*$("#order_weight_per_dzn").val()*composition_percentage/100*(1+Number(composition_wastage/100)))*composition_yarn_rate);

        $('#order_total_yarn_weight').val(Math.round(order_total_yarn_weight));
        $('#order_total_yarn_cost').val(Math.round(order_total_yarn_cost));
    });

    $('#composition_refresh').click(function(){
        num_of_composition = $('.composition_name_arr').length;
    });

    $('#order_print_cost').blur(function(){
        order_total_cost = Number($('#order_total_yarn_cost').val()) + Number($('#order_total_acc_cost').val()) + Number($('#order_total_btn_cost').val()) + Number($('#order_total_zipper_cost').val()) + Number($('#order_total_print_cost').val());
        $('#order_total_cost').val(Math.round(order_total_cost));

        order_balance_amount = $("#order_total_fob").val() - $("#order_total_cost").val();
        $("#order_balance_amount").val(Math.round(order_balance_amount));

        cost_of_making = order_balance_amount/$("#order_qty_per_dzn").val();
        $("#order_cost_of_making").val(Math.round(order_cost_of_making));
    });
}

$(document).ready(ready);
$(document).on('turbolinks:load', ready);

