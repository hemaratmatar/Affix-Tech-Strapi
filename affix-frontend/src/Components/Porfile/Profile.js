import React from "react";

const Profile = () => {
  return (
    <div>
      <div className="flex flex-row flex-1 w-full space-x-4">
        <div className="w-full mx-auto">
          <div className="bg-red-400 p-4 rounded-t-md ">
            <p>Your Profile</p>
          </div>
          <div className=" bg-white h-auto p-4 rounded-b-md">
            {/* <div class="bg-white p-3 border-t-4 border-green-400"> */}
              <div class="image overflow-hidden">
                <img
                  class="h-30 w-30 mx-auto rounded-md"
                  src="https://lavinephotography.com.au/wp-content/uploads/2017/01/PROFILE-Photography-112.jpg"
                  alt=""
                />
              </div>
              <h1 class="text-gray-900 font-bold text-xl leading-8 my-1">
                ข้อมูลส่วนตัว
              </h1>
              <h3 class="text-gray-600 font-lg text-semibold leading-6">
                ชื่อ-นามสกุล
              </h3>
              <p class="text-sm text-gray-500 hover:text-gray-600 leading-6">
                วัน/เดือน/ปีเกิด
              </p>
              <p class="text-sm text-gray-500 hover:text-gray-600 leading-6">
                อายุ
              </p>
              <p class="text-sm text-gray-500 hover:text-gray-600 leading-6">
                University
              </p>
            {/* </div> */}
          </div>
        </div>
        <div className="w-full mx-auto">
          <div className="bg-red-400 p-4 rounded-t-md ">
            <p>Post View</p>
          </div>
          <div className=" bg-white h-36 p-4 rounded-b-md">
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

export default Profile;
