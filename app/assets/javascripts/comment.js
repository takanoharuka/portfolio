console.log("こんにちは")
$(function(){
  function buildHTML(comment){
    console.log(comment)
    let html = `<p class="comment-name">
                  ${comment.user_name} : 
                  ${comment.text}
                </p>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formDate = new FormData(this);
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formDate,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.comments').append(html);
      $('.comment-text').val('');
      $('.send-btn').prop('disabled', false);
    })
  })
})

