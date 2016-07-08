function saveMarks() {
    var data = new Array();
    var i = 1;
    while (document.getElementById('mark' + i) != null) { //|| (document.getElementById('mark' + i).value != "")
        data.push(document.getElementById('mark' + i).value);
        i = i + 1;
    };

    $.ajax({
        type: "POST",
        url: "/addMark",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(data),
        success: function (marks) {
            $("#panelNewMark").val('');

//            var parentNode = document.getElementById(data.parent_id == 0 ? 'comments' : data.parent_id);
//            drawComment(parentNode, comment, true);
        },
        error: function () {
            alert('error ' + JSON.stringify(data));
        }
    })
}