var dataTable;
$(document).ready(function () {
    loadDataTable();
});

function loadDataTable() {
    dataTable = $('#tblData').DataTable({
        "ajax": { url: '/admin/lot/getall' },
        "columns": [
            { data: 'name', "width": "8%" },
            { data: 'visibility', "width": "8%" },
            { data: 'state', "width": "8%" },
            { data: 'incrementValue', "width": "8%" },
            { data: 'initialValue', "width": "8%" },
            { data: 'finalValue', "width": "8%" },
            { data: 'queueTime', "width": "8%" },
            { data: 'dateSale', "width": "8%" },
            { data: 'dateAdded', "width": "8%" },
            { data: 'auction.name', "width": "8%" },
            {
                data: 'id',
                "render": (data) => {
                    return `<div class="w-75 btn-group" role="group">
                         <a href="/admin/lot/upsert?id=${data}" class="btn btn-primary mx-2"> <i class="bi bi-pencil-square"></i> Edit</a>               
                         <a onClick=Delete('/admin/lot/delete/${data}') class="btn btn-danger mx-2"> <i class="bi bi-trash-fill"></i> Delete</a>
                    </div>`
                }, "width": "15%"
            }
        ]
    });
}
function Delete(url) {
    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: url,
                type: 'DELETE',
                success: function (data) {
                    dataTable.ajax.reload();
                    toastr.success(data.message);
                }
            })
        }
    })
}