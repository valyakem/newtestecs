import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'bootstrap/dist/css/bootstrap.css'
import './axios'


const app = createApp(App)

//use and mount in-built objects and components to the app here
app.use(router);
app.use(store);
app.mount('#app')

// createApp(App).use(store).use(router).mount('#app')
