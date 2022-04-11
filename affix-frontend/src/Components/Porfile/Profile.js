import React from "react";

const Profile = () => {
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
                  src="https://lavinephotography.com.au/wp-content/uploads/2017/01/PROFILE-Photography-112.jpg"
                  alt=""
                />
              </div>
              <div className="flex flex-col p-4 mt-4 space-y-4 bg-white rounded-md">
              <h1 className="text-black font-bold text-md leading-8 ">
                ข้อมูลส่วนตัว
              </h1>
              <h3 className="text-md leading-8">
                ชื่อ-นามสกุล
              </h3>
              <p className="text-md leading-8">
                วัน/เดือน/ปีเกิด
              </p>
              <p className="text-md leading-8">
                อายุ
              </p>
              <p className="text-md leading-8">
                University
              </p>                
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

export default Profile;
