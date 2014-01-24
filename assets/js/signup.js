$(document).ready(function(){
	//生日
	var myDate = new Date();
	$("#dateSelector").DateSelector({
		ctlYearId: 'idYear',
		ctlMonthId: 'idMonth',
		ctlDayId: 'idDay',
		defYear: myDate.getFullYear(),
		defMonth: (myDate.getMonth()+1),
		defDay: myDate.getDate(),
		minYear: 1900,
		maxYear: (myDate.getFullYear()+1)
	});

	//地区
	$.cxSelect.defaults.url="assets/js/city.min.js";
	$("#city").cxSelect({
		selects:["province","city","area"],
		nodata:"none"
	});
	// 获取焦点时清空输框默认value
	$('[name=account]').focus(function(){
		if($(this).val()=='请输入您的常用邮箱')	$(this).val('');
	})
	// 表单提交事件
	$('#submit').on('click',function(){
		$('form').submit();
	})
	// 表单验证
	$('form').validate({
		debug:true,
		onkeyup:false,
		submitHandler:function(form){
			alert('success');
		},
		rules:{
			account:{
				required:true,
				email:true,
				remote: {
				    url: "?c=user&m=check_email",	//后台处理程序
				    type: "post",               	//数据发送方式 
				    data: {                     	//要传递的数据
				    	email: function() {
				    		return $("[name=email]").val();
				    	}
				    }
				}
			},
			passwd:{
				required:true,
				rangelength:[6,16]
			},
			username:{
				required:true,
				rangelength:[4,24],
				userNameFormat:true,
				remote: {
				    url: "?c=user&m=check_user",	//后台处理程序
				    type: "post",               	//数据发送方式 
				    data: {                     	//要传递的数据
				    	username: function() {
				    		return $("[name=username]").val();
				    	}
				    }
				}
			},
			code:{
				required:true,
				remote: {
					    url: "?c=user&m=check_code",	//后台处理程序
					    type: "post",               	//数据发送方式 
					    data: {                     	//要传递的数据
					    	code: function() {
					    		return $("[name=code]").val();
					    	}
					    }
					}
				}
			},
			messages:{
				account:{
					required:'请输入邮箱地址',
					email:'请输入正确的邮箱地址',
					remote:'邮箱地址已经存在，请更换。'
				},
				passwd:{
					required:'请输入密码',
					rangelength:'请输入6-16位数字、字母或常用符号，字母区分大小写'
				},
				username:{
					required:'请输入昵称',
					rangelength:'请输入4-24位字符：支持中文、英文、数字、“-”、“_”',
					remote:'用户名已经存在，请更换。'
				},
				code:{
					required:'请输入验证码',
					remote:'验证码输入有误'
				}
			},
		})
})