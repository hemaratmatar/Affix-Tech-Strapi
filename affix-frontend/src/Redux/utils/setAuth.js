import axios from 'axios'
const setAuth = cookie => {
  if (cookie) {
    axios.defaults.headers.common["Cookie"] = cookie;
  } else {
    delete axios.defaults.headers.common["Cookie"];
  }
};

export default setAuth;
