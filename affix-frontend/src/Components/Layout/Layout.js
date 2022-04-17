import React, { Fragment } from "react";

//Component Page
import { Link ,Outlet} from "react-router-dom";
// import PrivateRouter from "../router/PrivateRouter";
// import Home from "../Home/Home";
// import Mainpost from "../Post/Mainpost";
// import Addpost from "../Post/Addpost";

//Redux Action
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { logout } from "../../Redux/action/auth";

//Menu Components
import { Disclosure, Menu, Transition } from "@headlessui/react";
import { 
  // BellIcon, 
  MenuIcon, 
  XIcon 
} from "@heroicons/react/outline";


//Menu Link
const navigation = [
  { name: "Home", to: "home", current: false },
  { name: "Problem", to: "posts", current: false },
  { name: "Review", to: "reviews", current: false },
  //   { name: "Calendar", to: "#", current: false },
  // { name: "Chat", to: "chats", current: false },
];

function Filt(...classes) {
  return classes.filter(Boolean).join(" ");
}

const Layout = ({ logout, auth: { user } }) => {
  //Check user data from redux
  // console.log(user);
  const {username,email,profile} = user;

  return (
    <Fragment>
      {/* <Layout/> */}
      {/* <button onClick={logout}>Logout</button> */}

      {/*
            This example requires updating your template:

            ```
            <html className="h-full bg-gray-100">
            <body className="h-full">
            ```
        */}
      <div className="min-h-screen">
        {/* bg-gray-900 */}
        <Disclosure as="nav" className="bg-red-400">
          {({ open }) => (
            <>
              <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div className="flex items-center justify-between h-16">
                  {/* Menu Left */}
                  <div className="flex items-center">
                    <div className="flex-shrink-0">
                      {/* Logo Replace */}
                      {/* <img
                            className="h-8 w-8"
                            src="https://tailwindui.com/img/logos/workflow-mark-indigo-500.svg"
                            alt="Workflow"
                        /> */}
                    </div>
                    <div className="hidden md:block">
                      <div className="ml-10 flex items-baseline space-x-4">
                        {navigation.map((item,id) => (
                          <Link
                            key={id}
                            to={item.to}
                            className={Filt(
                              item.current
                                ? "bg-gray-900 text-white"
                                : "text-white hover:bg-red-300 hover:text-white",
                              "px-3 py-2 rounded-md text-sm font-medium"
                            )}
                            aria-current={item.current ? "page" : undefined}
                          >
                            {item.name}
                          </Link>
                        ))}
                      </div>
                    </div>
                  </div>
                  <div className="hidden md:block">
                    <div className="ml-4 flex items-center md:ml-6">
                      {/* Profile dropdown */}
                      <p className="text-sm text-white mr-3">{profile.fullname}</p>

                      {/* Notification button */}
                      {/* <button
                        type="button"
                        className="bg-red-300 p-1 rounded-full text-white hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-red-300 focus:ring-white"
                      >
                        <span className="sr-only">View notifications</span>
                        <BellIcon className="h-6 w-6" aria-hidden="true" />
                      </button> */}

                      <Menu as="div" className="ml-3 relative">
                        <div>
                          <Menu.Button className="max-w-xs bg-red-400 rounded-full flex items-center text-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-red-300 focus:ring-white">
                            <span className="sr-only">Open user menu</span>
                            <img
                              className="h-8 w-8 rounded-full"
                              src={user.profile.imageUrl}
                              alt=""
                            />
                          </Menu.Button>
                        </div>
                        <Transition
                          as={Fragment}
                          enter="transition ease-out duration-100"
                          enterFrom="transform opacity-0 scale-95"
                          enterTo="transform opacity-100 scale-100"
                          leave="transition ease-in duration-75"
                          leaveFrom="transform opacity-100 scale-100"
                          leaveTo="transform opacity-0 scale-95"
                        >
                          <Menu.Items className="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg py-1 bg-white ring-1 ring-black ring-opacity-5 focus:outline-none">
                            {/* {userNavigation.map((item) => (
                                <Menu.Item key={item.name}>
                                    {({ active }) => (
                                    <Link
                                        to={item.to}
                                        className={Filt(
                                        active ? "bg-gray-100" : "",
                                        "block px-4 py-2 text-sm text-gray-700"
                                        )}
                                    >
                                        {item.name}
                                    </Link>
                                    )}
                                </Menu.Item>
                                // <Menu.Item>{item.name}</Menu.Item>
                                ))} */}

                            <Menu.Item>
                              <Link
                                to="profile"
                                className="block px-4 py-2 text-sm text-gray-700"
                              >
                                Your Profile
                              </Link>
                            </Menu.Item>
                            <Menu.Item>
                              <button
                                onClick={logout}
                                className="block px-4 py-2 text-sm text-gray-700"
                              >
                                {/* <Link to="/"> */}
                                Sign Out
                                {/* </Link>  */}
                              </button>
                            </Menu.Item>
                            {/* <Menu.Item>Sign out</Menu.Item> */}
                          </Menu.Items>
                        </Transition>
                      </Menu>
                    </div>
                  </div>
                  <div className="-mr-2 flex md:hidden">
                    {/* Mobile menu button */}
                    <Disclosure.Button className="bg-red-400 inline-flex items-center justify-center p-2 rounded-md text-white hover:text-white hover:bg-red-400 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-red-300 focus:ring-white">
                      <span className="sr-only">Open main menu</span>
                      {open ? (
                        <XIcon className="block h-6 w-6" aria-hidden="true" />
                      ) : (
                        <MenuIcon
                          className="block h-6 w-6"
                          aria-hidden="true"
                        />
                      )}
                    </Disclosure.Button>
                  </div>
                </div>
              </div>

              <Disclosure.Panel className="md:hidden">
                <div className="px-2 pt-2 pb-3 space-y-1 sm:px-3">
                  {/* {navigation.map((item) => (
                        <Disclosure.Button
                        key={item.name}
                        as="a"
                        href={item.href}
                        className={Filt(
                            item.current
                            ? "bg-gray-900 text-white"
                            : "text-gray-300 hover:bg-gray-700 hover:text-white",
                            "block px-3 py-2 rounded-md text-base font-medium"
                        )}
                        aria-current={item.current ? "page" : undefined}
                        >
                        {item.name}
                        </Disclosure.Button>
                    ))} */}
                  <Link to="/home"><Disclosure.Button className="block px-3 py-2 w-full text-left rounded-md text-base font-medium text-white hover:bg-red-300 hover:text-white">
                    Home
                  </Disclosure.Button></Link>
                  <Link to="/posts"><Disclosure.Button className="block px-3 py-2 w-full text-left rounded-md text-base font-medium text-white hover:bg-red-300 hover:text-white">
                    Problem
                  </Disclosure.Button></Link>
                  <Link to="/reviews"><Disclosure.Button className="block px-3 py-2 w-full text-left rounded-md text-base font-medium text-white hover:bg-red-300 hover:text-white">
                    Review
                  </Disclosure.Button></Link>
                  {/* <Link to="/chat"><Disclosure.Button className="block px-3 py-2 w-full text-left rounded-md text-base font-medium text-white hover:bg-red-300 hover:text-white">
                    Chat
                  </Disclosure.Button></Link> */}
                </div>
                <div className="pt-4 pb-3 border-t border-red-200">
                  <div className="flex items-center px-5">
                    <div className="flex-shrink-0">
                      <img
                        className="h-10 w-10 rounded-full"
                        src={profile.imageUrl}
                        alt=""
                      />
                    </div>
                    <div className="ml-3">
                      <div className="text-base font-medium leading-none text-white">
                        {username}
                      </div>
                      <div className="text-sm font-medium leading-none text-gray-200">
                        {email}
                      </div>
                    </div>
                    {/* Nortification Button */}
                    {/* <button
                        type="button"
                        className="ml-auto bg-red-300 flex-shrink-0 p-1 rounded-full text-white hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-red-300 focus:ring-white"
                        >
                        <span className="sr-only">View notifications</span>
                        <BellIcon className="h-6 w-6" aria-hidden="true" />
                        </button> */}
                  </div>
                  <div className="mt-3 px-2 space-y-1">
                    {/* {userNavigation.map((item) => (
                        <Disclosure.Button
                            key={item.name}
                            as="a"
                            href={item.to}
                            className="block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700"
                        >
                            {item.name}
                        </Disclosure.Button>
                        ))} */}
                    <Disclosure.Button className="block px-3 py-2 w-full text-left rounded-md text-base font-medium text-white hover:text-white hover:bg-red-300">
                      <Link to="/profile">Your Profile</Link>
                    </Disclosure.Button>
                    <Disclosure.Button
                      
                      className="block px-3 py-2 w-full text-left rounded-md text-base font-medium text-white hover:text-white hover:bg-red-300"
                    >
                      <button onClick={logout}>Sign Out</button>
                    </Disclosure.Button>
                  </div>
                </div>
              </Disclosure.Panel>
            </>
          )}
        </Disclosure>

        {/* <header className="bg-white shadow">
            <div className="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 className="text-3xl font-bold text-gray-900">Dashboard</h1>
            </div>
            </header> */}
        <main>
          <div className="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
            {/* Replace with your content */}

            <div className="px-4 py-6 sm:px-0 rounded-lg">
 
                {/* Router Page and */}
                {/* <div className="bg-red-200 rounded mx-auto p-4 h-full">
                    <p className="text-black">Hello</p>
                    </div> */}
                    <Outlet />
                {/* <Switch>
                  <PrivateRouter exact path="/home" component={Home} />
                  <PrivateRouter paht="/post" component={Mainpost}/>
                  <Route path="/add" component={Addpost}/>
                </Switch> */}
            </div>
            {/* /End replace */}
          </div>
        </main>
      </div>
    </Fragment>
  );
};

Layout.propTypes = {
  logout: PropTypes.func.isRequired,
  auth: PropTypes.object.isRequired
};

const mapStateToProps = (state) => ({
  auth: state.auth,
  user: state.user,
});

export default connect(mapStateToProps, { logout })(Layout);

// export default Layout;
