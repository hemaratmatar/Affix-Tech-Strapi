import React, {
  // Fragment, 
  // useRef, 
  useState
} from "react";
import { Editor } from "@tinymce/tinymce-react";
import { Listbox, Transition } from "@headlessui/react";
import { /*CheckIcon,*/ SelectorIcon } from "@heroicons/react/solid";
import { useNavigate } from "react-router-dom";

// Redux
import api from "../../Redux/utils/api";
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { addPost } from "../../Redux/action/post";
// import { uploadImage } from "../../Redux/action/post";


// function classNames(...classes) {
//   return classes.filter(Boolean).join(" ");
// }

const Addpost = ({ addPost, user: { id } }) => {
  const navigator = useNavigate();

  const people = [
    { id: 1, name: 'Post' },
    { id: 2, name: 'Review' },
  ]

  const [selectedPerson, setSelectedPerson] = useState(people[0])
  const [formPost, setFormpost] = useState({
    data: {
      Title: "",
      Content: "",
      content_private: false,
      Catagory: selectedPerson.name,
      discription: "",
      highlights: false,
      users_permissions_user: id
    }
  });
  const { Title, discription, Content, highlights, content_private, Catagory, users_permissions_user } = formPost.data;
  const onChange = e =>
    setFormpost({ data: { ...formPost.data, [e.target.name]: e.target.value } });

  const handleEditorChange = e => {
    // console.log("Content was updated:");
    setFormpost({
      data: {
        Title: Title,
        discription: discription,
        Content: e.target.getContent(),
        Catagory: Catagory,
        highlights: highlights,
        content_private: content_private,
        users_permissions_user: users_permissions_user
      }
    });
  };



  // const selectdata = e => {
  //   setSelectedPerson();
  //   // setFormpost({
  //   //   data: {
  //   //     Title: Title,
  //   //     discription: discription,
  //   //     Content: Content,
  //   //     Catagory: selectedPerson.name,
  //   //     highlights: highlights,
  //   //     content_private: content_private,
  //   //     users_permissions_user: users_permissions_user
  //   //   }
  //   // });
  // };


  // console.log(selectedPerson.name);
  if (selectedPerson.name === "Post" && Catagory !== "Post") {
    // console.log(selectedPerson.name);
    setFormpost({
      data: {
        Title: Title,
        discription: discription,
        Content: Content,
        Catagory: selectedPerson.name,
        highlights: highlights,
        content_private: content_private,
        users_permissions_user: users_permissions_user
      }
    });
  } else if (selectedPerson.name === "Review" && Catagory !== "Review") {
    setFormpost({
      data: {
        Title: Title,
        discription: discription,
        Content: Content,
        Catagory: selectedPerson.name,
        highlights: highlights,
        content_private: content_private,
        users_permissions_user: users_permissions_user
      }
    });
    // console.log(Catagory);
  } else {
    console.log("You selected");
  }
  const submitdata = e => {
    e.preventDefault();
    // console.log(formPost);

    addPost(formPost);
    navigator("/posts");
  };

  // console.log(formPost);
  // const [files, setFiles] = useState();

  // const uploadImages = async (e) => {
  //   //posting logic will go here

  //   const formData = new FormData()

  //   formData.append('files', files[0])
  //   uploadImage(formData);
  // };

  return (
    <div>
      <div className="mt-5 md:mt-0 md:col-span-2">
        <form onSubmit={e => submitdata(e)}>
          <div className="shadow overflow-hidden sm:rounded-md">
            <div className="px-4 py-5 bg-white sm:p-6">
              <div className="grid grid-cols-6 gap-6">
                <label
                  htmlFor="first-name"
                  className="block text-md font-medium text-gray-700"
                >
                  Post Add
                  {/* เพิ่มเนื้อหา */}
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
                    value={Title}
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
                    value={discription}
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
                    // onInit={(evt, editor) => (editorRef.current = editor)}
                    onChange={e => handleEditorChange(e)}
                    initialValue="<p>Place This Your Content.</p>"
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
                      file_picker_callback: async function (cb, value, meta) {

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

                <Listbox value={selectedPerson} onChange={setSelectedPerson}>
                  <Listbox.Label className="block text-sm font-medium item text-gray-700">Catagory Type</Listbox.Label>
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
                      {people.map((person,id) => (
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
                </Listbox>
                {/* <div className="col-span-6 sm:col-span-3 lg:col-span-2">
                    <label
                      htmlFor="region"
                      className="block text-md font-medium text-gray-700"
                    >
                      State / Province
                    </label>
                    <input
                      type="text"
                      name="region"
                      id="region"
                      autoComplete="address-level1"
                      className="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md"
                    />
                  </div>

                  <div className="col-span-6 sm:col-span-3 lg:col-span-2">
                    <label
                      htmlFor="postal-code"
                      className="block text-md font-medium text-gray-700"
                    >
                      ZIP / Postal code
                    </label>
                    <input
                      type="text"
                      name="postal-code"
                      id="postal-code"
                      autoComplete="postal-code"
                      className="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md"
                    />
                  </div> */}
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
    </div>
  );
};
Addpost.propTypes = {
  addPost: PropTypes.func.isRequired
  // uploadImage: PropTypes.func.isRequired,
  // imagetext: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  isAuthenticated: state.auth.isAuthenticated,
  user: state.auth.user
});

export default connect(mapStateToProps, {
  // uploadImage
  addPost
})(Addpost);

// export default Addpost;
