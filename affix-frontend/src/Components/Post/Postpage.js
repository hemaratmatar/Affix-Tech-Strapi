import React, { useEffect, useState, Fragment } from "react";
import parse from 'html-react-parser'

//Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { loadedPostbyID } from "../../Redux/action/post";
import { 
  // useNavigate, 
  useParams 
} from "react-router-dom";
import Loadingpage from "../Layout/Loadingpage";
// import { showAllcomment } from "../../Redux/action/comment";
import { addComment } from "../../Redux/action/comment";

//Components
import CommentItems from "../Comments/CommentItems";
import moment from 'moment';
import { Menu, Transition } from '@headlessui/react'
function EditInactiveIcon(props) {
  return (
    <svg
      {...props}
      viewBox="0 0 20 20"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M4 13V16H7L16 7L13 4L4 13Z"
        fill="#FEE2E2"
        stroke="#EF4444"
        strokeWidth="2"
      />
    </svg>
  )
}

function EditActiveIcon(props) {
  return (
    <svg
      {...props}
      viewBox="0 0 20 20"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M4 13V16H7L16 7L13 4L4 13Z"
        fill="#EF4444"
        stroke="#FCA5A5"
        strokeWidth="2"
      />
    </svg>
  )
}

function DeleteInactiveIcon(props) {
  return (
    <svg
      {...props}
      viewBox="0 0 20 20"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <rect
        x="5"
        y="6"
        width="10"
        height="10"
        fill="#FEE2E2"
        stroke="#EF4444"
        strokeWidth="2"
      />
      <path d="M3 6H17" stroke="#EF4444" strokeWidth="2" />
      <path d="M8 6V4H12V6" stroke="#EF4444" strokeWidth="2" />
    </svg>
  )
}

function DeleteActiveIcon(props) {
  return (
    <svg
      {...props}
      viewBox="0 0 20 20"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <rect
        x="5"
        y="6"
        width="10"
        height="10"
        fill="#EF4444"
        stroke="#FCA5A5"
        strokeWidth="2"
      />
      <path d="M3 6H17" stroke="#FCA5A5" strokeWidth="2" />
      <path d="M8 6V4H12V6" stroke="#FCA5A5" strokeWidth="2" />
    </svg>
  )
}

