import React, { Component }  from 'react';
import { Link } from 'react-router'
import CommuteIndexTile from '../components/CommuteIndexTile'

class CommuteIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      commutes: []
    }
  }

  componentDidMount() {
    fetch(`/api/v1/commutes.json`)
      .then((response) => response.json())
      .then((responseData) => {
        this.setState({commutes: responseData})
      })
  }

  render() {
    let commutes = this.state.commutes.map(commute => {

      return(
        <CommuteIndexTile
          key={commute.id}
          commute={commute}
        />
      )
    })

    return(
      <div>
        {commutes}
      </div>
    )
  }
}

export default CommuteIndexContainer;
