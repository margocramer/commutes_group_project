import CommuteIndexTile from '../../src/components/CommuteIndexTile'

describe('CommuteIndexTile', () => {
  let wrapper,
      key,
      start,
      end,
      id;

  beforeEach(() => {
    wrapper = mount(
      <CommuteIndexTile
        key = "myKey"
        start = "Boston"
        end = "Cambridge"
        id = {3}
      />
    )
  })

  xit('should render a div', ()=>{
    expect(wrapper.find('div')).toBePresent();
  });

  xit('should render a div with text inside', ()=>{
    expect(wrapper.find('div')).text.toBe('Boston-Cambridge')
  });

})
