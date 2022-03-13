<template>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <router-link class="navbar-brand text-style" to="/">Flask and Vue 3</router-link>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto" v-if="!users">
        <li class="nav-item mx-2">
          <router-link class="btn btn-primary" aria-current="page" to="/login">Login</router-link>
        </li>
     
        <li class="nav-item">
          <router-link class="btn btn-success" to="/signup">Sign up</router-link>
        </li>
      </ul>
        <ul class="navbar-nav ms-auto" v-if="users">
        <li class="nav-item mx-2">
          <a href="javascript:void(0)"  @click="handleLogout"   class="btn btn-primary"  to="/logout">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</template>
<script>
import { mapGetters } from 'vuex'
export default {
name: 'Navbar',
// props: ['users'],
methods: {
  handleLogout() {
    localStorage.removeItem('token');
    this.$store.dispatch('users', null);
    this.$router.push({name: 'Home'});
  }
},
computed: {
  ...mapGetters(['users'])
}
}
</script>

<style>
.text-style {
    font-size: 30px !important;
    font-family: Arial !important;
    color: brown !important;
}
</style>