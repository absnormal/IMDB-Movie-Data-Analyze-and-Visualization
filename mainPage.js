
function changeContent(htmlPath){

  $("#main-content").empty(); 

  $('<iframe>', {
    src: htmlPath,
    id:  'myFrame',
    frameborder: 0,
    scrolling: 'no'
    }).appendTo('#main-content');

};