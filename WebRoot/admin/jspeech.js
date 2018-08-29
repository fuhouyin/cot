



function speek(content){
//获得文本内容
var content = $(".jcontent").text();

//alert(content);
var zhText = content;  
zhText = encodeURI(zhText);  
var radio = $("#radio");

var speekAudio = " <audio autoplay=\"autoplay\">"
				+ " <source src=\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=5&text="+ zhText +"\" type=\"audio/mpeg\">"
				+ " <embed height=\"0\" width=\"0\" src=\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text="+ zhText +"\">"
				+ " </audio>" 
radio.html(speekAudio);
}

//打开网页就执行
(function($){

	speek();

})(jQuery);


