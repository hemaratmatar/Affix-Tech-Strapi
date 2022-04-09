import React, {
  Fragment,
  // Fragment, 
  useRef, 
  useEffect,
  useState
} from "react";
import { Editor } from "@tinymce/tinymce-react";
// import { Listbox, Transition } from "@headlessui/react";
// import { /*CheckIcon,*/ SelectorIcon } from "@heroicons/react/solid";
import { useNavigate,useParams } from "react-router-dom";

//Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import api from '../../Redux/utils/api';
import { loadedPostbyID } from "../../Redux/action/post";
import Loadingpage from "../Layout/Loadingpage";


const Contents = ({content}) =>{  

  const [formPost, setFormpost] = useState({
    data: {
      Title: content.attributes.Title,
      Content: content.attributes.Content,
      content_private: false,
      Catagory: content.attributes.Catagory,
      discription: content.attributes.discription,
      highlights: false
    }
  });

  console.log(formPost);
    const onChange = e =>
    setFormpost({ data: { ...formPost.data, [e.target.name]: e.target.value } });
  const editorRef = useRef(null);
  const handleEditorChange = (e) => {
    if (editorRef.current || e) {
      setFormpost({
        data: {
          ...formPost.data,
          Content: editorRef.current.getContent()
        }
      });   
     }
  };
return (
  <Fragment>
          <div className="mt-5 md:mt-0 md:col-span-2">
        <form /*onSubmit={e => submitdata(e)}*/>
          <div className="shadow overflow-hidden sm:rounded-md">
            <div className="px-4 py-5 bg-white sm:p-6">
              <div className="grid grid-cols-6 gap-6">
                <label
                  htmlFor="first-name"
                  className="block text-md font-medium text-gray-700"
                >
                  Title Edit
                </label>
                <div className="col-span-6">
                  <label
                    htmlFor="Title"
                    className="block text-md font-medium text-gray-700"
                  >
                    Title
                  </label>
                  <input
                    type="text"
                    name="Title"
                    id="Title"
                    autoComplete="given-name"
                      onChange={e => onChange(e)}
                      value={formPost.data.Title}
                    className="mt-1 focus:ring-red-400 focus:border-red-400 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md"
                  />
                </div>

                <div className="col-span-6">
                  <label
                    htmlFor="discription"
                    className="block text-md font-medium text-gray-700"
                  >
                    Discription
                  </label>
                  <input
                    type="text"
                    name="discription"
                    id="discription"
                      onChange={e => onChange(e)}
                      value={formPost.data.discription}
                    autoComplete="family-name"
                    className="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full  shadow-sm sm:text-sm border-gray-300 rounded-md"
                  />
                </div>

                <div className="col-span-6 space-y-2">
                  <label
                    htmlFor="street-address"
                    className="block text-md font-medium text-gray-700"
                  >
                    Content
                  </label>
                  <p className="text-sm">คุณสามารถปรับแต่งโพสต์ของคุณโดยใช้ Source Code จาก <a className=" text-cyan-400" href="https://tailwindcss.com" target="_blank" rel="noreferrer">Tailwind CSS</a> ได้แล้ว</p>
                  <Editor
                    // apiKey="u9xnjd1zxyorl0cxv29cpdlfgxgr67ypm5gl6t0hw24tq7qs"

                      onInit={(evt, editor) => editorRef.current = editor}
                      onChange={e=>handleEditorChange(e)}
                      initialValue={formPost.data.Content}
                      // value={formPost.data.Content}
                    init={{
                      height: 500,
                      menubar: false,
                      plugins: [
                        "advlist autolink lists image charmap print preview anchor",
                        "searchreplace visualblocks code fullscreen",
                        "insertdatetime media table paste code help wordcount",
                      ],
                      toolbar:
                        "undo redo | formatselect | " +
                        "bold italic backcolor | alignleft aligncenter alignright alignjustify |" +
                        "image media | code | bullist numlist outdent indent  | " +
                        "removeformat | help",
                      file_picker_types: "file image media",
                      file_picker_callback: async function (cb) {

                        // try {
                        //   const file = this.files[0];
                        //   //upload now to backend
                        //   //Response path from cloudinary
                        //   console.log(file);
                        //   const formData = new FormData()

                        //   formData.append('files', file);
                        //   const config = {
                        //   headers: {
                        //     "content-type": "multipart/form-data"
                        //   }
                        // };
                        // console.log(formData);
                        // const res = await api.post('/upload',formData,config);
                        // console.log(res.data[0].url);
                        // cb(res.data[0].url);
                        // } catch (err) {
                        //   console.log(err);
                        // }

                        var input = document.createElement("input");
                        input.setAttribute("type", "file");
                        input.setAttribute("accept", "image/*");

                        input.onchange = async function () {

                          var file = this.files[0];
                          //upload now to backend
                          //Response path from cloudinary
                          // console.log(file);
                          const formData = new FormData()

                          formData.append('files', file);
                          const config = {
                            headers: {
                              "content-type": "multipart/form-data"
                            }
                          };
                          // console.log(formData);
                          const res = await api.post('/upload', formData, config);
                          // console.log(res.data[0].url);
                          cb(res.data[0].url);

                          // var reader = new FileReader();
                          // reader.onload = function () {
                          //   var id = 'blobid' + (new Date()).getTime();
                          //   var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
                          //   var base64 = reader.result.split(',')[1];
                          //   var blobInfo = blobCache.create(id, file, base64);
                          //   blobCache.add(blobInfo);
                          //   cb(blobInfo.blobUri(), { title: file.name });
                          // };
                          // reader.readAsDataURL(file);

                          // console.log(file);
                        };

                        input.click()
                      },

                      content_style:
                        "body { font-family:Helvetica,Arial,sans-serif; font-size:15px }",
                    }}
                  />
                </div>

                {/* <Listbox value={selectedPerson} onChange={setSelectedPerson}>
                  <Listbox.Label className="block text-sm font-medium text-gray-700">Catagory Type</Listbox.Label>
                  <div className="mt-1 relative">
                    <Listbox.Button className="relative w-80 bg-white border border-gray-300 rounded-md shadow-sm pl-3 pr-10 py-2 text-left cursor-default focus:outline-none focus:ring-1 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">


                      <span className="flex items-center">
                        <span className="ml-3 block truncate">{selectedPerson.name}</span>
                      </span>
                      <span className="ml-3 absolute inset-y-0 right-0 flex items-center pr-2 pointer-events-none">
                        <SelectorIcon className="h-5 w-5 text-gray-400" aria-hidden="true" />
                      </span>
                    </Listbox.Button>
                    <Transition
                      leave="transition ease-in duration-100"
                      leaveFrom="opacity-100"
                      leaveTo="opacity-0"
                    >

                    </Transition>
                    <Listbox.Options className="absolute z-10 mt-1 w-80 bg-white shadow-lg max-h-56 rounded-md py-1 text-base ring-1 ring-black ring-opacity-5 overflow-auto focus:outline-none sm:text-sm">
                      {people.map((person, id) => (
                        <Listbox.Option
                          key={id}
                          value={person}
                          disabled={person.unavailable}
                          className="cursor-default select-none relative py-2 pl-3 pr-9"
                        >
                          <div className="flex items-center">

                            <span className='font-normal ml-3 block truncate' >
                              {person.name}
                            </span>
                          </div>

                        </Listbox.Option>
                      ))}
                    </Listbox.Options>
                  </div>
                </Listbox> */}

              </div>
            </div>
            <div className="px-4 py-3 bg-gray-50 text-right sm:px-6">
              <button
                type="submit"
           
                className="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
              >
                Save
              </button>
            </div>
          </div>
        </form>
        <form >
          {/* <input
          type="file"
          className="block w-full text-sm text-slate-500
                  file:mr-4 file:py-2 file:px-4
                  file:rounded-full file:border-0
                  file:text-sm file:font-semibold
                  file:bg-violet-50 file:text-violet-700
                  hover:file:bg-violet-100"
          onChange={(e) => setFiles(e.target.files)}
        /> */}
          {/* <input type="submit" onClick={uploadImages} /> */}
        </form>
      </div>

      {/* <button onClick={log}>Log editor content</button> */}
  </Fragment>
)

}




