package fsm_tp.aspects;

import fsm_tp.InitialState;
import fsm_tp.aspects.InitialStateAspectInitialStateAspectProperties;
import java.util.Map;

@SuppressWarnings("all")
public class InitialStateAspectInitialStateAspectContext {
  public final static InitialStateAspectInitialStateAspectContext INSTANCE = new InitialStateAspectInitialStateAspectContext();
  
  public static InitialStateAspectInitialStateAspectProperties getSelf(final InitialState _self) {
    		if (!INSTANCE.map.containsKey(_self))
    			INSTANCE.map.put(_self, new fsm_tp.aspects.InitialStateAspectInitialStateAspectProperties());
    		return INSTANCE.map.get(_self);
  }
  
  private Map<InitialState, InitialStateAspectInitialStateAspectProperties> map = new java.util.WeakHashMap<fsm_tp.InitialState, fsm_tp.aspects.InitialStateAspectInitialStateAspectProperties>();
  
  public Map<InitialState, InitialStateAspectInitialStateAspectProperties> getMap() {
    return map;
  }
}