const Postpage = ({
  loadedPostbyID, post: { post, loading },
  auth: { user },
  addComment
  // showAllcomment, comment: { comments } 
}) => {
  const { id } = useParams();
  // const navigator = useNavigate()
  useEffect(() => {
    //Load Data By id
    loadedPostbyID(id);

    // showAllcomment(id);
  }, [loadedPostbyID, id,
    // showAllcomment
  ]);

  //Convert Date Post Function
  if (post != null) {
    var date = moment(post.attributes.publish_date);
    var dateComponent = date.utc().format("DD/MM/YYYY");
  }
  //Add Comment Function
  const [commentpost, setCommentpost] = useState({
    data: {
      commentcontent: "",
      post: id,
      users_permissions_user: user.id
    }
  });
  const { commentcontent } = commentpost.data;

  const onChange = e =>
    setCommentpost({ data: { ...commentpost.data, [e.target.name]: e.target.value } });

  const submitdata = e => {
    e.preventDefault();
    addComment(commentpost);
    window.location.reload(false);
    loadedPostbyID(id)
    setCommentpost({ data: { ...commentpost.data, commentcontent: "" } });
  };


  const [switchtoedit, setswitchtoedit] = useState(false);


  // post
  return loading || post === null ? (
    <Loadingpage />
  ) : (
    <div className="space-y-4">
      <div>
        {/*Title*/}
        <div className="flex items-center bg-red-400 p-4 text-md font-bold text-white break-all rounded-t-xl">
          <div className="flex-1">{post.attributes.Title}</div>
          <div className=" justify-end">
            <Menu as="div" className="relative inline-block text-left">
              <div>
                <Menu.Button className="inline-flex justify-center align-middle w-full px-4 py-2 text-sm font-medium text-white bg-black rounded-md bg-opacity-20 hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75">
                  ...
                  {/* <ChevronDownIcon
                className="w-5 h-5 ml-2 -mr-1 text-violet-200 hover:text-violet-100"
                aria-hidden="true"
            /> */}
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
                <Menu.Items className="absolute right-0 w-56 mt-2 origin-top-right bg-white divide-y divide-gray-100 rounded-md shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
                  <div className="px-1 py-1 ">
                    {/* {user.id === attributes.users_permissions_user.data.id ? ( */}
                    <Fragment>
                      {!switchtoedit ? (
                        <Menu.Item>
                          {({ active }) => (
                            <button
                              className={`${active ? 'bg-red-400 text-white' : 'text-gray-900'
                                } group flex rounded-md items-center w-full px-2 py-2 text-sm`}
                              onClick={() => setswitchtoedit(!switchtoedit)}
                            >
                              {active ? (
                                <EditActiveIcon
                                  className="w-5 h-5 mr-2"
                                  aria-hidden="true"
                                />
                              ) : (
                                <EditInactiveIcon
                                  className="w-5 h-5 mr-2"
                                  aria-hidden="true"
                                />
                              )}
                              Edit
                            </button>
                          )}
                        </Menu.Item>
                      ) : (
                        <Menu.Item>
                          {({ active }) => (
                            <button
                              className={`${active ? 'bg-red-400 text-white' : 'text-gray-900'
                                } group flex rounded-md items-center w-full px-2 py-2 text-sm`}
                              onClick={() => setswitchtoedit(!switchtoedit)}
                            >
                              {active ? (
                                <EditActiveIcon
                                  className="w-5 h-5 mr-2"
                                  aria-hidden="true"
                                />
                              ) : (
                                <EditInactiveIcon
                                  className="w-5 h-5 mr-2"
                                  aria-hidden="true"
                                />
                              )}
                              Edit Cancel
                            </button>
                          )}
                        </Menu.Item>
                      )}
                      <Menu.Item>
                        {({ active }) => (
                          <button
                            className={`${active ? 'bg-red-400 text-white' : 'text-gray-900'
                              } group flex rounded-md items-center w-full px-2 py-2 text-sm`}
                          // onClick={e=> deletecomment(e)}
                          >
                            {active ? (
                              <DeleteActiveIcon
                                className="w-5 h-5 mr-2 text-red-400"
                                aria-hidden="true"
                              />
                            ) : (
                              <DeleteInactiveIcon
                                className="w-5 h-5 mr-2 text-red-400"
                                aria-hidden="true"
                              />
                            )}
                            Delete
                          </button>
                        )}
                      </Menu.Item>
                    </Fragment>
                    {/* )
                    : */}
                    <Fragment>
                      <Menu.Item>
                        {({ active }) => (
                          <button
                            className={`${active ? 'bg-red-400 text-white' : 'text-gray-900'
                              } group flex rounded-md items-center w-full px-2 py-2 text-sm`}
                          >
                            {active ? (
                              <></>
                              // <DeleteActiveIcon
                              //   className="w-5 h-5 mr-2 text-red-400"
                              //   aria-hidden="true"
                              // />
                            ) : (
                              // <DeleteInactiveIcon
                              //   className="w-5 h-5 mr-2 text-red-400"
                              //   aria-hidden="true"
                              // />
                              <>
                                {/* <i class="fa-light fa-megaphone"></i> */}
                              </>

                            )}
                            Report
                          </button>
                        )}
                      </Menu.Item>
                    </Fragment>

                    {/* } */}
                  </div>
                  {/* <div className="px-1 py-1">

            </div> */}
                </Menu.Items>
              </Transition>
            </Menu>
          </div>
        </div>
        {/*Content*/}
        <div className=" bg-white h-full text-sm p-5 border-b-4 border-x-4 border-slate-200 rounded-b-xl">
          <p>Post Date : {dateComponent}</p>
          <div className=" break-words text-sm p-5">
            {/* <div dangerouslySetInnerHTML={{ __html: post.attributes.Content }} /> */}
            <div>{parse(post.attributes.Content)}</div>

            {/* <div>{post.attributes.Content}</div> */}
          </div>
        </div>
      </div>
      {/*Add Comment*/}
      <div>
        <div className=" bg-white h-full border-4 border-slate-200 rounded-xl">
          <div className=" break-words text-md p-5 space-y-4 font-bold text-black">
            <p>Comment</p>
            <form onSubmit={e => submitdata(e)}>
              <textarea
                className=" form-control block w-full px-3 py-1.5 text-sm font-normal text-black bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-black focus:bg-white focus:border-blue-600 focus:outline-none "
                rows="4"
                placeholder="Writing Comment"
                name="commentcontent"
                id="commentcontent"
                onChange={e => onChange(e)}
                value={commentcontent}
              >
              </textarea>
              <div className="grid md:justify-items-end">
                <button
                  className="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"

                >
                  Comment
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
      {/*Comment*/}
      <div className="h-full">
        <div className="mx-auto bg-red-400 p-4 text-md flex  justify-items-center justify-between  rounded-t-xl">
          <div className="flex items-center text-white"><p>Comment Detail</p></div>
        </div>
        <div className="bg-red-200 h-auto rounded-b-xl">
          <div className=" flex flex-col mx-4 space-y-4 py-4">

            {post.attributes.comments.data.length !== 0 ? (
              post.attributes.comments.data.map((comment, id) => (
                // <p>{comment.id}</p>
                <CommentItems key={id} comment={comment} />
              ))
            ) : (<p className=" justify-center items-center">No Comment</p>)}

            {/* {post.attributes.comments.data.map((comment) => (
                // <p>{comment.id}</p>
                <CommentItems key={comment.id} comment={comment} />
              ))} */}

            {/* <div className="  ">
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
                  writing or professional writing pieces—making it easier to
                  read and understand. Good paragraphs are a handy writing skill
                  for many forms of literature, and good writers can greatly
                  enhance the readability of their news, essays, or fiction
                  writing when constructed properly.
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
                  writing or professional writing pieces—making it easier to
                  read and understand. Good paragraphs are a handy writing skill
                  for many forms of literature, and good writers can greatly
                  enhance the readability of their news, essays, or fiction
                  writing when constructed properly.
                </div>
              </div> */}
          </div>
        </div>
      </div>
    </div>
  );
};

Postpage.propTypes = {
  loadedPostbyID: PropTypes.func.isRequired,
  // showAllcomment: PropTypes.func.isRequired,
  addComment: PropTypes.func.isRequired,
  auth: PropTypes.object.isRequired,
  post: PropTypes.object.isRequired,
  // comment:PropTypes.object.isRequired
  // getKnowbyID: PropTypes.func.isRequired,
  // knows: PropTypes.object.isRequired,
  // knowledge: PropTypes.object.isRequired
};

const mapStateToProps = state => ({
  post: state.post,
  auth: state.auth
  // comment: state.comment
  // knowledge: state.knowledge,
  // knows: state.knows
});

export default connect(mapStateToProps, {
  loadedPostbyID,
  addComment
  // showAllcomment
  // getKnowbyID 
})(Postpage);

// export default Postpage;

