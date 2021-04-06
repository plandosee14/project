/*신고하기*/
$(function() {
   $("#reportingBtn").click(function() {
   
       console.log("success!");
      var project_No = $('#project_No').val();
      var project_ReportCount=$('#project_ReportCount').val();
      //alert(project_No+project_ReportCount); //완료
      //alert(project_No); 완료
      $.ajax({
         url : '/dreamUp/reportiongAction.do',
         type : 'POST',
         data : {

            project_No : project_No,
            project_ReportCount:project_ReportCount
         },
         success : function(data) {
            alert('신고하기 완료');
            $('#reportingCnt').html(data+"회"); //영역감싸기 완료 ->success출력
            //location.reload(); //새로고침
            //document.getElementById("#reportingCnt").innerHTML = new_content;
            /*$('#reportingCnt').load('refresh.html');*/
         },
         error : function() {
            alert('로그인 정보를 확인하세요.');
         }
      });

   });
});

