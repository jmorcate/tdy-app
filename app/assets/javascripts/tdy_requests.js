// jQuery(function(){
//     return $('#tdy_request_destination').autocomplete({
//         source: $('#tdy_request_destination').data('autocomplete-source')
//     });
// });

$(document).ready(function() {
    $(".traveller").click(function(event) {
        var name =this.nextSibling.data.trim();
        if (this.checked) {
            $('#sel1').append("<option value="+ this.value +" class='drivers'>" + name + "</option>");
        } else {
            $('.drivers[value="' + this.value + '"]').remove();
        };
    });
    
    $('#pomv_check').click(function() {
        $('#pomv-details').css('visibility', $('#pomv_check').prop('checked')? 'visible' : 'hidden');
    });
    
    $( "#tdy_request_destination" ).autocomplete({
      source:  $('#tdy_request_destination').data('autocomplete-source')
    });
});
