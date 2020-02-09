package fsm_tp.aspects;

import fsm_tp.FSM;
import fsm_tp.aspects.FSMAspectFSMAspectProperties;
import java.util.Map;

@SuppressWarnings("all")
public class FSMAspectFSMAspectContext {
  public final static FSMAspectFSMAspectContext INSTANCE = new FSMAspectFSMAspectContext();
  
  public static FSMAspectFSMAspectProperties getSelf(final FSM _self) {
    		if (!INSTANCE.map.containsKey(_self))
    			INSTANCE.map.put(_self, new fsm_tp.aspects.FSMAspectFSMAspectProperties());
    		return INSTANCE.map.get(_self);
  }
  
  private Map<FSM, FSMAspectFSMAspectProperties> map = new java.util.WeakHashMap<fsm_tp.FSM, fsm_tp.aspects.FSMAspectFSMAspectProperties>();
  
  public Map<FSM, FSMAspectFSMAspectProperties> getMap() {
    return map;
  }
}
