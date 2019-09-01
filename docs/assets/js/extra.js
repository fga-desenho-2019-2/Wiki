
$('.md-content img')
    .wrap('<span style="display:inline-block; left: -30px;" class="hoverable"></span>')
    .css('display', 'block')
    .parent()
    .zoom();