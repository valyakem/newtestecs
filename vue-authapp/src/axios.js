import axios from 'axios';

axios.defaults.baseURL = 'http://localhost:5000/';
axios.defaults.headers.common['Authorization'] = 'Bearer ' + localStorage.getItem('token');
axios.defaults.headers.common['x-access-token'] = localStorage.getItem('token');
//axios.defaults.headers.post['Content-Type'] = 'application/json';