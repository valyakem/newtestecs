<template>
  <main class="form-signin auth-wrapper">
  <form class="auth-inner" @submit.prevent="handleLogin">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-group">
      <label>Email address</label>
      <input type="text" class="form-control"  placeholder="Please enter email" v-model="username">
    </div>
    <div class="form-group">
      <label>Password</label>
      <input type="password" class="form-control" placeholder="Please enter password" v-model="password">
    </div>

    <button class="w-100 btn btn-lg btn-primary btn-block" type="submit">Login</button>
    <p class="forgot-password text-right">
      <router-link to="forgot">Forgot password</router-link>
    </p>
  </form>
</main>
</template>

<script>
import axios from 'axios'
export default {
    name: 'Login',
    data() {
      return {
        username: '',
        password: ''
      }
    },
    methods: {
      async handleLogin() {
        const response = await axios({
        method: 'post',
        url: 'login',
         headers: {
         'Access-Control-Allow-Origin': '*',
         'Access-Control-Allow-Methods': 'POST',
         'Access-Control-Allow-Headers': 'Origin, Authorization, Accept, Content-Type"',
         'Content-Type':'application/json'
         },
         auth: {
          username: this.username,
          password: this.password
         }
      });
        localStorage.setItem('token', response.data.token);
        this.$store.dispatch('users', response.data.user);
        this.$router.push({name: 'Home'});
        console.log(response);
       
      
      }
      
    }
}
</script>

<style>

</style>