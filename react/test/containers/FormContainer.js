import TextField from '../../src/components/TextField'
import FormContainer from '../../src/containers/FormContainer'


describe('FormContainer', ()=>{
  let wrapper,
      handlerFunctionSpy,
      event;

  beforeEach(()=>{
    jasmineEnzyme();
    wrapper = mount(<FormContainer />);
  });

  xit('should have the specified initial state', () => {
    expect(wrapper.state()).toEqual({ startLocation: '', endLocation:'', description:'', mode:'' });
  });

  it('should render a text field component ', () => {
    expect(wrapper.find(TextField)).toBePresent();
  });

  xit('should responds to a field change', done => {
    handlerFunctionSpy = sinon.spy(New.prototype, "handlerFunction");
    event= { target: {name:'something', value:'somethingElse'} }
    wrap.ref('something').simulate('change', event);
    expect(handlerFunctionSpy.calledOnce).to.equal(true);
  })

})
