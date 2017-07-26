import React, { Component }  from 'react';

class CommuteShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      commute: {}
    }
  }

  componentDidMount() {
    let commuteId = this.props.params.id;
    fetch(`/api/v1/commutes/${commuteId}`)
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
        this.setState({commute: responseData})
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
    }

  render() {
    return(
      <div>
        This commute started at: {this.state.commute.starting_location} and ended at: {this.state.commute.ending_location}
         <br />
        Mode of transportation was: {this.state.commute.mode}
        <br />
        The poster had this to say: {this.state.commute.description}
      </div>
    )
  }
}

export default CommuteShowContainer;
