function uploadlogo() {
    debugger;
    var data = new FormData();
    var id = "";
    $('input[type=file]').each(function (i, fil) {
        if (this.files.length > 0) {
            var fuid = this.id;
            jQuery.each(this.files, function (i, file) {
                id = id + "," + fuid;
                data.append('file-' + i, file);
            });
        }
    });

    if (id != "") {
        debugger;
       var url = '../Upload.ashx?id=' + id.substring(1);
      //  var url = 'http://www.prothsahanteam.org/Admin/Upload.ashx?id=' + id.substring(1);
         //alert(url);
        jQuery.ajax({
            url: url,
            data: data,
            cache: false,
            contentType: false,
            processData: false,
            type: 'POST',
            beforeSend: function () {

            },
            success: function (data) {
            },
            error: function (data) {

            }
        });
    }
}

