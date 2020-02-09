package fsm_tp.aspects;

import fr.inria.diverse.k3.al.annotationprocessor.Aspect;
import fsm_tp.FSM;
import fsm_tp.State;
import fsm_tp.Transition;
import fsm_tp.aspects.FSMAspectFSMAspectProperties;
import java.util.Scanner;
import java.util.function.Consumer;
import org.eclipse.emf.common.util.EList;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.xbase.lib.InputOutput;

@Aspect(className = FSM.class)
@SuppressWarnings("all")
public class FSMAspect {
  public static void execute(final FSM _self) {
    final fsm_tp.aspects.FSMAspectFSMAspectProperties _self_ = fsm_tp.aspects.FSMAspectFSMAspectContext.getSelf(_self);
    // #DispatchPointCut_before# void execute()
    if (_self instanceof fsm_tp.FSM){
    	fsm_tp.aspects.FSMAspect._privk3_execute(_self_, (fsm_tp.FSM)_self);
    };
  }
  
  protected static void _privk3_execute(final FSMAspectFSMAspectProperties _self_, final FSM _self) {
    State current = null;
    Scanner scan = new Scanner(System.in);
    final Consumer<State> _function = (State s) -> {
      StringConcatenation _builder = new StringConcatenation();
      _builder.append("class ");
      String _name = s.getName();
      _builder.append(_name);
      InputOutput.<String>println(_builder.toString());
    };
    _self.getState().forEach(_function);
    current = _self.getInitialstate();
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("current state = ");
    String _name = current.getName();
    _builder.append(_name);
    InputOutput.<String>println(_builder.toString());
    while ((!current.isIsFinal())) {
      {
        System.out.println("Entrez un trigger : ");
        String s = scan.nextLine();
        System.out.println(("Vous avez écrit : " + s));
        EList<Transition> _transition = _self.getTransition();
        for (final Transition tr : _transition) {
          if ((current.getName().equals(tr.getSource().getName()) && s.equals(tr.getTrigger()))) {
            current = tr.getTarget();
            StringConcatenation _builder_1 = new StringConcatenation();
            _builder_1.append("current state = ");
            String _name_1 = current.getName();
            _builder_1.append(_name_1);
            InputOutput.<String>println(_builder_1.toString());
          }
        }
      }
    }
  }
}
