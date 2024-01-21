var dataTable;
$(document).ready(function () {
    loadDataTable();
});

function loadDataTable() {
    dataTable = $('#tblData').DataTable({
        "ajax": { url: '/admin/lot/getall' },
        "columns": [
            { data: 'name' },
            { data: 'visibility' },
            { 
                data: 'state',
                render: function (data) {
                    return formatState(data);
                }
            },
            { data: 'incrementValue' },
            { data: 'initialValue' },
            { data: 'finalValue' },
            { data: 'queueTime' },
            {
                data: 'dateSale',
                render: function (data) {
                    return formatDate(data);
                }
            },
            {
                data: 'dateAdded',
                render: function (data) {
                    return formatDate(data);
                }
            },
            {
                data: 'dateStart',
                render: function (data) {
                    return formatDate(data);
                }
            },
            { data: 'auction.name' },
            {
                data: 'id',
                render: function (data) {
                    return `<div class="w-75 btn-group" role="group">
                         <a href="/admin/lot/upsert?id=${data}" class="btn btn-secondary mx-2"> <i class="bi bi-pencil-square"></i> Edit</a>               
                         <a onClick=Delete('/admin/lot/delete/${data}') class="btn btn-danger mx-2"> <i class="bi bi-trash-fill"></i> Delete</a>
                    </div>`;
                }
            }
        ]
    });
}

function formatDate(dateString) {
    if (dateString == null) return null;
    var date = new Date(dateString);
    return date.toLocaleString('en-US', { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' });
}

function formatState(stateInt) {
    switch (stateInt) {
        case 0:
            return "Available for auction";
        case 1:
            return "Already in auction";
        case 2:
            return "Under verification";
        case 3:
            return "Sold";
        default:
            return "Unknown state";
    }
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