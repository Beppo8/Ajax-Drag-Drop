$(function(){
    $('#dz-space').dropzone({
        maxFilesize: 10,
        paramName: "upload[image]",
        addRemoveLinks: true,
        success: function(file, response){
            $(file.previewTemplate).find('dz-remove').attr('id',response.fileId);
            $(file.previewElement).addClass('dz-success');
        },
        removedfile: function(file){
            var id = $(file.previewTemplate).find('.dz-remove').attr('id');
            $.ajax({
                type:'DELETE',
                url: '/uploads/' + id,
                success: function(data){
                    console.log(data.message);
                }
            });
        }
    });
});