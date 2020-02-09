package fsm_tp.aspects;

import fr.inria.diverse.k3.al.annotationprocessor.Aspect;
import fsm_tp.InitialState;
import fsm_tp.aspects.StateAspect;

@Aspect(className = InitialState.class)
@SuppressWarnings("all")
public class InitialStateAspect extends StateAspect {
}
