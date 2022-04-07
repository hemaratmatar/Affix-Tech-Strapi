import React, { Fragment } from 'react'
import { Link, useParams } from 'react-router-dom'

const Review = () => {

    const { id } = useParams();
    return (
        <Fragment>
            <div className="flex  bg-red-400 p-6 space-x-4 rounded-3xl">
                <div className="flex-1">
                    <h4 className="text-white text-xl">Review Content</h4>
                </div>
                <div className=" justify-end">
                    <Link
                        to="/posts/add"
                        className="p-3 bg-red-300 text-white rounded-lg"
                    >
                        Add Review
                    </Link>
                </div>


            </div>
            <div className="pt-8">
                <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
                    <p className="text-xl"> Hightlights Review</p>
                </div>
                <div className="flex flex-col  h-[400px] space-y-4  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
                    {/* สร้าง Component ใหม่เพื่อทำ loop แสดงผล */}
                    {/* {!highlights ? (<Loadingpage />) :
                        highlights.map((highlight, id) => (
                            <Posthighlight key={id} post={highlight} />
                        ))} */}
                    <div className="bg-white w-full  rounded-xl p-3">
                        <div className=" flex-shrink-0"></div>
                        <div className="flex flex-col px-3">
                            <div className="flex flex-row items-center ">
                                {/* {attributes.users_permissions_user.data.attributes.profile.data === null ?  */}
                                <img
                                    className="h-10 w-10 rounded-full "
                                    src="https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg"
                                    alt="profile-in-post-list"
                                />
                                {/*    :
                                    <img
                                        className="h-10 w-10 rounded-full "
                                        src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                                        alt="profile-in-post-list"
                                    /> 
                                    } */}

                                <p className="px-4 text-lg">
                                    {/* {attributes.users_permissions_user.data.attributes.username} */}Oven user
                                </p>
                            </div>
                            <a href={`/posts/${id}`}>
                                <div className="py-2">
                                    <div className="text-lg font-medium text-black line-clamp-1 ">
                                        {/* {attributes.Title} */}Title
                                    </div>
                                    <p className="truncate">
                                        {/* {attributes.discription} */}Oven Discription
                                    </p>
                                </div>
                            </a>
                            {/* <p className="truncate">{renderHTML(attributes.discription)}</p> */}
                        </div>
                    </div>
                </div>
            </div>
            <div className="pt-8">
                <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
                    <p className="text-xl">Review Content</p>
                </div>
                <div className="inline-grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-3  h-full w-full  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
                    {/* {!posts ? <Loadingpage /> : posts.map((post, id) => (
                        <Postall key={id} post={post} />
                        ))} */}
                    <div className="bg-white w-full h-40 rounded-xl p-3">
                        {/* <div className=" flex-1 flex-shrink-0"></div> */}
                        <div className="flex flex-col px-3 ">
                            {/* <p className="truncate">{renderHTML(attributes.discription)}</p> */}
                            <div className="flex flex-row items-center  py-2">
                                {/* {attributes.users_permissions_user.data.attributes.profile.data === null ? */}
                                <img
                                    className="h-10 w-10 rounded-full "
                                    src="https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg"
                                    alt="profile-in-post-list"
                                />
                                {/* : */}
                                {/* <img
                                    className="h-10 w-10 rounded-full "
                                    src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                                    alt="profile-in-post-list"
                                /> */}
                                {/* } */}
                                {/* <img
                                    className="h-10 w-10 rounded-full "
                                    src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                                    alt="profile-in-post-list"
                                /> */}
                                <p className="px-4 text-md">
                                    Oven user
                                    {/* {attributes.users_permissions_user.data.attributes.username} */}
                                </p>
                            </div>
                            <div className=" py-2 justify-end">
                                <a href={`/posts/${id}`}>
                                    <div className="py-2">
                                        <div className="text-md font-medium text-black line-clamp-1 ">
                                            {/* {attributes.Title} */} Title
                                        </div>
                                        <p className="truncate">
                                            {/* {attributes.discription} */}Content discription
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </div>
                    <div className="bg-white w-full h-40 rounded-xl p-3">
                        {/* <div className=" flex-1 flex-shrink-0"></div> */}
                        <div className="flex flex-col px-3 ">
                            <div className="flex flex-row items-center  py-2">
                                {/* {attributes.users_permissions_user.data.attributes.profile.data === null ? */}
                                <img
                                    className="h-10 w-10 rounded-full "
                                    src="https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg"
                                    alt="profile-in-post-list"
                                />
                                {/* : */}
                                {/* <img
                                    className="h-10 w-10 rounded-full "
                                    src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                                    alt="profile-in-post-list"
                                /> */}
                                {/* } */}
                                {/* <img
                                    className="h-10 w-10 rounded-full "
                                    src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                                    alt="profile-in-post-list"
                                /> */}
                                <p className="px-2 text-md">
                                    Oven user
                                    {/* {attributes.users_permissions_user.data.attributes.username} */}
                                </p>
                            </div>
                            <div className=" py-2 justify-end">
                                <a href={`/posts/${id}`}>
                                    <div className="py-2">
                                        <div className="text-md font-medium text-black line-clamp-1 ">
                                            {/* {attributes.Title} */} Title
                                        </div>
                                        <p className="truncate">
                                            {/* {attributes.discription} */}Content discription
                                        </p>
                                    </div>
                                </a>
                            </div>
                            {/* <p className="truncate">{renderHTML(attributes.discription)}</p> */}

                        </div>

                    </div>
                </div>
            </div>
        </Fragment>
    )
}

export default Review