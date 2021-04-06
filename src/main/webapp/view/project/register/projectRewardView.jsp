<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery -->
<script src="../../../resources/js/common/jquery.js"></script>
<!-- 리워드 추가/삭제 이벤트 -->
<!-- <script src="../../../resources/js/reward/rewardAddDelete.js"></script> -->
<!-- 리워드 유효성 검사 이벤트 -->
<script src="../../../resources/js/reward/rewardValidityCheck.js"></script> 
<!-- fldnjem 등록 이벤트 -->
<script src="../../../resources/js/reward/rewardRegister.js"></script>


<title>리워드 정보 등록</title>
<link rel="icon" href="../../../resources/img/title.png" type="image/x-icon">
<script type="text/javascript">
$(function() {
	$('#rewardOk').click(function() {
		if ($('#re_money').val() == "") {
			alert('서약금액을 입력하세요');
			$('#re_money').focus();
			return false;
		}  else if ($('#title').val() == "") {
			alert('리워드 타이틀을 입력하세요');
			$('#title').focus();
			return false;
		} else if ($('#item').val() == "") {
			alert('리워드 아이템을 입력하세요');
			$('#item').focus();
			return false;
		} else if ($('#duedate').val() == "") {
			alert('배송 예정일을 입력하세요');
			$('#duedate').focus();
			return false;
		} else if ($('#amount').val() == "") {
			alert('리워드 한정수량을 입력하세요');
			$('#amount').focus();
			return false;
		} 
		nextStep();
	});//click event
});

	var reward_count =0;
	//var i = 0;
	var deleteList = [];
	
	function addItem() {
		reward_count++;
		$("#reward_count").val(reward_count);
		
		var newDiv = document.createElement("div"); //<div></div>
		newDiv.setAttribute('id', 'item_' + reward_count); //<div id="item_1"></div>
 
		newDiv.innerHTML = //'<center>'
				'<div class="boxSpace rewardBox">'
					+'<div class="row">'
						+'<div class="col-md-10 col-md-offset-1">'
							+'<form class="form-horizontal" role="form">'
							
								+'<legend id="reward_head_title'+reward_count+'">리워드'+reward_count+'</legend>'
								
								+'<div class="form-group">'
								+'<label class="col-sm-3 control-label" for="textinput">제목 : </label>'	
								+'<div class="col-sm-9">'
								+'<input type="text" id="reward_title'+reward_count+'" placeholder="리워드 제목을 입력하세요" class="form-control">'
								+'</div>'
								+'</div>'
								
								+'<div class="form-group">'
								+'<label class="col-sm-3 control-label" for="textinput">아이템 : </label>'	
								+'<div class="col-sm-9">'
								+'<input type="text" id="reward_items'+reward_count+'" placeholder="리워드 품목 입력하세요" class="form-control">'
								+'</div>'
								+'</div>'
								
								+'<div class="form-group">'
								+'<label class="col-sm-3 control-label" for="textinput">한정 수량 : </label>'	
								+'<div class="col-sm-9">'
								+'<input type="text" id="reward_limited_count'+reward_count+'" placeholder="한정 수량을 입력하세요" class="form-control">'
								+'</div>'
								+'</div>'
								
								+'<div class="form-group">'
								+'<label class="col-sm-3 control-label" for="textinput">금액 : </label>'	
								+'<div class="col-sm-9">'
								+'<input type="text" id="reward_amount'+reward_count+'" placeholder="리워드 가격을 입력하세요" class="form-control">'
								+'</div>'
								+'</div>'
								
								+'<div class="form-group">'
								+'<label class="col-sm-3 control-label" for="textinput">배송예정일 : </label>'	
								+'<div class="col-sm-9">'
								+'<input type="date" id="reward_delivery_date'+reward_count+'" class="form-control">'
								+'</div>'
								+'</div>'
								
								+'<div class="form-group">'
								+'<label class="col-sm-3 control-label" for="textinput">리워드 번호</label>'	
								+'<div class="col-sm-9">'
								+'<input type="text" id="reward_no'+reward_count+'" value="'+reward_count+'" class="form-control" readonly="readonly">'
								+'</div>'
								+'</div>'
							
							+'</from>'  
						+'</div>'
					+ '<button type="button" class="btn btn-danger pull-right" id="removeBtn'+reward_count+'" onclick="removeItem(' + reward_count+')" >삭제</button>';
					+ '</div>'
				+ '</div>';
				

		var itemList = document.getElementById('itemList');
		itemList.appendChild(newDiv);
	
		//생성된 rewardBox의 갯수를 input type에 저장
		

	}
	function removeItem(reward_no) {
		//alert("현재 선택된 reward번호 : "+reward_no)
		var delDiv = document.getElementById('item_' + reward_no);
		
		if(reward_no == 1){
			alert("리워드 후원은 리워드가 1개 이상 입력되어야 합니다.")
			return;
		}
		
		delDiv.parentNode.removeChild(delDiv);

		var reward_box_count = $("#reward_count").val();
		
//			var reward_title = $("#reward_title").val()
			//alert("현재 리워드 번호 : "+reward_no)
			//alert("총 리워드 갯수 : "+reward_count)
			var next_reward_no = reward_no+1;
			//alert("다음 리워드 번호 : "+next_reward_no)
			
			if(reward_no === reward_count){
				//alert("마지막 리워드 박스 삭제!!")
				reward_count = reward_box_count-1;
				$("#reward_count").val(reward_count);
				return;
			}else{
				//alert(reward_no+"번째 리워드 박스 삭제!!");				
			}
			
		for(var i = next_reward_no ; i <=reward_count ; i++){	
			//alert("변경되는 item 번호 : item_"+i);
			$("#item_"+i).attr("id","item_"+(i-1));
			
			$("reward_head_title"+i).attr("id", "reward_head_title"+(i-1));
			//$("reward_head_title"+(i-1)).text("리워드"+(i-1))
			 
		    $("#reward_title"+i).attr("id", "reward_title"+(i-1));
		    //$("#reward_title"+(i-1)).val("title"+(i-1))

		    $("#reward_items"+i).attr("id", "reward_items"+(i-1));
		    //$("#reward_items"+(i-1)).val("reward_items"+(i-1))

		    $("#reward_delivery_date"+i).attr("id", "reward_delivery_date"+(i-1));
		    //$("#reward_delivery_date"+(i-1)).val("reward_delivery_date"+(i-1))

		    $("#reward_limited_count"+i).attr("id", "reward_limited_count"+(i-1));
		    //$("#reward_limited_count"+(i-1)).val("reward_limited_count"+(i-1))

		    $("#reward_amount"+i).attr("id", "reward_amount"+(i-1));
		    //$("#reward_amount"+(i-1)).val("reward_amount"+(i-1))

		    $("#reward_no"+i).attr("id","reward_no"+(i-1));
		    $("#reward_no"+(i-1)).val(i-1) 
		    
		    $("#removeBtn"+i).attr("id","removeBtn"+(i-1))
		    $("#removeBtn"+(i-1)).attr("onclick","removeItem("+(i-1)+")")
		    //alert("변경된 reward_no : "+$("#reward_no"+(i-1)).val())
		}
			
			reward_count = reward_box_count-1;
			$("#reward_count").val(reward_count);
	}
	function nextStep() {

		document.reward.reward_count.value = reward_count;
		document.reward.deleteList.value = deleteList;

		document.reward.submit();
	}
	window.onload = function() {
		addItem();
	}
</script>
<article>
	<%@include file="projectTabList.jsp" %>
</article>
</head>
<body>
<div class="wrap">
	<div class="container">
		<div class="col col-md-12"">
			<div class="col col-md-2"></div>
			<div class="col col-md-8">
			<legend>
				<h2>프로젝트 리워드 정보</h2>
							</legend>
				
				<form name="reward" method="post">
					<div id="itemList"></div>
					<br><br>
					<input type="button" class="btn btn-success"  value="추가" onclick="addItem()"> 
					<!-- <br>생성된 리워드 총 갯수 : --> 
					<input type="hidden" id="reward_count" name="reward_count">  
				</form>
				<div id="rewardArea"></div>
			<!-- 	<a id="addRewardBox">추가</button> -->
				<button type="button" id="rewardInfoRegister" class="btn btn-primary pull-right">저장하고 다음으로</button>
			</div>
			<div class="col col-md-2"></div>
		</div>
	</div>
	</div>
</body>
<footer> 
	<%@include file="../../mainView/footer.jsp" %>
</footer>
</html>