import React from 'react';
import { Link } from 'react-router'

const CommuteIndexTile = props => {
  return (
    <div id="DivCommuteIndexTile">
      <Link
        to={`commutes/${props.commute.id}`}>{props.commute.starting_location}-{props.commute.ending_location}
      </Link>
    </div>
  )
}

export default CommuteIndexTile


// import React from 'react';
// import { Link } from 'react-router'
//
// const CommuteIndexTile = props => {
//   return (
//     <div>
//       <Link
//         to={`commutes/${props.id}`}>{props.start}-{props.end}
//       </Link>
//     </div>
//   )
// }
//
// export default CommuteIndexTile
