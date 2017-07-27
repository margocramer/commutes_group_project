import React from 'react';
import { Link } from 'react-router'

const CommuteIndexTile = props => {
  return (
    <div id="DivCommuteIndexTile">
      <a href={`commutes/${props.commute.id}`}>{props.commute.starting_location}-{props.commute.ending_location}
    </a>
    </div>
  )
}

export default CommuteIndexTile
