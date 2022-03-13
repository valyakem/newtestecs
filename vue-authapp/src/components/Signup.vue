<template>
  <main class="form-signin auth-wrapper">
  <form class="auth-inner" @submit.prevent="handleSubmit">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-group">
      <label>User Name</label>
      <input type="text" class="form-control" placeholder="Please enter user name" v-model="name">
    </div>

    <div class="form-group">
      <label>Email address</label>
        <input type="email" class="form-control" placeholder="Please enter email" v-model="email">
    </div>

    <div class="form-group"> 
       <label>Password</label>
      <input type="password" class="form-control"  placeholder="Please enter password" v-model="password">
    </div>

    <div class="form-group">
       <label>Confirm Password</label>
      <input type="password" class="form-control" placeholder="Please enter password" v-model="password_confirm">
    </div>

    <button class="w-100 btn btn-lg btn-primary btn-block" type="submit" @onClick="handleSubmit">Login</button>
  </form>
</main>
</template>

<script>
import axios from 'axios';

export default {
    name: 'Signup',
    data() {
      return {
        id: '',
        public_id: '',
        name: '',
        email: '',
        password: '',
        admin: false,
        password_confirm: ''
      }
    },
    methods: {
     async handleSubmit() {
        // const data = ;

         await axios.post('adduser', {
          id: null,
          public_id: null,
          name: this.name,
          email: this.email,
          password: this.password,
          admin: this.admin
        });

        //console.log(response);

        this.$router.push('/login')
          // axios.post('http://localhost:5000/adduser', data)


          // .then(
          //   res => {
          //     console.log(res)
          //   }
          // ).catch(
          //   err => {
          //     console.log(err)
          //   }
          // )
      }
    }
}
</script>

<style>

</style>