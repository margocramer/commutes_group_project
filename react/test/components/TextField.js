import TextField from '../../src/components/TextField'

describe('TextField', () => {
  let wrapper,
      label,
      name,
      onChangeSpy;

  beforeEach(() => {
    onChangeSpy = jasmine.createSpy('onChange Spy')
    wrapper = mount(
      <TextField
        label = 'my Label'
        name = 'my Name'
        handlerFunction = {onChangeSpy}
      />
    )
  })

  it('should render a label tag', () => {
    expect(wrapper.find('label')).toBePresent();
  });

  xit('should render ', ()=>{
    expect(wrapper.find('label')).text.toBe("my Label");
  });

  xit('should invoke the onChangeSpy function from props when changed', ()=>{
    wrapper.simulate('change');
    expect(onChangeSpy).toHaveBeenCalled();
  });

})
