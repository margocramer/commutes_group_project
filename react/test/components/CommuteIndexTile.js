import CommuteIndexTile from '../../src/components/CommuteIndexTile';
import exampleCommute from '../constants/exampleCommute';

describe('CommuteIndexTile', () => {
  let wrapper,
      key,
      commute;

  beforeEach(() => {
    commute = exampleCommute.commutes[0]
    // debugger;
    wrapper = mount(
      <CommuteIndexTile
        key = "myKey"
        commute = {commute}
      />
    )
  })

  it('should render a div', ()=>{
    expect(wrapper.find('div')).toBePresent();
  });

  xit('should render a div with text inside', ()=>{
    expect(wrapper.find('div').text).toBe("Tol Morwen-Isengard");
  });

})
