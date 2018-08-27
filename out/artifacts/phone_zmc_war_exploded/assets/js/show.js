function values(ID) {
    $("#myModal").modal('show');
    console.log(ID);
    $.ajax({
        method: "get",
        url: "/phone/update",
        data:{id:ID}
    }).done(function (data) {
        $("#id").val(data.id);
        $("#name").val(data.name);
        $("#price").val(data.price);
        $("#brand").val(data.brand);
        $("#firm").val(data.firm);
    });
};
