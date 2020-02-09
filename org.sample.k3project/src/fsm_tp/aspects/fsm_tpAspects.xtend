package fsm_tp.aspects

import fr.inria.diverse.k3.al.annotationprocessor.Aspect
import fsm_tp.FSM
import fsm_tp.State
import fsm_tp.Transition
import fsm_tp.InitialState

import static extension fsm_tp.aspects.FSMAspect.*
import static extension fsm_tp.aspects.StateAspect.*
import static extension fsm_tp.aspects.TransitionAspect.*
import static extension fsm_tp.aspects.InitialStateAspect.*
import fsm_tp.Fsm_tpPackage
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.common.util.URI
import java.util.Scanner

class Interpreter
{
	def static void main(String[] args)
	{
		Fsm_tpPackage.eINSTANCE.class
		Resource$Factory.Registry.INSTANCE.extensionToFactoryMap.put("xmi", new XMIResourceFactoryImpl);
		var Resource resource = new ResourceSetImpl().getResource(URI.createURI('\\Master\\Gemoc\\workspace\\fsm_tp\\model\\FSM.xmi'), true)
		var myfsm = resource.contents.get(0) as FSM
		myfsm.execute
	}
}

@Aspect(className=FSM)
class FSMAspect 
{	
	def void execute()
	{
		var State current;
		var Scanner scan = new Scanner(System.in);
		
		_self.state.forEach[s | println('''class «s.name»''')]
		current = _self.initialstate
		println('''current state = «current.name»''')	
		
		while(!current.isFinal)
		{
			System.out.println("Entrez un trigger : ");
			var String s = scan.nextLine();
			System.out.println("Vous avez écrit : " + s);
					
			for(tr : _self.transition)
			{
				if(current.name.equals(tr.source.name) && s.equals(tr.trigger))
				{
					current = tr.target
					println('''current state = «current.name»''')	
				}
			}
		}	
	}
}

@Aspect(className=State)
class StateAspect {

}

@Aspect(className=Transition)
class TransitionAspect {

}

@Aspect(className=InitialState)
class InitialStateAspect extends StateAspect {

}



