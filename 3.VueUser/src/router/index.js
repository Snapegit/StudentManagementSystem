import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import xueshengList from '@/views/pages/xuesheng/list'
import xueshengDetail from '@/views/pages/xuesheng/formModel'
import xueshengAdd from '@/views/pages/xuesheng/formAdd'
import xueshengCenter from '@/views/pages/xuesheng/center'
import jiaoshiList from '@/views/pages/jiaoshi/list'
import jiaoshiDetail from '@/views/pages/jiaoshi/formModel'
import jiaoshiAdd from '@/views/pages/jiaoshi/formAdd'
import xuanxiukechengList from '@/views/pages/xuanxiukecheng/list'
import xuanxiukechengDetail from '@/views/pages/xuanxiukecheng/formModel'
import xuanxiukechengAdd from '@/views/pages/xuanxiukecheng/formAdd'
import storeupList from '@/views/pages/storeup/list'
import xueshengxuankeList from '@/views/pages/xueshengxuanke/list'
import xueshengxuankeDetail from '@/views/pages/xueshengxuanke/formModel'
import xueshengxuankeAdd from '@/views/pages/xueshengxuanke/formAdd'
import xuanxiukechengjiList from '@/views/pages/xuanxiukechengji/list'
import xuanxiukechengjiDetail from '@/views/pages/xuanxiukechengji/formModel'
import xuanxiukechengjiAdd from '@/views/pages/xuanxiukechengji/formAdd'
import banjiList from '@/views/pages/banji/list'
import banjiDetail from '@/views/pages/banji/formModel'
import banjiAdd from '@/views/pages/banji/formAdd'
import bixiukechengList from '@/views/pages/bixiukecheng/list'
import bixiukechengDetail from '@/views/pages/bixiukecheng/formModel'
import bixiukechengAdd from '@/views/pages/bixiukecheng/formAdd'
import bixiukechengjiList from '@/views/pages/bixiukechengji/list'
import bixiukechengjiDetail from '@/views/pages/bixiukechengji/formModel'
import bixiukechengjiAdd from '@/views/pages/bixiukechengji/formAdd'
import newsList from '@/views/pages/news/list'
import kaoqinxinxiList from '@/views/pages/kaoqinxinxi/list'
import kaoqinxinxiDetail from '@/views/pages/kaoqinxinxi/formModel'
import kaoqinxinxiAdd from '@/views/pages/kaoqinxinxi/formAdd'
import qingjiashenqingList from '@/views/pages/qingjiashenqing/list'
import qingjiashenqingDetail from '@/views/pages/qingjiashenqing/formModel'
import qingjiashenqingAdd from '@/views/pages/qingjiashenqing/formAdd'
import pingjiaoxinxiList from '@/views/pages/pingjiaoxinxi/list'
import pingjiaoxinxiDetail from '@/views/pages/pingjiaoxinxi/formModel'
import pingjiaoxinxiAdd from '@/views/pages/pingjiaoxinxi/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'xueshengList',
			component: xueshengList
		}, {
			path: 'xueshengDetail',
			component: xueshengDetail
		}, {
			path: 'xueshengAdd',
			component: xueshengAdd
		}
		, {
			path: 'xueshengCenter',
			component: xueshengCenter
		}
		, {
			path: 'jiaoshiList',
			component: jiaoshiList
		}, {
			path: 'jiaoshiDetail',
			component: jiaoshiDetail
		}, {
			path: 'jiaoshiAdd',
			component: jiaoshiAdd
		}
		, {
			path: 'xuanxiukechengList',
			component: xuanxiukechengList
		}, {
			path: 'xuanxiukechengDetail',
			component: xuanxiukechengDetail
		}, {
			path: 'xuanxiukechengAdd',
			component: xuanxiukechengAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'xueshengxuankeList',
			component: xueshengxuankeList
		}, {
			path: 'xueshengxuankeDetail',
			component: xueshengxuankeDetail
		}, {
			path: 'xueshengxuankeAdd',
			component: xueshengxuankeAdd
		}
		, {
			path: 'xuanxiukechengjiList',
			component: xuanxiukechengjiList
		}, {
			path: 'xuanxiukechengjiDetail',
			component: xuanxiukechengjiDetail
		}, {
			path: 'xuanxiukechengjiAdd',
			component: xuanxiukechengjiAdd
		}
		, {
			path: 'banjiList',
			component: banjiList
		}, {
			path: 'banjiDetail',
			component: banjiDetail
		}, {
			path: 'banjiAdd',
			component: banjiAdd
		}
		, {
			path: 'bixiukechengList',
			component: bixiukechengList
		}, {
			path: 'bixiukechengDetail',
			component: bixiukechengDetail
		}, {
			path: 'bixiukechengAdd',
			component: bixiukechengAdd
		}
		, {
			path: 'bixiukechengjiList',
			component: bixiukechengjiList
		}, {
			path: 'bixiukechengjiDetail',
			component: bixiukechengjiDetail
		}, {
			path: 'bixiukechengjiAdd',
			component: bixiukechengjiAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'kaoqinxinxiList',
			component: kaoqinxinxiList
		}, {
			path: 'kaoqinxinxiDetail',
			component: kaoqinxinxiDetail
		}, {
			path: 'kaoqinxinxiAdd',
			component: kaoqinxinxiAdd
		}
		, {
			path: 'qingjiashenqingList',
			component: qingjiashenqingList
		}, {
			path: 'qingjiashenqingDetail',
			component: qingjiashenqingDetail
		}, {
			path: 'qingjiashenqingAdd',
			component: qingjiashenqingAdd
		}
		, {
			path: 'pingjiaoxinxiList',
			component: pingjiaoxinxiList
		}, {
			path: 'pingjiaoxinxiDetail',
			component: pingjiaoxinxiDetail
		}, {
			path: 'pingjiaoxinxiAdd',
			component: pingjiaoxinxiAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/forget',
		name: 'forget',
		component: () => import('../views/pages/forget.vue')
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
