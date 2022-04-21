import React, { Fragment, useState,useEffect } from "react";
//Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";

import moment from 'moment';
import { Dialog, Transition } from "@headlessui/react";
import store from "../../Redux/store";
import { setAlert } from "../../Redux/action/alert";
import Alert from '../auth/Alert'
import { updateProfile ,uploadImage} from "../../Redux/action/userprofiles";
import { loadUser } from "../../Redux/action/auth";
import Myprofile from "./Myprofile";
// import Loadingpage from "../Layout/Loadingpage";

const Profile = ({ auth: { user: { email, profile ,posts }} ,userprofiles:{imagetext,loading} ,updateProfile,loadUser,uploadImage}) => {
  useEffect(() => {
    loadUser();
    
  }, [loadUser])
  
  let [isOpen, setIsOpen] = useState(false)

  function closeModal() {
    setIsOpen(false)
  }

  function openModal() {
    setIsOpen(true)
  }

  const date = moment(profile.dob);
  const dateComponent = date.format("DD/MM/YYYY");
  // console.log(dateComponent);


  const [Profiles, setProfiles] = useState({
    data: {
      fullname: profile.fullname,
      dob: profile.dob,
      education: profile.education,
      shotbio_tech: profile.shotbio_tech,
      imageUrl:profile.imageUrl
    }
  });

  const onChange = e =>
    setProfiles({ data: { ...Profiles.data, [e.target.name]: e.target.value } });

  const { fullname, dob, education, shotbio_tech } = Profiles.data;
  // const onUpdateimage = () =>{
  //   setProfiles({ data: { ...Profiles.data, imageUrl: imagetext.url } });
  //   console.log(Profiles.data);
  // }




  const onSubmit =  (e) =>{
    e.preventDefault()
    if (imagetext) {
      setProfiles({ data: { ...Profiles.data, imageUrl: imagetext.url } });
    }

    if (moment(dob,'YYYY-MM-DD',true).isValid() || dob === "" || dob === null ) { 
      // console.log(Profiles.data.imageUrl);
      // setProfiles({ data: { ...Profiles.data, imageUrl: imagetext.url } });
      console.log(Profiles.data.imageUrl);
       updateProfile(Profiles,profile.id)
      console.log("edit sucessfuly");
       
    }else{
     store.dispatch(setAlert("Error : Date Error "));
      // console.log("error");
  }
  loadUser();
  closeModal();
  }

    // console.log(imagedata.url);    

  // Add Photo
  const [files, setFiles] = useState();
  const [ url, setUrl ] = useState(null);
  const uploadImages = async (e) => {
    //posting logic will go here
    e.preventDefault();
    // console.log(e.target.files);
    if(files !== undefined) {
      // sharp automatically rotates image according to orientation tag

    const formData = new FormData();
    formData.append('file', files[0]);
    formData.append("upload_preset", "userprofile-affix-tech")
    formData.append("cloud_name","carisoven")
    console.log(formData);
    //  uploadImage(formData);
    fetch("  https://api.cloudinary.com/v1_1/carisoven/image/upload",{
      method:"post",
      body: formData
      })
      .then(resp => resp.json())
      .then(data => {
      setUrl(data.url);
      console.log(data.url);
      setProfiles({ data: { ...Profiles.data, imageUrl: data.url } });
      })
      .catch(err => console.log(err))

    }

    // setProfiles({ data: { ...Profiles.data, [e.target.name]: e.target.value } });
  };

  console.log(Profiles);
  return (
    <div>
      <div className="flex  flex-col md:flex-row  md:space-x-4 ">
        <div className="flex-1 md:w-1/2 mb-6">
          <div className="bg-red-400 p-4 text-white rounded-t-md ">
            <p>Your Profile</p>
          </div>
          <div className=" bg-red-200 min-h-full p-4 rounded-b-md">
            {/* <div className="bg-white p-3 border-t-4 border-green-400"> */}
            <div className="image overflow-hidden p-4">
              <img
                className="object-cover h-60 w-60 mx-auto rounded-md"
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

                            <div className="col-span-6">
                              <label
                                htmlFor="shotbio_tech"
                                className="block text-md font-medium text-gray-700"
                              >
                                Image Profile
                              </label>
                              <div className="image overflow-hidden p-4">
                                { url !== null ?
                               <img
                               className="object-cover h-60 w-60 mx-auto rounded-md"
                               // src="https://res.cloudinary.com/carisoven/image/upload/v1649872713/medium_DSC_0020_528c43c9ed.jpg"
                               src={url}
                               alt=""
                             />
                             :
                             url === null && profile.imageUrl === null ?
                              <div class="flex justify-center items-center h-full">
                              <img class="h-16 w-16" src="https://icons8.com/preloaders/preloaders/1488/Iphone-spinner-2.gif" alt="loading"/>
                            </div>    
                              :    
                              <img
                              className="object-cover h-60 w-60 mx-auto rounded-md"
                              // src="https://res.cloudinary.com/carisoven/image/upload/v1649872713/medium_DSC_0020_528c43c9ed.jpg"
                              src={profile.imageUrl}
                              alt=""
                            />
                            }

{/* <div class="flex justify-center items-center h-full">
  <img class="h-16 w-16" src="https://icons8.com/preloaders/preloaders/1488/Iphone-spinner-2.gif" alt="loading"/>
</div> */}
                                </div>
                                <div className="w-full my-2">
                                <input
                                  type="file"
                                  className="block w-full text-sm text-slate-500
                                          file:mr-4 file:py-2 file:px-4
                                          file:rounded-full file:border-1
                                          file:text-sm file:font-semibold
                                          file:bg-violet-50 file:text-violet-700
                                          hover:file:bg-violet-100
                                          "
                                  onChange={(e) =>  {
                                    setFiles(e.target.files)
                                  }}
                                  // onChange={e => uploadImages(e)}
                                /> 
                                </div>
                                <button className=" w-full rounded-full bg-red-400 p-2 text-white text-sm" onClick={e=>uploadImages(e)}>Upload Image</button>


                              {/* <input
                                type="text"
                                name="shotbio_tech"
                                id="shotbio_tech"
                                onChange={e => onChange(e)}
                                defaultValue={profile.shotbio_tech}
                                value={shotbio_tech}
                                autoComplete="family-name"
                                className="mt-1 focus:ring-red-500 focus:border-red-500 block w-full  shadow-sm sm:text-sm border-gray-300 rounded-md"
                              /> */}
                            </div>
                          </div>
                        </div>
                        <div className="mt-4 justify-start">
                          <Alert/>
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
                              onClick={(e)=>{
                                // setProfiles({ data: { ...Profiles.data, imageUrl: imagetext.url } });
                                // uploadimages()
                                // uploadimages()
                                onSubmit(e)
                              }}
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
                  <strong>Full Name : </strong> {profile.fullname}
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
        <div className="flex-1 md:w-1/2 mb-6">
          <div className="bg-red-400 p-4 text-white rounded-t-md ">
            <p>Post View</p>
          </div>
          <div className="flex flex-col bg-red-200 p-4 rounded-b-md space-y-4">
              {/* <div className=" flex-shrink-0"></div> */}
              {/* <Loadingpage /> */}
              {!posts ? <p>No Post</p> : posts.map((post, id) => (
                // <p>{id}</p>
            <Myprofile key={id} post={post} />
              ))}
    
          </div>
        </div>

      </div>
    </div>
  );
};

Profile.propTypes = {
  // logout: PropTypes.func.isRequired,
  uploadImage: PropTypes.func.isRequired,
  updateProfile: PropTypes.func.isRequired,
  loadUser:PropTypes.func.isRequired,
  auth: PropTypes.object.isRequired,
  userprofiles: PropTypes.object.isRequired
};

const mapStateToProps = (state) => ({
  auth: state.auth,
  user: state.user,
  userprofiles: state.userprofiles
});

export default connect(mapStateToProps, {
  updateProfile,
  loadUser,
  uploadImage
})(Profile);

// export default Profile;
