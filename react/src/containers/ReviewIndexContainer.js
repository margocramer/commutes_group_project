// import React, { Component } from 'React';
// import ReviewTile from '../components/ReviewTile';
//
// class ReviewIndexContainer extends Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       reviews: []
//     }
//   }
//
// componentDidMount() {
//   // let reviewId = this.props.params.review_id;
//   // let commuteId= this.props.params.commute_id;
//
//
//   fetch('api/v1/reviews')
//   .then(response => response.json())
//   .then(responseAsJson => {
//     this.setState({ reviews: responseAsJson })
//   })
//
//   }
//
//   render(){
//     let reviews = this.state.reviews.map(review=>{
//       return(
//         <ReviewTile
//           key={review.id}
//           review={review}
//         />
//       )
//     })
//
//     return(
//       <div>
//         {reviews}
//       </div>
//     )
//   }
// }
//
// export default ReviewIndexContainer;
