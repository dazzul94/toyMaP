<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Modal -->
<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class='form-group'>
        	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <label class="input-group-text" for="inputGroupSelect01">Options</label>
			  </div>
			  <select class="custom-select" id="inputGroupSelect01">
			    <option selected>all</option>
			    <option value="1">중구</option>
			    <option value="2">중랑구</option>
			    <option value="3">광진구</option>
			    <option value="3">동작구</option>
			  </select>
			</div>
        </div>
        <div class='form-group'>
        <!-- 라디오버튼으로 만들으나 버튼이 통일성있어보여 수정함. 
        	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="01">
			  <label class="form-check-label" for="inlineRadio1">1</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="02">
			  <label class="form-check-label" for="inlineRadio2">2</label>
			</div>
         -->
         	<div class="btn-group btn-group-toggle" data-toggle="buttons"style="width:100%;">
			  <label class="btn btn-outline-info active">
			    <input type="radio" name="options" value="01" autocomplete="off" checked> 전세
			  </label>
			  <label class="btn btn-outline-info">
			    <input type="radio" name="options" value="02" autocomplete="off"> 월세
			  </label>
			</div>
        </div>
        <div class='form-group'>
	        <div class="input-group">
			  <input type="number" id="bo" class="form-control" placeholder="보증금">
			  <input type="number" id="mo" class="form-control" placeholder="월세">
			</div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Search</button>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">

//$("input:radio[name='inlineRadioOptions']").val();
//전월세 라디오 변경 이벤트
$('input[name="options"]').change(function() {
	var raval = $("input:radio[name='options']:checked").val();
	
	if(raval=="01"){	//전
		$("#mo").val("");
		$("#mo").attr("disabled",true);
	}else if(raval=="02"){	//월
		$("#mo").removeAttr("disabled");

	}
	
});
</script>

