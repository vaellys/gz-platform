<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/commons/tags.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>家庭行为评分设置</title>
	<reps:theme/>
</head>
<body>
<reps:container layout="true">
	<reps:panel title="" id="top" dock="top" method="post" action="list.mvc" formId="queryForm">
		<reps:footbar>
			<reps:button cssClass="add-a" action="toadd.mvc" messageCode="manage.action.add" value="新增"></reps:button>
		</reps:footbar>
	</reps:panel>
	<reps:panel id="mybody" dock="center">
		<reps:grid id="itemList" items="${list}" form="queryForm" var="item" pagination="${pager}" flagSeq="true">
			<reps:gridrow>
				<reps:gridfield title="评分项" width="15" align="center">${item.item}</reps:gridfield>
				<reps:gridfield title="具体行为内容" width="40" align="center">${item.content}</reps:gridfield>
				<reps:gridfield title="奖励积分" width="40" align="center">${item.pointsScope}</reps:gridfield>
				<reps:gridfield title="适用年级" width="40" align="center">${item.applyGrade}</reps:gridfield>
				<reps:gridfield title="是否可用" width="15" align="center">${item.isEnabled eq 1 ? '是' : '否'}</reps:gridfield>
				<reps:gridfield title="操作" width="40">
					<reps:button cssClass="detail-table" action="show.mvc?id=${item.id }" value="详细"></reps:button>
					<reps:button cssClass="modify-table" messageCode="manage.action.update" action="toedit.mvc?id=${item.id}"></reps:button>
					<reps:ajax cssClass="delete-table" messageCode="manage.action.delete" confirm="您确定要删除所选行吗？"
						callBack="my" url="delete.mvc?id=${item.id}">
					</reps:ajax>
				</reps:gridfield>
			</reps:gridrow>
		</reps:grid>
	</reps:panel>
</reps:container>
<script type="text/javascript">
	var my = function(data){
		messager.message(data, function(){ window.parent.location.reload(); });
	};
</script>
</body>
</html>
