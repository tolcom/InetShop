function toggle(container, id) {
    container.classList.toggle('nodeexp');
    var menu = document.getElementById(id).style;

    if (menu.display === 'none') {
        $("#" + id).show(200);
    } else {
        $("#" + id).hide(200);
    }
}

function createCatalog(listNodes) {
    var element = document.getElementById("treeCatalog");
    var i = 0;

    listNodes.forEach(function (node) {
        createNode(element, node, i);
    });
}

function createNode(element, node, i) {
    var ul = document.createElement('ul');
    if (i === 0) {
        ul.setAttribute("class", "tree");
    } else {
        ul.setAttribute('id', node.parent_id);
        ul.style.display = 'none';
    }

    i = i + 1;

    var li = document.createElement('li');
    var child = null;

    if (node.is_span) {
        child = document.createElement('span');
        var a = document.createElement('a');
        a.setAttribute("href", "/catalogs{" + node.id + "}");
        a.innerHTML = node.title;

        child.appendChild(a);
    } else {
        child = document.createElement('div');
        child.setAttribute('onclick', 'toggle(this, ' + node.id + ')');
        child.innerHTML = node.title;
    }

    li.appendChild(child);

    node.listItem.forEach(function (node) {
        createNode(li, node, i);
    });

    ul.appendChild(li);
    element.appendChild(ul);
}