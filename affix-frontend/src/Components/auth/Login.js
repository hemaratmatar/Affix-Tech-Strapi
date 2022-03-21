/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { useState } from "react";

//React Router Dom
import { Navigate, Link } from "react-router-dom";

//Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { login } from "../../Redux/action/auth";
import Alert from "./Alert";

const Login = ({ login, isAuthenticated }) => {
  const [formData, setFormData] = useState({
    identifier: "",
    password: "",
  });

  const { identifier, password } = formData;
  const onChange = (e) =>
    setFormData({ ...formData, [e.target.name]: e.target.value });

  const onSubmit = async (e) => {
    e.preventDefault();
    login(identifier, password);
    // console.log(formData.identifier);
  };
  // const navigate = useNavigate();

  if (isAuthenticated) {
    return <Navigate to="/home" />;
  }

  // const backendurl = "http://localhost:1337/admin";

  return (
    <div className="flex overflow-auto min-h-screen p-4 bg-gray-100  md:items-center lg:justify-center">
      <div className="flex flex-col w-full lg:overflow-hidden overflow-auto bg-white rounded-md shadow-lg max md:flex-row md:flex-1 lg:max-w-screen-xl">
        <div className="lg:flex lg:flex-1 lg:max-w-screen-xl p-4 py-6 text-white bg-red-400 md:w-80 md:flex-1 md:flex-shrink-0 md:flex md:flex-col md:items-center ">
          <div className="my-3 text-4xl font-bold tracking-wider text-center">
            <p>Affix Tech</p>
          </div>
          <p className="flex flex-col text-xl items-center justify-center mt-10 text-center">
            {/* <span>See You The Answer</span> */}
            <span>Now In Development v.0.2.2</span> 
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

          <p className="flex flex-col items-center justify-center text-white mt-10 text-center">
            <span>Create by Hemarat & Natthakit</span>
            {/* <a href="#" className="underline">
                Get Started!
              </a> */}
          </p>
          {/* <p className="mt-6 text-sm text-center text-gray-300">
              Read our{" "}
              <a href="#" className="underline">
                terms
              </a>{" "}
              and{" "}
              <a href="#" className="underline">
                conditions
              </a>
            </p> */}
        </div>
        <div className="items-center p-5 bg-white md:flex-1">
          <h3 className="my-4 text-2xl font-semibold text-gray-700">
            Account Login
          </h3>
          <form
            className="flex flex-col space-y-5"
            onSubmit={(e) => onSubmit(e)}
          >
            <div className="flex flex-col space-y-1">
              <label
                htmlFor="text"
                className="text-sm font-semibold text-gray-500"
              >
                Email
              </label>
              <input
                type="email"
                // id="email"
                name="identifier"
                value={identifier}
                onChange={(e) => onChange(e)}
                required
                autoFocus
                className="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-red-200"
              />
            </div>
            <div className="flex flex-col space-y-1">
              <label
                htmlFor="password"
                className="text-sm font-semibold text-gray-500"
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
            {/*  Check Box Remember
              <div className="flex items-center space-x-2">
              <input
                type="checkbox"
                id="remember"
                className="w-4 h-4 transition duration-300 rounded focus:ring-2 focus:ring-offset-0 focus:outline-none focus:ring-blue-200"
              />
              <label htmlFor="remember" className="text-sm font-semibold text-gray-500">Remember me</label>
            </div> */}
            <div className="flex items-center justify-end">
              <a
                href="#"
                className="text-sm text-red-400 hover:underline focus:text-blue-800"
              >
                Forgot Password?
              </a>
            </div>

            <button
              type="submit"
              className="w-full px-4 py-2 text-lg font-semibold text-white transition-colors duration-300 bg-red-400 rounded-md shadow hover:bg-red-400 focus:outline-none focus:ring-red-200 focus:ring-4"
            >
              Log in
            </button>

            <Link to="/signup">
              <button className="w-full px-4 py-2 text-lg font-semibold text-white transition-colors duration-300 bg-red-400 rounded-md shadow hover:bg-red-400 focus:outline-none focus:ring-red-200 focus:ring-4">
                Sign Up
              </button>
            </Link>
            {/*Google Authen with SSO */}
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
            {/* <p className="flex flex-col items-center justify-center text-sm  mt-10 text-center">
              <a href={backendurl} className="">
                Go To Admin
              </a>
            </p> */}
            <Alert />
            {/* Alert Sucessfuly */}
            {/*<div className="text-white px-6 py-4 border-0 rounded relative mb-4 bg-emerald-500">
              <span className="text-xl inline-block mr-5 align-middle">
                
              </span>
              <span className="inline-block align-middle mr-8">
                <b className="capitalize">Login is Sucessfuly</b>
              </span>
          </div>*/}
            {/* Alert Error */}
            {/*<div className="text-white px-6 py-4 border-0 rounded relative mb-4 bg-red-500">
              <span className="text-xl inline-block mr-5 align-middle">
                <i className="fas fa-bell" />
              </span>
              <span className="inline-block align-middle mr-8">
                <b className="capitalize">red!</b> This is a red alert - check
                it out!
              </span>
              {/*<button className="absolute bg-transparent text-2xl font-semibold leading-none right-0 top-0 mt-4 mr-6 outline-none focus:outline-none">
                <span>×</span>
            </button>
            </div>*/}
          </form>
        </div>
      </div>
    </div>
  );
};

Login.propTypes = {
  login: PropTypes.func.isRequired,
  isAuthenticated: PropTypes.bool,
};

const mapStateToProps = (state) => ({
  isAuthenticated: state.auth.isAuthenticated,
});

export default connect(mapStateToProps, { login })(Login);
// export default Login
