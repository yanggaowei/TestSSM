<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="basePath" scope="request"
	value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>userlist</title>
<link rel="stylesheet" type="text/css"
	href="${basePath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${basePath}/easyui/themes/icon.css">
<script type="text/javascript" src="${basePath}/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${basePath}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
			src="${basePath}/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div id="pnl" class="easyui-panel" title="用户信息列表"
		style="width: 1200px; height: 500px; padding: 10px; background: #fafafa;"
		data-options="iconCls:'icon-save',closable:true,
                collapsible:true,minimizable:true,maximizable:true" fit="true">
		<table id="dg" class="easyui-datagrid" style="width: 400px; height: 250px"
			data-options="url:'userData.do',fitColumns:true,singleSelect:true" title="用户信息列表" fit="true">
			<thead>
				<tr>
					<th data-options="field:'id',width:100">id</th>
					<th data-options="field:'userName',width:100">用户名</th>
					<th data-options="field:'password',width:100">密码</th>
					<th data-options="field:'createTime',width:100">创建日期</th>
					<th data-options="field:'updateTime',width:100">修改日期</th>
				</tr>
			</thead>
		</table>
		<div id="win" class="easyui-window" title="修改人员信息" style="width: 300px;
		height: 300px; padding: 10px; background: #fafafa;" data-options="closed:true,modal:true">
			<form id="ff" method="post">
				<div>
					<label for="id">ID:</label>
					<input id="id" class="easyui-validatebox" type="text" name="id" data-options="readonly:true" />
				</div>
				<div>
					<label for="userName">用户名:</label>
					<input id="userName" class="easyui-validatebox" type="text" name="userName" data-options="" />
				</div>
				<div>
					<label for="password">密码:</label>
					<input id="password" class="easyui-validatebox" type="text" name="password" data-options="" />
				</div>
				<div>
					<label for="createTime">创建时间:</label>
					<input id="createTime" class="easyui-datetimebox" type="text" name="createTime" data-options="" />
				</div>
				<div>
					<label for="updateTime">修改时间:</label>
					<input id="updateTime" class="easyui-datetimebox" type="text" name="updateTime" data-options="" />
				</div>
				<a id="btnSave" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="fnUpdate()">保存</a>
				<a id="btnClose" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="fnClose()">取消</a>
			</form>
		</div>
	</div>

</body>
<script>
	$(function () {
		$("#dg").datagrid({
			onDblClickRow:function (index,row) {
			    console.log(row);
				$("#win").window('open');
				$("#id").val(row.id);
				$("#userName").val(row.userName);
				$("#password").val(row.password);
                $('#createTime').datetimebox('setValue', row.createTime);
                $('#updateTime').datetimebox('setValue', row.updateTime);
            }
		});
    });
	function fnClose() {
        $("#win").window('close');
    }
    function fnUpdate() {
        $('#ff').form({
                url:'updateSave.do',
        success:function(data){
            var data=eval('('+data+")");
            if(data.flag){
                alert(data.msg+"!成功更新"+data.data+"条数据");
                $("#win").window('close');
                $("#dg").datagrid('load',{});
			}
        }
   		});
        $('#ff').submit();
    }
</script>
</html>