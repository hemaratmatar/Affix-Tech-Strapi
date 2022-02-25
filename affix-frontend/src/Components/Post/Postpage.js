import React from "react";

const Postpage = () => {
  return (
    <div className="space-y-4">
      {/*เนื้อหา*/}
      <div>
        {/*หัวข้อ*/}
        <div className="bg-red-400 p-4 text-md font-bold text-white break-all rounded-t-xl">
          <p>Title</p>
        </div>
        {/*หัวข้อ*/}
        <div className=" bg-white h-full text-sm p-5 rounded-b-xl">
          <p>Post Date : 23/12/2022</p>
          <div className=" break-words text-sm p-5">
            <p>Content</p>
          </div>
        </div>
      </div>
      {/*คอมเม็นท์*/}
      <div>
        <div className=" bg-white h-full rounded-xl">
          <div className=" break-words text-md p-5 space-y-4 font-bold text-black">
            <p>Comment Content</p>
            <textarea
              class=" form-control block w-full px-3 py-1.5 text-sm font-normal text-black bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-black focus:bg-white focus:border-blue-600 focus:outline-none "
              rows="7"
              placeholder="Your message"
            >
              Hold Comment On This Post
            </textarea>
            <div className="grid md:justify-items-end">
              <button className="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                Comment
              </button>
            </div>
          </div>
        </div>
      </div>
      <div>
        <div className=" bg-white h-full rounded-xl  ">
          <div className="mx-auto bg-red-400 p-4 text-md  rounded-t-xl">
            <p>Comment</p>
          </div>
          <div className=" flex flex-col mx-4 space-y-4 h-full py-4 overflow-auto">
            <div className=" ">
              <div className=" flex flex-1 items-center bg-red-300  p-3   rounded-t-xl">
                <img
                  className="h-10 w-10  rounded-full"
                  src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                  alt=""
                />
                <p className="px-4 text-sm font-bold">Comment Contents</p>
              </div>
              <div className=" bg-slate-100 break-all p-4 text-sm rounded-b-xl ">
                Paragraphs are distinct blocks of text which section out a
                larger piece of writing—stories, novels, articles, creative
                writing or professional writing pieces—making it easier to read
                and understand. Good paragraphs are a handy writing skill for
                many forms of literature, and good writers can greatly enhance
                the readability of their news, essays, or fiction writing when
                constructed properly.
              </div>
            </div>

            <div className="  ">
              <div className=" flex flex-1 items-center bg-red-300  p-3  rounded-t-xl">
                <img
                  className="h-10 w-10  rounded-full"
                  src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                  alt=""
                />
                <p className="px-4 text-sm font-bold">Comment Contents</p>
              </div>
              <div className=" bg-slate-100 break-all p-4 rounded-b-xl text-sm">
                Paragraphs are distinct blocks of text which section out a
                larger piece of writing—stories, novels, articles, creative
                writing or professional writing pieces—making it easier to read
                and understand. Good paragraphs are a handy writing skill for
                many forms of literature, and good writers can greatly enhance
                the readability of their news, essays, or fiction writing when
                constructed properly.
              </div>
            </div>
            <div className="  ">
              <div className=" flex flex-1 items-center bg-red-300  p-3  rounded-t-xl">
                <img
                  className="h-10 w-10  rounded-full"
                  src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                  alt=""
                />
                <p className="px-4 text-sm font-bold">Comment Contents</p>
              </div>
              <div className=" bg-slate-100 break-all p-4 rounded-b-xl text-sm">
                Paragraphs are distinct blocks of text which section out a
                larger piece of writing—stories, novels, articles, creative
                writing or professional writing pieces—making it easier to read
                and understand. Good paragraphs are a handy writing skill for
                many forms of literature, and good writers can greatly enhance
                the readability of their news, essays, or fiction writing when
                constructed properly.
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Postpage;
