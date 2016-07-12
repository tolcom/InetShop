function saveMarks() {
    var data = new Array();
    var i = 1;
    while (document.getElementById('mark' + i) != null) { //|| (document.getElementById('mark' + i).value != "")
        data.push(document.getElementById('mark' + i).value);
        i = i + 1;
    }
    ;

    $.ajax({
        type: "POST",
        url: "/addMark",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(data),
        success: function (marks) {
            $("#panelNewMark").val('');
        },
        error: function () {
            alert('error ' + JSON.stringify(data));
        }
    })
}

function deleteItem(itemType, itemId) {
    var data = {}
    data["type"] = itemType;
    data["id"] = itemId;
    $.ajax({
        type: "POST",
        url: "/deleteItem",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(data),
        success: function (result) {
            //if (result) {
            window.open("/admin/mark", "_self");
            return false;
            //}
        },
        error: function () {
            alert('error ' + itemType + itemId);
        }
    })
}