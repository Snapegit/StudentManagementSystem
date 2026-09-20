	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import xueshengxuanke from '@/views/xueshengxuanke/list'
	import qingjiashenqing from '@/views/qingjiashenqing/list'
	import xuesheng from '@/views/xuesheng/list'
	import xuanxiukecheng from '@/views/xuanxiukecheng/list'
	import pingjiaoxinxi from '@/views/pingjiaoxinxi/list'
	import jiaoshi from '@/views/jiaoshi/list'
	import bixiukecheng from '@/views/bixiukecheng/list'
	import users from '@/views/users/list'
	import xuanxiukechengji from '@/views/xuanxiukechengji/list'
	import kaoqinxinxi from '@/views/kaoqinxinxi/list'
	import bixiukechengji from '@/views/bixiukechengji/list'
	import banji from '@/views/banji/list'
	import jiaoshiCenter from '@/views/jiaoshi/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/jiaoshiCenter',
			name: '教师个人中心',
			component: jiaoshiCenter
		}
		,{
			path: '/news',
			name: '公告信息',
			component: news
		}
		,{
			path: '/xueshengxuanke',
			name: '学生选课',
			component: xueshengxuanke
		}
		,{
			path: '/qingjiashenqing',
			name: '请假申请',
			component: qingjiashenqing
		}
		,{
			path: '/xuesheng',
			name: '学生',
			component: xuesheng
		}
		,{
			path: '/xuanxiukecheng',
			name: '选修课程',
			component: xuanxiukecheng
		}
		,{
			path: '/pingjiaoxinxi',
			name: '评教信息',
			component: pingjiaoxinxi
		}
		,{
			path: '/jiaoshi',
			name: '教师',
			component: jiaoshi
		}
		,{
			path: '/bixiukecheng',
			name: '必修课程',
			component: bixiukecheng
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/xuanxiukechengji',
			name: '选修课成绩',
			component: xuanxiukechengji
		}
		,{
			path: '/kaoqinxinxi',
			name: '考勤信息',
			component: kaoqinxinxi
		}
		,{
			path: '/bixiukechengji',
			name: '必修课成绩',
			component: bixiukechengji
		}
		,{
			path: '/banji',
			name: '班级',
			component: banji
		}
		]
	},
	{
		path: '/forget',
		name: 'forget',
		component: () => import('../views/forget.vue')
	}
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
