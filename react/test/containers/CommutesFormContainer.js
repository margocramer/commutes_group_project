import TextField from '../../src/components/TextField'
import CommuteFormContainer from '../../src/components/CommuteFormContainer'


describe('CommuteFormContainer', ()=>{
  let wrapper;
      handlerFunctionSpy;
      event;

  beforeEach(()=>{
    jasmineEnzyme();
    wrapper = mount(<CommuteFormContainer />);
  });

  xit('should have the specified initial state', () => {
    expect(wrapper.state()).toEqual({ startLocation: '', endLocation:'', description:'', mode:'' });
  });

  xit('should render a text field component ', () => {
    expect(wrapper.find(TextField)).toBePresent();
  });

  xit('should responds to a field change', done => {
    handlerFunctionSpy = sinon.spy(New.rpototype, "handlerFunction");
    event= { target: {name:'something', value:'somethingElse'} }
    wrap.ref('something').simulate('change', event);
    expect(handlerFunctionSpy.calledOnce).to.equal(true)
  })

})
