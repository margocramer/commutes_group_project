import React from 'react';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import CommuteIndexContainer from './containers/CommuteIndexContainer';
import CommuteShowContainer from './containers/CommuteShowContainer';

const App = props => {
    return(
      <Router history={browserHistory}>

          <Route path="/" component={CommuteIndexContainer} />
          <Route path="/mine" component={CommuteIndexContainer} />
          <Route path="commutes/:id" component={CommuteShowContainer} />
      </Router>

    );
  };

export default App;
