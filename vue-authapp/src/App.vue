<template>
  <div>
    <Navbar />
  <router-view />
   <!-- <Navbar :users="users"/>
  <router-view :users="users"/> -->
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue'
import axios from 'axios'
export default {
  name: 'App',
  components: {Navbar},

// data() {
//   return {
//     users: null,
//   }
// },
async created() {

 const response = await axios.get('users');

 //this.users = response.data["users"];
this.$store.dispatch('users', response.data['users'])

}
}
</script>
<style>
@import url('https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700,800');
* {
  box-sizing: border-box;
}
/* body {
  background: #1c8ef9 !important;
  display: flex;
  font-weight: 400;
  font-family: 'Fira Sans', sans-serif;
} */
h1, h2, h3, h4, h5, h6, label, span {
  font-weight: 500;
  font-family: 'Fira Sans', sans-serif;
}
body, html #app, #root, .auth-wrapper {
  width: 100%;
  height: 100%;
}
#app {
  text-align: center;
}
.navbar-light {
  background-color: #ffffff;
  box-shadow: 0px 14px 80px rgba(34, 35, 58, 0.2);
}
.auth-wrapper {
  display: flex;
  justify-content: center;
  flex-direction: column;
  text-align: left;
}
.auth-inner {
  width: 450px;
  margin: auto;
  background: #ffffff;
  padding: 0px 14px 80px rgba(34, 35, 58, 0.2);
  margin-top: 100px;
}
.auth-wrapper .form-control:focus {
  border-color: #167bff;
  box-shadow: none;
}
.auth-wrapper h3 {
  text-align: center;
  margin: 0;
  line-height: 1;
  padding-bottom: 20px;
}
.custom-control-label {
  font-weight: 400;
}
.forgot-password a {
  text-align: left;
  font-size: 13px;
  padding-top: 10px;
  color: #631111;
  margin: 0;
}
.forgot-password{
  color: #167bff;
}
</style>