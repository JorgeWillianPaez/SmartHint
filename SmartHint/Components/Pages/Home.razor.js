export function selectAllCheckBoxes() {
    let selectAll = $("#selectAll");

    let checkboxes = $(".clienteCheckbox");

    if (selectAll[0].checked) {
        for (let i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = true;
        }
    } else {
        for (let i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = false;
        }
    }
}