$(function(){

    smoothScroll.init({
        easing: 'easeInOutCubic',
        speed: 900
    });
    
    var params, source;
    params = function(name)  {
      name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
      var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
          results = regex.exec(location.search);
      return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    source = params('source')
    if(source != '')
    {
      $('a[href^="http://beta.tito.io"]').each(function(index, item){
        url = $(item).attr('href') + '?source=' + source;
        $(item).attr('href', url);
      })
    }
    
    $('#day-tabs a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
    })
    
    $('#day-tabs a:first').tab('show') // Select first tab
});


