import React from "react";
import "./Loadingpage.css";

export default function Loadingpage() {
  return (
    <div className="loader">
      <div className="loader-wrapper">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  );
}

// import React from "react";
// import './Loadingpage.css';

//  const Loadingpage = () => {
//   return (
//     <div style={{		 background:"#3F485B",display:"flex",alignItems:"center",height: 970}}>
//     <span className="back">
//       <span>L</span>
//       <span>o</span>
//       <span>a</span>
//       <span>d</span>
//       <span>i</span>
//       <span>n</span>
//       <span>g</span>
//     </span>
//     </div>
//   );
// };
// export default Loadingpage

// import React from "react";
// import './Loadpage.css';

//  const Loadpage = () => {
//   return (
// <div className='loading-page'>
// 		<div className="loading-wrap">
// 			<div className="loading-card">
// 				<div className='ball'></div>
// 				<div className='loading-board board1'>
// 				</div>
// 				<div className='loading-board board2'>
// 				</div>
// 				<div className='loading-board board3'>
// 				</div>
// 			</div>
// 			<p className='loading-text'>Loading...</p>
// 		</div>
// 	</div>
//   );
// };
// export default Loadpage
