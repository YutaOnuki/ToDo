import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import Index from '../components/index.vue'
import About from '../components/about.vue'
import Contact from '../components/contact.vue'

Vue.use(VueRouter)

export default VueRouter({
  mode: 'history',
  routes: [
    { path: '/', comment: Index},
    { path: '/about', comment: About},
    { path: '/contact', component: Contact},
  ],
})