import TextField from '../../src/components/TextField'

describe('TextField', () => {
  let wrapper,
      label,
      name,
      handlerFunctionSpy;

  beforeEach(() => {
    wrapper = mount(
      <TextField
        label = 'my Label'
        name = 'my Name'
        handlerFunction = {handlerFunctionSpy}
      />
    )
  })

  xit('should render a label tag', () => {
    expect(wrapper.find('label')).stoBePresent();
  });

  xit('should render ', ()=>{
    expect(wrapper.find('label')).text.toBe("my Label")
  });

  xit('should invoke the onClick function from props when clicked', ()=>{
    wrapper.simulate('click');
    expect(onClickSpy).toHaveBeenCalled();
  });

})
