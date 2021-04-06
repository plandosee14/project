$(function() {
   
   var member_no = $("#session_no").val();
   
   $("#loginBtn").click(function() {
      $("#loginModal").modal();
   });// click event
   
   $("#mypage_Main").click(function(){
      location.href = "/dreamUp/mypage_main.do";
   });//mypageMain click event
   
   $("#main_category").click(function(){
      location.href = "/dream/main_category"
   });//main_category click event
});// ready