$(document).ready(function() {
    $.ajax({
        url: "https://jsonplaceholder.typicode.com/todos/2",
        type: "GET",
        dataType: "json",
        crossDomain: true,
        processData: false,
        success:  function (data, status, xhr){
            var jsonObject = JSON.parse(JSON.stringify(data)) ;
            var keys = Object.keys(jsonObject);
            for (var index in keys) {
                var key = keys[index];
                var li = $("<li/>", { text: jsonObject[key]});
                $('#container').append(li);
            }
        },
        error: function(data, status, xhr) {
            alert(JSON.stringify(data));
        }
    });
});