<template>
	<div>
		<div class="forget_view">
			<el-form :model="forgetForm" class="forget_box">
				<div class="forget_title">学生管理系统{{pageType==1?'找回密码':pageType==2?'输入密保':'重置密码'}}</div>
				<div class="tab_view">
					<div class="tab" :class="pageType==1?'tab_active':''">找回密码</div>
					<div class="tab" :class="pageType==2?'tab_active tab_active1':''">输入密保</div>
					<div class="tab" :class="pageType==3?'tab_active tab_active1 tab_active2':''">重置密码</div>
				</div>
				<div class="list_item" v-if="pageType==1">
					<div class="item_label">账号：</div>
					<el-input class="list_inp" v-model="forgetForm.username" placeholder="请输入账号" />
				</div>
				<div class="list_item" v-if="pageType==2">
					<div class="item_label">密保问题：</div>
					<el-input class="list_inp" v-model="userForm.pquestion" placeholder="请输入密保问题" />
				</div>
				<div class="list_item" v-if="pageType==2">
					<div class="item_label">密保答案：</div>
					<el-input class="list_inp" v-model="forgetForm.myanswer" placeholder="请输入密保答案" />
				</div>
				<div class="list_item" v-if="pageType==3">
					<div class="item_label">密码：</div>
					<el-input class="list_inp" v-model="forgetForm.mima" type="password" placeholder="请输入密码" />
				</div>
				<div class="list_item" v-if="pageType==3">
					<div class="item_label">确认密码：</div>
					<el-input class="list_inp" v-model="forgetForm.mima2" type="password" placeholder="请输入确认密码" />
				</div>
				<div class="list_btn">
					<el-button v-if="pageType==1" type="success" @click="getSecurity">获取密保</el-button>
					<el-button v-if="pageType==2" type="primary" @click="validateSecurity">确认密保</el-button>
					<el-button v-if="pageType==3" type="warning" @click="updatePassword">重置密码</el-button>
					<div class="r-login" @click="close">已有账号，直接登录</div>
				</div>
			</el-form>
		</div>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const pageType = ref(1)
	const forgetForm = ref({})
	const userForm = ref({})
    //获取密保问题
    const getSecurity=()=>{
            forgetForm.value.role = 'jiaoshi'
		if(!forgetForm.value.role) {
		    context?.$toolUtil.message('请选择角色','error');
		    return false
		}
		if(!forgetForm.value.username){
			context?.$toolUtil.message('请输入账号','error');
		    return false
		}
		context?.$http({
			url:forgetForm.value.role + `/security?username=${forgetForm.value.username}`,
			method:'get',
		}).then(res=>{
			if(res.data.data){
				userForm.value = res.data.data
				pageType.value = 2
			}else{
				context?.$toolUtil.message('未获取到用户信息','error');
			}
		})
	}
	//验证密保问题
	const validateSecurity=()=>{
		if(userForm.value.panswer != forgetForm.value.myanswer){
			context?.$toolUtil.message('答案输入不正确','error');
			return false
		}
		context?.$toolUtil.message('答案正确','success',()=>{
			pageType.value = 3
		})
	}
	const updatePassword=()=>{
		if(forgetForm.value.mima!=forgetForm.value.mima2){
			context?.$toolUtil.message('两次密码输入不一致','error')
			return false
		}
		userForm.value.mima = forgetForm.value.mima
		userForm.value.password = forgetForm.value.mima
		context?.$http({
			url:forgetForm.value.role + `/update`,
			method:'post',
			data:userForm.value
		}).then(res=>{
			context?.$toolUtil.message('修改密码成功','success',obj=>{
				close()
			});
		})
	}
	//返回登录
	const close = () => {
		context?.$router.push({
			path: "/login"
		});
	}
</script>

<style lang="scss" scoped>
	.forget_view {
		background-repeat: no-repeat;
		flex-direction: column;
		background-size: cover;
		background: url(http://clfile.zggen.cn/20231004/9712345d93bd40738be9e31e19e7c651.png);
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		background-position: center center;
		// 表单盒子
		.forget_box {
			border-radius: 50px;
			box-shadow: 0 4px 6px rgba(0,0,0,.5);
			padding: 30px 20px;
			background: #fff;
			display: flex;
			width: 70%;
			justify-content: center;
			flex-wrap: wrap;
			// 标题
			.forget_title {
				padding: 0 0 30px;
				color: #000;
				font-weight: bold;
				width: 100%;
				font-size: 30px;
				text-align: center;
			}
			// tab
			// 盒子
			.tab_view {
				padding: 0 0 50px;
				display: flex;
				width: 100%;
				align-items: center;
				// 默认样式
				.tab {
					padding: 16px 0;
					width: calc(100% / 3);
					font-size: 16px;
					box-sizing: border-box;
					text-align: center;
				}
				// 选中样式一
				.tab_active {
					color: #fff;
					background: #000;
				}
				// 选中样式二
				.tab_active1 {
					color: #fff;
					background: #000;
				}
				// 选中样式三
				.tab_active2 {
					color: #fff;
					background: #000;
					font-size: 16px;
				}
			}
			// item
			.list_item {
				margin: 10px 0;
				display: flex;
				width: 30%;
				justify-content: flex-start;
				align-items: center;
				// label
				.item_label {
					display: none;
					width: 120px;
					font-size: 14px;
					box-sizing: border-box;
					text-align: right;
				}
				// 输入框
				:deep(.list_inp) {
					border: 0px solid #ddd;
					box-shadow: 0 0 6px rgba(0, 0, 0, 0.3);
					padding: 0 10px;
					width: 90%;
					line-height: 40px;
					box-sizing: border-box;
					height: 40px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
			}
			// 按钮盒子
			.list_btn {
				margin: 20px 0 0;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				flex-wrap: wrap;
				// 获取密保
				:deep(.el-button--success) {
					border: 0;
					cursor: pointer;
					border-radius: 0;
					padding: 0 24px;
					margin: 0 10px 0 0;
					outline: none;
					color: #fff;
					background: rgba(24,140,145,1);
					font-weight: bold;
					width: 200px;
					font-size: 18px;
					height: 50px;
				}
				// 获取密保悬浮
				:deep(.el-button--success:hover) {
					background: rgba(24,140,145,.5);
				}
				// 确认密保
				:deep(.el-button--primary) {
					border: 0;
					cursor: pointer;
					border-radius: 0;
					padding: 0 24px;
					margin: 0 10px 0 0;
					outline: none;
					color: #fff;
					background: rgba(24,140,145,1);
					font-weight: bold;
					width: 200px;
					font-size: 18px;
					height: 50px;
				}
				// 确认密保悬浮
				:deep(.el-button--primary:hover) {
					background: rgba(24,140,145,0.5);
				}
				// 重置密码
				:deep(.el-button--warning) {
					border: 0;
					cursor: pointer;
					border-radius: 0;
					padding: 0 24px;
					margin: 0 10px 0 0;
					outline: none;
					color: #fff;
					background: rgba(24,140,145,1);
					font-weight: bold;
					width: 200px;
					font-size: 18px;
					height: 50px;
				}
				// 重置密码悬浮
				:deep(.el-button--warning:hover) {
				}
				.r-login {
					cursor: pointer;
					padding: 10px 0 0;
					color: #999;
					width: 100%;
					font-size: 12px;
					text-align: center;
				}
			}
		}
	}

	
</style>
