<template>
<div>
  <div v-if="users">
    <div v-for="users in users" :key="users.id">
      <h4>Email:</h4> {{users.email}} <br />
      <h4>public ID:</h4> {{users.public_id}} <br />
      <h4>Password:</h4>  {{users.password}} <br />
      <h4>Admin:</h4>  {{users.admin}}
    </div>   
</div>
<div v-else>You are not sign in. Please sign in to access this page</div>
</div>
</template>

<script>
import {mapGetters} from 'vuex'
// import axios from 'axios'
export default {
 name: 'Home',
 computed: {
   ...mapGetters(['users'])
 }
//  props: ['users']
// data() {
//   return {
//     users: null,
//   }
// },
// async created() {

//  const response = await axios.get('users');

//  this.users = response.data["users"];
// }
}
</script>

<style>

</style>