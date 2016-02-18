/**
 * Created by pc on 2/15/2016.
 */

jQuery.noConflict();
(function($){
    $(function() {
        $("model-books").click(function() {
            alert("hello")
            $("#library-modal").modal()
        });
    });
})(jQuery);
