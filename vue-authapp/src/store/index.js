import { createStore } from 'vuex'

export default createStore({
  state: {
    users: null
  },
  mutations: {
    users(state, users) {
      state.users = users;
  }
  },
  actions: {
    users(context, users) {
      context.commit('users', users);
  }
  },
  modules: {
  },
  getters: {
    users: (state) => {
        return state.users
    }
},
})
