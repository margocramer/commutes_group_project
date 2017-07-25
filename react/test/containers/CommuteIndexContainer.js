import CommuteIndexContainer from '../../src/containers/CommuteIndexContainer';
import CommuteIndexTile from '../../src/components/CommuteIndexTile';
import exampleCommute from '../constants/exampleCommute';


describe('CommuteIndexContainer', ()=>{
  let wrapper,
      commutes = exampleCommute.commutes;

  beforeEach(()=>{

    jasmineEnzyme();
    wrapper = mount(<CommuteIndexContainer />);
  });

  xit('should have the specified initial state', () => {
    expect(wrapper.state()).to.not.equal({ commutes: [] });
  });

  xit('should render a text CommuteIndexTile component ', () => {
    expect(wrapper.find(CommuteIndexTile)).toBePresent();
    done();
  });

})


// describe('example test', () => {
//   it('should pass', () => {
//     expect(true).toBe(true);
//   });
// });
//
// expect(CommuteIndexTile.prototype.handleClick).tohavebeencalled();
