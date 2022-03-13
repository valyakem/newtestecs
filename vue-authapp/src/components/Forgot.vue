<template>
<form class="auth-inner" @submit.prevent="handlePReset">
    <h3>Forgot password</h3>

    <div class="form-group ">
        <label>Email</label>
        <input type="email" class="form-control" placeholder="Email" v-model="email">
    </div>

    <button class="btn btn-primary btn-block">Submit</button>
</form>
</template>

<script>
import axios from 'axios'

export default {
    name: 'Forgot',
    data() {
        return {
            email: ''
        }
    },
    methods: {
        async handlePReset() {
            const response = await axios.post('forgot', {
                email: this.email
            });
            console.log(response);
        }
    }
}
</script>

<style>

</style>