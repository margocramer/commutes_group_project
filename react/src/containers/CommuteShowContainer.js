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
    // debugger
    return(
      <div>
        <strong>This commute started at: </strong>{this.state.commute.starting_location} <strong>and ended at: {this.state.commute.ending_location}</strong>
         <br />
        <strong>Commute occurred in the</strong> {this.state.commute.time} <strong>via: </strong>{this.state.commute.mode}
        <br />
        <em>{this.state.commute.description}</em>
        <hr />
      </div>
    )
  }
}

export default CommuteShowContainer;
