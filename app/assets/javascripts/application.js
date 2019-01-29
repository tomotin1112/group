// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// require rails-ujs
//= require jquery
//= require jquery_ujs
//= require activestorage
//= require_tree .

<<<<<<< HEAD
$(function(){
});

=======
$(function () {
    // モーダルウィンドウを開く
    $('.post-modal').on('click', PostModal);
    function PostModal(event) {
        event.preventDefault();

        var $shade = $('<div></div>');
        $shade
            .attr('id', 'shade')
            .on('click', posthideModal);


        var $modalWin = $('#postmodalwin');
        var $window = $(window);
        var posX = ($window.width() - $modalWin.outerWidth()) / 2;
        var posY = ($window.height() - $modalWin.outerHeight()) / 2;

        $modalWin
            .before($shade)
            .css({left: posX, top: posY})
            .removeClass('hide')
            .addClass('show')
            .on('click', 'button', function () {
                posthideModal();
            });
    }

    function posthideModal() {
        $('#shade').remove();
        $('#postmodalwin')
            .removeClass('show')
            .addClass('hide');
    }

    $('.image-modal').click(function(event){
        event.preventDefault();

        var $shade = $('<div></div>');
        var hensu = '#'+$(this).attr('data-id')
        $shade
            .attr('id', 'shade')
            .on('click', function () {
                imagehideModal(hensu)
            })
            //.on('click', imagehideModal(hensu));

        //var $modalWin = $('#imagemodalwin');
        var $modalWin = $(hensu)
        var $window = $(window);
        var posX = ($window.width() - $modalWin.outerWidth()) / 2;
        var posY = ($window.height() - $modalWin.outerHeight()) / 2;

        $modalWin
            .before($shade)
            .css({left: posX, top: posY})
            .removeClass('hide')
            .addClass('show')
            .on('click', 'button', function () {
                imagehideModal(hensu);
            });
    })

    function imagehideModal(id) {
        $('#shade').remove();
        $(id)
            .removeClass('show')
            .addClass('hide');
    }

});
>>>>>>> 8735f5aa5181096575b16a867be09f16353745e0
