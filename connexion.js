function Alert(){
    $('.Alert').removeAttr('hidden');
};

$(function(){
    $('#connexion').submit(function(e){
        e.preventDefault();

        $.post(
            './php/connexion.php',
            {
                utilisateur: $('#utilisateur').val(),
                mdp: $('#mdp').val()
            },

            function(data){
                if(data == 'A')
                {
                    window.location.href = './assistant.php';
                }
                else if(data == 'T')
                {
                    window.location.href = './technicien.php';
                }
                else 
                {
                    Alert();
                }
            }
        );
    });
    $('.Alert').click(function(e){
        $('.Alert').attr("hidden","true");
    });
});