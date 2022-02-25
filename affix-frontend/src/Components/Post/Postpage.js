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
        <div className=" bg-white h-full text-sm p-5 border-b-4 border-x-4 border-slate-200 rounded-b-xl">
          <p>Post Date : 23/12/2022</p>
          <div className=" break-words text-sm p-5">
            <p>
              Let’s start with a simple consideration: we all love neural
              networks. We love them because they are intuitive, most of the
              time they don’t require domain knowledge, they are easy to code
              and pretty simple to understand. And even if now they are so
              trendy and used, they have a pretty long history. Nowadays Neural
              Networks are way faster than before due to our hardware
              improvements and they are way easier to be developed as well. But
              do we really need them? In this notebook we will use a Deep
              Learning algorithm (Multilayer Perceptron) and we will compare it
              with the simplest and the most immediate Machine Learning method,
              that is Linear Regression. At the end of this post we will be
              clearer when we will really need Deep Learning and when we can
              just use a very simple algorithm and get away with it. Let’s start
              with the fun part: 0. The Libraries In our example, we will use
              Python and some very well known libraries (numpy, pandas, sklearn,
              …). Please import them all before starting to copy paste the code.
              For the visualization part I used plotly as it permits to have a
              3d visualization of what we are doing and it is interactive. It’s
              really not essential for the Machine Learning part, so you can
              safely avoid to install it and skip the visualization of the
              results 1. The First Example In this first example I made up some
              quadratic correlated data. Why did I do that? To show that Linear
              Regression can be used to model polynomial functions as well! But
              we will get there. Let’s build this dataset: As it is possible to
              see the target is the following function: t = c_0
              +c_1*x+c_2*y+c_3*x*y I know what you are thinking: this model is
              not properly linear. But think again: x and y are basically the
              same variable, so it can be considered to be something like this:
              t = c_0 +(c_1+c_2)*x+c_3*x*x So we are still good. :) Let’s plot
              the surface: 1.1 Linear Regression Now let’s define our predicting
              function: We made up our data, so we exactly know the parameters
              and we can test if the predicting function works or not: We can
              see that it works perfectly! Let’s move on. The loss function that
              is used in the Linear Regression task is the Mean Squared Error,
              which has the following expression: And it is our loss function
              gradient, which we would like to set to 0: The loss function and
              gradient, for our “perfect” solution are correctly 0:
            </p>
          </div>
        </div>
      </div>
      {/*คอมเม็นท์*/}
      <div>
        <div className=" bg-white h-full border-4 border-slate-200 rounded-xl">
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
          <div className="bg-white border-b-4 border-x-4 border-slate-200 rounded-b-xl">
          <div className=" flex flex-col mx-4 space-y-4 h-full py-4  overflow-auto">
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
    </div>
  );
};

export default Postpage;
