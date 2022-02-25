import React from "react";
import { Link } from "react-router-dom";

const Mainpost = () => {
  return (
    <>
      <div className="flex flex-row bg-red-200 p-6 space-x-4 rounded-3xl">
        <div>
          <Link to="/post/singlepost/:id" className=" p-3 bg-slate-800 text-white rounded-lg" > Post Single Page </Link> </div>
        <div>
          <Link to="/post/add" className="p-3 bg-slate-800 text-white rounded-lg" > Add Post </Link>
        </div>

        {/* <div className="bg-red-200 rounded mx-auto p-4 h-full">
                   <p className="text-black">Hello</p>
                 </div>
             <h1>Post Problem Page</h1> */}
      </div>
      <div className="pt-8">
        {/* <p className="text-xl py-2">Hightlights</p> */}
        {/* bg-gradient-to-l from-[#FF5C42] via-[#FA8072] to-[#FF5C42]  */}
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-xl">Post Hightlights</p>
        </div>
        <div className="flex flex-col  h-[400px] space-y-4  overflow-y-auto rounded-b-3xl p-6 bg-gray-200">
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="pt-8">
        {/* <p className="text-xl py-2">Hightlights</p> */}
        {/* bg-gradient-to-l from-[#FF5C42] via-[#FA8072] to-[#FF5C42]  */}
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-xl">Content</p>
        </div>
        <div className="flex flex-col  h-full space-y-4  overflow-y-auto rounded-b-3xl p-6 bg-gray-200">
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Mainpost;
