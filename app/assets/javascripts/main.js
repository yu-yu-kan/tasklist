$( document ).ready(function() {
    // メッセージを３秒後にフェードアウトする
  $('.alert').fadeOut(3000);
});

//削除ボタン
$(function() {
    $(".delete").hide();
    
    $(function() {
        $(".btn").click(function() {
            $(".delete").toggle();
        });
    });
});

