/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { useState } from "react";

//React Router Dom
import { Navigate , Link } from "react-router-dom";
import Alert from "./Alert";



// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { signup } from "../../Redux/action/auth";
import { setAlert } from "../../Redux/action/alert";

const Signup = ({setAlert,signup,isAuthenticated,loading}) => {
  const [signupData, setsignupData] = useState({
    username: "",
    email: "",
    password: "",
    passwordCheck: "",
    role: 1,
  });
 // https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg

 const [profileData, setprofileData] = useState({
  data:{
    fullname:""
}
});

const onProfilechange = (e) =>{
  setprofileData({ data: { ...profileData.data, [e.target.name]: e.target.value } });
}

  const { email, password,role, passwordCheck } = signupData;
  // if (signupData.ImageUrl === "" || null) {
  //   const image = normalize(
  //     gravatar.url(email, {
  //       s: '200',
  //       r: 'pg',
  //       d: 'mm'
  //     }),
  //     { forceHttps: true }
  //   );
  //   setsignupData({...signupData,ImageUrl:image})
  // }
  
  const onChange = (e) =>{
    setsignupData({ ...signupData,  [e.target.name]: e.target.value })};
  
console.log(signupData);
console.log(profileData);

  const onSubmit = async (e) => {
    e.preventDefault();
    if (password !== passwordCheck ) {
      setAlert('Passwords do not match', 'danger');
    } else {
      // setsignupData({ confirmed: true });
      // signup({username, email, password,confirmed,role,ImageUrl, passwordCheck})
      signup(profileData, email, password,role);
    }
  };

  if (isAuthenticated) {
    return  <Navigate to="/home" />;
  }

  return (
    <div className="flex overflow-auto min-h-screen p-4 bg-gray-100  md:items-center lg:justify-center">
      <div className="  w-full lg:overflow-hidden overflow-auto bg-white rounded-md shadow-lg   lg:max-w-screen-md">
        {/*<div className="lg:flex lg:flex-1 lg:max-w-screen-xl p-4 py-6 text-white bg-red-400 md:w-80 md:flex-1 md:flex-shrink-0 md:flex md:flex-col md:items-center ">
           <div className="my-3 text-4xl font-bold tracking-wider text-center">
            <p>Affix Tech</p>
          </div>
          <p className="flex flex-col text-xl items-center justify-center mt-10 text-center">
            <span>See You The Answer</span>
          </p>

          <div className=" my-8 p-4 max-w-sm mx-auto bg-white rounded-xl shadow-md flex items-center space-x-4 md:justify-center">
            <div className="flex-shrink-0">
              <img
                className="h-12 w-12"
                src="https://avatars.dicebear.com/api/adventurer/Oven.svg"
                alt="ChitChat Logo"
              />
            </div>
            <div>
              <div className="text-xl font-medium text-black">
                Title Recommend
              </div>
              <p className="text-gray-500  break-words">Detail Recommend</p>
            </div>
          </div>
          <div className="my-8 p-4 max-w-sm mx-auto bg-white rounded-xl shadow-md flex items-center space-x-4">
            <div className="flex-shrink-0">
              <img
                className="h-12 w-12"
                src="https://avatars.dicebear.com/api/adventurer/c.svg"
                alt="ChitChat Logo"
              />
            </div>
            <div>
              <div className="text-xl font-medium text-black">
                Title Recommend
              </div>
              <p className="text-gray-500 break-all">Detail Recommend</p>
            </div>
          </div>

          <p className="flex flex-col items-center justify-center text-gray-300 mt-10 text-center">
            <span>Create by Hemarat & Natthakit</span>
          </p>

        </div> */}
        <div className="items-center p-5 bg-red-400 h-full ">
          <div className="my-3 text-4xl font-bold tracking-wider text-white text-center">
            <p>Affix Tech</p>
          </div>
          <h3 className="my-4 text-2xl font-semibold text-white">Register</h3>
          <form  className="flex flex-col space-y-5" onSubmit={(e) => onSubmit(e)}>
            <div className="flex flex-col space-y-1">
              <label
                htmlFor="fullname"
                className="text-sm font-semibold text-white"
              >
                Full Name
              </label>
              <input
                type="fullname"
                id="fullname"
                name="fullname"
                defaultValue={profileData.data.fullname}
                onChange={(e) => onProfilechange(e)}
                required
                autoFocus
                className="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-red-200"
              />
            </div>
            <div className="flex flex-col space-y-1">
              <label
                htmlFor="email"
                className="text-sm font-semibold text-white"
              >
                Email
              </label>
              <input
                type="email"
                id="email"
                name="email"
                value={email}
                onChange={(e) => onChange(e)}
                required
                className="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-red-200"
              />
            </div>
            <div className="flex flex-col space-y-1">
              <label
                htmlFor="password"
                className="text-sm font-semibold text-white"
              >
                Password
              </label>
              <input
                type="password"
                id="password"
                name="password"
                value={password}
                onChange={(e) => onChange(e)}
                required
                className="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-red-200"
              />
            </div>
            <div className="flex flex-col space-y-1">
              <div className="flex items-center justify-between">
                <label
                  htmlFor="passwordCheck"
                  className="text-sm font-semibold text-white"
                >
                  Confirm Password
                </label>
              </div>
              <input
                type="password"
                id="passwordCheck"
                name="passwordCheck"
                value={passwordCheck}
                onChange={(e) => onChange(e)}
                required
                className="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-red-200"
              />
              {/* <a
                    href="#"
                    className="text-sm text-red-400 hover:underline focus:text-blue-800"
                    >
                    Forgot Password?
                    </a> */}
            </div>
            {/*  Check Box Remember
                <div className="flex items-center space-x-2">
                <input
                    type="checkbox"
                    id="remember"
                    className="w-4 h-4 transition duration-300 rounded focus:ring-2 focus:ring-offset-0 focus:outline-none focus:ring-blue-200"
                />
                <label htmlFor="remember" className="text-sm font-semibold text-gray-500">Remember me</label>
                </div> */}
            <div className="py-4">
              <button
                type="submit"
                className="w-full px-4 py-2 text-lg font-semibold text-red-400 transition-colors duration-300 bg-white rounded-md shadow hover:bg-red-300 hover:text-white focus:outline-none focus:ring-red-200 focus:ring-4"
              >
                Sign Up
              </button>
            </div>
            <div>
              <p className=" text-white text-center">
                <Link to="/">Go back To Login Page</Link>
              </p>
              {/* <button className="w-full px-4 py-2 text-lg font-semibold text-white transition-colors duration-300 bg-red-400 rounded-md shadow hover:bg-red-400 focus:outline-none focus:ring-red-200 focus:ring-4">
                    Log in
                    </button> */}
            </div>
            <Alert/>
            {/* <div className="flex flex-col space-y-5">
                    <span className="flex items-center justify-center space-x-2">
                    <span className="h-px bg-gray-400 w-14"></span>
                    <span className="font-normal text-gray-500">or login with</span>
                    <span className="h-px bg-gray-400 w-14"></span>
                    </span>
                    <div className="flex flex-col space-y-4">
                    <a
                        href="http://localhost:8080/api/auth/google"
                        className="flex items-center justify-center px-4 py-2 space-x-2 transition-colors duration-300 border border-blue-400 rounded-full group hover:bg-red-400 focus:outline-none"
                    >
                        <span>
                        <img
                            className=" h-5 cursor-pointer"
                            src="https://i.imgur.com/arC60SB.png"
                            alt=""
                        />
                        </span>
                        <span className="text-sm font-medium text-gray-800 group-hover:text-white">
                        Google
                        </span>
                    </a>
                    </div>
                </div> */}
          </form>
        </div>
      </div>
    </div>
  );
};

Signup.propTypes = {
  setAlert: PropTypes.func.isRequired,
  signup: PropTypes.func.isRequired,
  isAuthenticated: PropTypes.bool,
};

const mapStateToProps = (state) => ({
  isAuthenticated: state.auth.isAuthenticated,
});

export default  connect(mapStateToProps, { signup,setAlert })(Signup);

// export default Signup;
