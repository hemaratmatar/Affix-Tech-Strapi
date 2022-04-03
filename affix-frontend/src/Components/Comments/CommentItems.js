import React, { Fragment, useState ,useEffect} from 'react'

// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";

// Components
// import { Link } from "react-router-dom";
import { Menu, Transition } from '@headlessui/react'
import { DeleteComment, EditComment } from '../../Redux/action/comment';
import { loadedPostbyID } from '../../Redux/action/post';
// import { ChevronDownIcon } from '@heroicons/react/solid'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
// import { megaphone } from '@fortawesome/fontawesome-svg-core/import.macro'
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

const Comment = ({ comment: { id, attributes }, auth: { user }, post,EditComment,loadedPostbyID,DeleteComment}) => {
  

  
  
  
  
  
  
  const [switchtoedit, setswitchtoedit] = useState(false);




  //Edit Comment Function
  const [commentpost, setCommentpost] = useState({
    data: {
      commentcontent: attributes.commentcontent,
      post: post.post.id,
      users_permissions_user: user.id
    }
  });
  const { commentcontent } = commentpost.data;

  const onChange = e =>
    setCommentpost({ data: { ...commentpost.data, [e.target.name]: e.target.value } });

  // console.log(commentpost);

  const submitdata = (e) => {
    e.preventDefault();
     EditComment(commentpost,id);
     setswitchtoedit(false);
     window.location.reload(false);    
    //  loadedPostbyID(post.post.id);
     setCommentpost({ data: { ...commentpost.data, commentcontent: "" } });
  };

  const deletecomment = (e) =>{
    e.preventDefault();
    DeleteComment(id);
    console.log(id);
    window.location.reload(false);  
  }

  return (
    <div>
      <div className=" flex float-none justify-items-stretch items-center bg-red-400  p-3  rounded-t-xl">
        <div className="justify-self-start w-10"><img
          className="h-10 w-10  rounded-full"
          src={attributes.users_permissions_user.data.attributes.imageUrl}
          // src={"https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"}
          alt="userimage-profile-comment"
        /></div>
        <div className=" flex-1 text-white"><p className="px-4 text-sm font-bold">{/*Comment Contents*/}{attributes.users_permissions_user.data.attributes.username}</p></div>
        {/* T-shirt sizes */}

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
                  {user.id === attributes.users_permissions_user.data.id ? (
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
                              onClick={e=> deletecomment(e)}
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
                  )
                    :
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

                  }
                </div>
                {/* <div className="px-1 py-1">

            </div> */}
              </Menu.Items>
            </Transition>
          </Menu>
        </div>
      </div>
      <div className="bg-white break-all p-4 text-sm rounded-b-xl ">
        {!switchtoedit ? (
          <Fragment>
            {attributes.commentcontent}
          </Fragment>
        ) : (
          <div className='p-3 space-y-4'>
            <p>Edit Comment</p>
            <form
            onSubmit={e=> submitdata(e)}
            >
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
                <button className="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                  Comment
                </button>
              </div>
            </form>
          </div>
        )}
      </div>
    </div>
  )
}
Comment.propTypes = {
  loadedPostbyID:PropTypes.func.isRequired,
  EditComment:PropTypes.func.isRequired,
  DeleteComment:PropTypes.func.isRequired,
  comment: PropTypes.object.isRequired,
  auth: PropTypes.object.isRequired,
  post: PropTypes.object.isRequired
};

const mapStateToProps = (state) => ({
  auth: state.auth,
  post: state.post,
});

export default connect(mapStateToProps,{EditComment,loadedPostbyID,DeleteComment})(Comment);
// export default Comment



