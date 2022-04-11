import React, { Fragment, useEffect } from 'react'
import { Link } from 'react-router-dom'
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { loaedReviewHL,loaded_Review } from '../../Redux/action/post';
import Loadingpage from '../Layout/Loadingpage';
import HighLight from './Reviews/HighLight';
import Reviews from './Reviews/Reviews';
const Review = ({ loaedReviewHL, post: { hlreviews,reviews },loaded_Review }) => {
    useEffect(() => {
        loaedReviewHL()
        loaded_Review()
    }, [loaedReviewHL,loaded_Review])
    // console.log(hlreviews);
    // console.log(reviews);


    // console.log(hlreviews);

    return (
        <Fragment>
            <div className="flex  bg-red-400 p-6 space-x-4 rounded-3xl">
                <div className="flex-1">
                    <h4 className="text-white text-lg">Review Content</h4>
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
                    <p className="text-lg"> Hightlights Review</p>
                </div>
                <div className="flex flex-col  h-[460px] space-y-4  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
                    {/* สร้าง Component ใหม่เพื่อทำ loop แสดงผล */}
                    {!hlreviews ? (<Loadingpage />) :
                        hlreviews.map((review, id) => (
                            // <p>{review.id}</p>
                            <HighLight key={id} post={review} />
                        ))}

                </div>
            </div>
            <div className="pt-8">
                <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
                    <p className="text-lg">Review Content</p>
                </div>
                <div className="inline-grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-3  h-full w-full  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
                    {!reviews ? <Loadingpage /> : reviews.map((post, id) => (
                        <Reviews key={id} post={post} />
                        ))}
                </div>
            </div>
        </Fragment>
    )
}
Review.propTypes = {
    loaedReviewHL: PropTypes.func.isRequired,
    loaded_Review: PropTypes.func.isRequired,
    // hightlightPost: PropTypes.func.isRequired,
    post: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
    post: state.post,
});

export default connect(mapStateToProps, { loaedReviewHL,loaded_Review })(
    Review
);
//export default Review
