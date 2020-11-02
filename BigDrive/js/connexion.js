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
                    window.location.href = './administrateur.php';
                }
                else if(data == 'L')
                {
                    window.location.href = './livreur.php';
                }
                else if(data == 'P')
                {
                    window.location.href = './preparateur.php';
                }
                else if(data == 'C')
                {
                    window.location.href = './client.php';
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