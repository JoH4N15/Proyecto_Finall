import Vue from 'vue';
import VueRouter from 'vue-router';
import Registros from '@/views/Registros.vue'; 
import Vue from 'vue';
import App from './App.vue';
import router from './router';

Vue.use(VueRouter);

const routes = [
  {
    path: '/registros',
    name: 'Registros',
    component: Registros,
  },
  
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
});
Vue.config.productionTip = false;

new Vue({
  render: h => h(App),
  router, 
}).$mount('#app');