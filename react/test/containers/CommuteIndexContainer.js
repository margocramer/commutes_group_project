import CommuteIndexContainer from '../../src/components/CommuteIndexContainer';
import CommuteIndexTile from '../../src/components/CommuteIndexTile'


describe('CommuteIndexContainer', ()=>{
  let wrapper;

  beforeEach(()=>{
    jasmineEnzyme();
    wrapper = mount(<CommuteIndexContainer />);
  });

  xit('should have the specified initial state', () => {
    expect(wrapper.state()).to.not.equal({ commutes: [] });
  });

  xit('should render a text field component ', () => {
    expect(wrapper.find(CommuteIndexTile)).toBePresent();
    expect(wrapper.find(CommuteIndexTile)).props()).toEqual({})
  });

})


// describe('example test', () => {
//   it('should pass', () => {
//     expect(true).toBe(true);
//   });
// });
//
// expect(CommuteIndexTile.prototype.handleClick).tohavebeencalled();
