<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/commons/tags.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>家庭行为评分新增</title>
	<reps:theme />
</head>
<body>
<reps:container>
	<reps:panel id="first" dock="top" action="add.mvc" formId="form" validForm="true" >
		<reps:formcontent>
		
			<reps:formfield label="评分项"  fullRow="true">
				<reps:input name="item" maxLength="30" required="true"></reps:input>
			</reps:formfield>
			
			<reps:formfield label="具体行为内容" fullRow="true">
				<reps:input name="content" maxLength="200" multiLine="true" style="width:516px;height:70px"></reps:input>
			</reps:formfield>
			
			<reps:formfield label="奖励积分" fullRow="true">
				<reps:input name="pointsScope" maxLength="30" required="true"></reps:input>
			</reps:formfield>
			
			<reps:formfield label="适用年级" fullRow="true">
				<reps:select name="applyGrade" jsonData="{'':'全部','一年级':'一年级','二年级':'二年级'}" required="true"></reps:select>
			</reps:formfield>
			
			<reps:formfield label="是否可用" fullRow="true">
				<reps:select name="isEnabled" jsonData="{'1':'是','0':'否'}" ></reps:select>
			</reps:formfield>
			
		</reps:formcontent>
		<br/>
		<reps:formbar>
			<reps:ajax  messageCode="add.button.save" formId="form" callBack="skip" type="button" cssClass="btn_save"></reps:ajax>
			<reps:button cssClass="btn_cancel_a" messageCode="add.button.cancel" onClick="back()"></reps:button>
		</reps:formbar>
	</reps:panel>
</reps:container>
</body>
<script type="text/javascript">
	var skip = function(data) {
		messager.message(data, function(){ window.parent.location.reload(); });
	};
	
	function back() {
		window.location.href= "list.mvc";
	}

</script>
</html>