const Editpost = ({  post: { post, loading },loadedPostbyID}) => {
  const navigator = useNavigate();
  const { id } = useParams();
  useEffect(() => {
    //Load Data By id
    loadedPostbyID(id);

    // showAllcomment(id);
    // if (post === null ) {
    //   setFormpost({
    //     data: {
    //       Title: post.attributes.Title,
    //       Content: post.attributes.Content,
    //       content_private: false,
    //       Catagory: post.attributes.Catagory,
    //       discription: post.attributes.discription,
    //       highlights: false
    //     }
    //   })
    // }   
    // checks()
    

  }, [loadedPostbyID, id]);

// const checks = () => {
//    if (post !== null) {
//       setFormpost({
//         data: {
//           Title: post.attributes.Title,
//           Content: post.attributes.Content,
//           content_private: false,
//           Catagory: post.attributes.Catagory,
//           discription: post.attributes.discription,
//           highlights: false
//         }
//       })
//     }     
// }
  // const people = [
  //   { id: 1, name: 'Post' },
  //   { id: 2, name: 'Review' },
  // ]

  // const [selectedPerson, setSelectedPerson] = useState(people[0]);

  // const {title,content,discription,user_permissions_user,catagory} = post.attributes

   
    // const [formPost, setFormpost] = useState({
    //   data: {
    //     Title: post.attributes.Title,
    //     Content: post.attributes.Content,
    //     content_private: false,
    //     Catagory: post.attributes.Catagory,
    //     discription: post.attributes.discription,
    //     highlights: false
    //   }
    // });
    // if (post === null) {
    //   setFormpost({
    //     data: {
    //       Title: post.attributes.Title,
    //       Content: post.attributes.Content,
    //       content_private: false,
    //       Catagory: post.attributes.Catagory,
    //       discription: post.attributes.discription,
    //       highlights: false
    //     }
    //   })
    // }

    

// return (
  return loading || post === null ? (
    <Loadingpage />
  ) : (
    <Fragment>
      <Contents content={post}/>
    </Fragment>
  )
}
Editpost.propTypes = {
  loadedPostbyID: PropTypes.func.isRequired,
  // deletePost:PropTypes.func.isRequired,
  // showAllcomment: PropTypes.func.isRequired,
  // addComment: PropTypes.func.isRequired,
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
  // addComment,
  // deletePost
  // showAllcomment
  // getKnowbyID 
})(Editpost);

// export default Editpost