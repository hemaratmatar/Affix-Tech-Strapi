import api from './api';
const setAuthToken = token => {
  if (token) {
    api.defaults.headers.common['Authorization'] = `Bearer ${token}`;
    // console.log(a);
  } else {
    delete api.defaults.headers.common['Authorization'];
  }
};

export default setAuthToken;