import React, { Fragment, useState } from "react";
//Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";

import moment from 'moment';
import { Menu, Dialog, Transition } from "@headlessui/react";




const Profile = ({ auth: { user: { id, username, email, profile } } }) => {
  let [isOpen, setIsOpen] = useState(false)

  function closeModal() {
    setIsOpen(false)
  }

  function openModal() {
    setIsOpen(true)
  }


  var date = moment(profile.dob);
  var dateComponent = date.utc().format("DD/MM/YYYY");
  console.log(dateComponent);


  const [Profiles, setProfiles] = useState({
    data: {
      fullname: profile.fullname,
      dob: profile.dob,
      education: profile.education,
      shotbio_tech: profile.shotbio_tech
    }
  });

  const onChange = e =>
    setProfiles({ data: { ...Profiles.data, [e.target.name]: e.target.value } });

  const { fullname, dob, education, shotbio_tech } = Profiles

  console.log(Profiles);
  return (
    <div>
      <div className="flex flex-col md:flex-row w-full  md:space-x-4 ">
        <div className="w-full mx-auto mb-6">
          <div className="bg-red-400 p-4 text-white rounded-t-md ">
            <p>Your Profile</p>
          </div>
          <div className=" bg-red-200 min-h-full p-4 rounded-b-md">
            {/* <div className="bg-white p-3 border-t-4 border-green-400"> */}
            <div className="image overflow-hidden p-4">
              <img
                className="h-60 w-auto mx-auto rounded-md"
                src={profile.imageUrl}
                alt=""
              />
            </div>
            <div className="flex flex-col justfy-center p-4 mt-4 space-y-4 bg-white rounded-3xl">
              <div className=" justify-end">
                <div className="relative inline-block text-left bg-red-400 rounded-md">
                  <button onClick={openModal} className="inline-flex justify-center align-middle w-full px-4 py-2 text-sm font-medium text-white bg-black rounded-md bg-opacity-20 hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75">
                    Edit
                  </button>
                </div>
              </div>
              <Transition appear show={isOpen} as={Fragment}>
                <Dialog
                  as="div"
                  className="fixed inset-0 z-10 overflow-y-auto"
                  onClose={closeModal}
                >
                  <div className="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                    <Transition.Child
                      as={Fragment}
                      enter="ease-out duration-300"
                      enterFrom="opacity-0"
                      enterTo="opacity-100"
                      leave="ease-in duration-200"
                      leaveFrom="opacity-100"
                      leaveTo="opacity-0"
                    >
                      <Dialog.Overlay className="fixed inset-0 bg-black bg-opacity-50 transition-opacity" />
                    </Transition.Child>

                    {/* This element is to trick the browser into centering the modal contents. */}
                    <span
                      className="inline-block h-screen align-middle"
                      aria-hidden="true"
                    >
                      &#8203;
                    </span>
                    <Transition.Child
                      as={Fragment}
                      enter="ease-out duration-300"
                      enterFrom="opacity-0 scale-95"
                      enterTo="opacity-100 scale-100"
                      leave="ease-in duration-200"
                      leaveFrom="opacity-100 scale-100"
                      leaveTo="opacity-0 scale-95"
                    >
                      <div className="inline-block w-full max-w-md p-6 my-8 overflow-hidden text-left align-middle transition-all transform bg-white shadow-xl rounded-2xl">
                        <Dialog.Title
                          as="h3"
                          className="text-lg font-medium leading-6 text-gray-900"
                        >
                          Edit About Me
                        </Dialog.Title>
                        <div className="mt-4 justify-start">

                          <div className="grid grid-cols-6 gap-6">
                            <div className="col-span-6">
                              <label
                                htmlFor="fullname"
                                className="block text-md font-medium text-gray-700"
                              >
                                Full Name
                              </label>
                              <input
                                type="text"
                                name="fullname"
                                id="fullname"
                                autoComplete="given-name"
                                onChange={e => onChange(e)}
                                defaultValue={profile.fullname}
                                value={fullname}
                                className="mt-1 focus:ring-red-400 focus:border-red-400 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md"
                              />
                            </div>

                            <div className="col-span-6">
                              <label
                                htmlFor="discription"
                                className="block text-md font-medium text-gray-700"
                              >
                                Lastest Education
                              </label>
                              <input
                                type="text"
                                name="education"
                                id="education"
                                onChange={e => onChange(e)}
                                defaultValue={profile.education}
                                value={education}
                                autoComplete="family-name"
                                className="mt-1 focus:ring-red-500 focus:border-red-500 block w-full  shadow-sm sm:text-sm border-gray-300 rounded-md"
                              />
                            </div>
                         
                            <div className="col-span-6">
                              <label
                                htmlFor="dob"
                                className="block text-md font-medium text-gray-700"
                              >
                                Date of Birth
                              </label>
                              <input
                                type="text"
                                name="dob"
                                id="dob"
                                placeholder="2022-12-31"
                                onChange={e => onChange(e)}
                                defaultValue={profile.dob}
                                value={dob}
                                autoComplete="family-name"
                                className="mt-1 focus:ring-red-500 focus:border-red-500 block w-full  shadow-sm sm:text-sm border-gray-300 rounded-md"
                              />
                            </div>

                            <div className="col-span-6">
                              <label
                                htmlFor="shotbio_tech"
                                className="block text-md font-medium text-gray-700"
                              >
                                About Me
                              </label>
                              <input
                                type="text"
                                name="shotbio_tech"
                                id="shotbio_tech"
                                onChange={e => onChange(e)}
                                defaultValue={profile.shotbio_tech}
                                value={shotbio_tech}
                                autoComplete="family-name"
                                className="mt-1 focus:ring-red-500 focus:border-red-500 block w-full  shadow-sm sm:text-sm border-gray-300 rounded-md"
                              />
                            </div>
                          </div>


                        </div>
                        {/* <div className="mt-2">
                          <p className="text-sm text-gray-500">
                            Your payment has been successfully submitted. We’ve sent you
                            an email with all of the details of your order.
                          </p>
                        </div> */}
                        <div className=" flex justify-between">
                          <div className="mt-4">
                            <button
                              type="button"
                              className="inline-flex justify-center px-4 py-2 text-sm font-medium text-blue-900 bg-blue-100 border border-transparent rounded-md hover:bg-blue-200 focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-blue-500"
                              onClick={closeModal}
                            >
                              Save
                            </button>
                          </div>
                          <div className="mt-4">
                            <button
                              type="button"
                              className="inline-flex justify-center px-4 py-2 text-sm font-medium text-white bg-red-500 border border-transparent rounded-md hover:bg-red-600 focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-red-200"
                              onClick={closeModal}
                            >
                              Close
                            </button>
                          </div>
                        </div>

                      </div>
                    </Transition.Child>
                  </div>
                </Dialog>
              </Transition>
              <div className=" justify-start">
                <h1 className="text-black font-bold text-lg leading-8 ">
                  About Me
                </h1>
                <h3 className="text-md leading-8">
                  <strong>Full Name : </strong> {username}
                </h3>
                <p className="text-md leading-8">
                  <strong>DoB : </strong> {dateComponent}
                </p>
                <p className="text-md leading-8">
                  <strong>Email : </strong> {email}
                </p>
                {/* <p className="text-md leading-8">
              <strong>อายุ : </strong>
              </p> */}
                <p className="text-md leading-8">
                  <strong>Lastest Education  : </strong>{profile.education}
                </p>
                <p className="text-md leading-8">
                  <strong>About Me  : </strong><br />{profile.shotbio_tech}
                </p>
              </div>
            </div>
            {/* </div> */}
          </div>
        </div>
        <div className="w-full mx-auto">
          <div className="bg-red-400 p-4 text-white rounded-t-md ">
            <p>Post View</p>
          </div>
          <div className=" bg-red-200 h-36 p-4 rounded-b-md">
            <div className="bg-red 300 w-full h-24 rounded-xl p-3">
              <div className=" flex-shrink-0"></div>
              <div className="px-3">
                <div className="text-lg font-medium text-black line-clamp-1">
                  Title
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  );
};

Profile.propTypes = {
  // logout: PropTypes.func.isRequired,
  auth: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  auth: state.auth,
  user: state.user,
});

export default connect(mapStateToProps, {

})(Profile);

// export default Profile;
