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
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then((responseData) => {
        this.setState({commutes: responseData})
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
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
