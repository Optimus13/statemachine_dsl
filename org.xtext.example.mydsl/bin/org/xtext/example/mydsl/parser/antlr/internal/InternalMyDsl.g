/*
 * generated by Xtext 2.14.0
 */
grammar InternalMyDsl;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.example.mydsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}

@parser::members {

 	private MyDslGrammarAccess grammarAccess;

    public InternalMyDslParser(TokenStream input, MyDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "FSM";
   	}

   	@Override
   	protected MyDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleFSM
entryRuleFSM returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFSMRule()); }
	iv_ruleFSM=ruleFSM
	{ $current=$iv_ruleFSM.current; }
	EOF;

// Rule FSM
ruleFSM returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getFSMAccess().getFSMAction_0(),
					$current);
			}
		)
		otherlv_1='FSM'
		{
			newLeafNode(otherlv_1, grammarAccess.getFSMAccess().getFSMKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getFSMAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFSMRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.xtext.example.mydsl.MyDsl.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getFSMAccess().getInitialstateInitialStateParserRuleCall_3_0());
				}
				lv_initialstate_3_0=ruleInitialState
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFSMRule());
					}
					set(
						$current,
						"initialstate",
						lv_initialstate_3_0,
						"org.xtext.example.mydsl.MyDsl.InitialState");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				otherlv_4='state'
				{
					newLeafNode(otherlv_4, grammarAccess.getFSMAccess().getStateKeyword_4_0_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getFSMAccess().getStateStateParserRuleCall_4_0_1_0());
						}
						lv_state_5_0=ruleState
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getFSMRule());
							}
							add(
								$current,
								"state",
								lv_state_5_0,
								"org.xtext.example.mydsl.MyDsl.State");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					otherlv_6=','
					{
						newLeafNode(otherlv_6, grammarAccess.getFSMAccess().getCommaKeyword_4_0_2_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getFSMAccess().getStateStateParserRuleCall_4_0_2_1_0());
							}
							lv_state_7_0=ruleState
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getFSMRule());
								}
								add(
									$current,
									"state",
									lv_state_7_0,
									"org.xtext.example.mydsl.MyDsl.State");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
			)
			    |
			(
				otherlv_8='tr'
				{
					newLeafNode(otherlv_8, grammarAccess.getFSMAccess().getTrKeyword_4_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getFSMAccess().getTransitionTransitionParserRuleCall_4_1_1_0());
						}
						lv_transition_9_0=ruleTransition
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getFSMRule());
							}
							add(
								$current,
								"transition",
								lv_transition_9_0,
								"org.xtext.example.mydsl.MyDsl.Transition");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					otherlv_10=','
					{
						newLeafNode(otherlv_10, grammarAccess.getFSMAccess().getCommaKeyword_4_1_2_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getFSMAccess().getTransitionTransitionParserRuleCall_4_1_2_1_0());
							}
							lv_transition_11_0=ruleTransition
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getFSMRule());
								}
								add(
									$current,
									"transition",
									lv_transition_11_0,
									"org.xtext.example.mydsl.MyDsl.Transition");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
			)
		)*
	)
;

// Entry rule entryRuleState
entryRuleState returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStateRule()); }
	iv_ruleState=ruleState
	{ $current=$iv_ruleState.current; }
	EOF;

// Rule State
ruleState returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getStateAccess().getState_ImplParserRuleCall_0());
		}
		this_State_Impl_0=ruleState_Impl
		{
			$current = $this_State_Impl_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStateAccess().getInitialStateParserRuleCall_1());
		}
		this_InitialState_1=ruleInitialState
		{
			$current = $this_InitialState_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleEString
entryRuleEString returns [String current=null]:
	{ newCompositeNode(grammarAccess.getEStringRule()); }
	iv_ruleEString=ruleEString
	{ $current=$iv_ruleEString.current.getText(); }
	EOF;

// Rule EString
ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_STRING_0=RULE_STRING
		{
			$current.merge(this_STRING_0);
		}
		{
			newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0());
		}
		    |
		this_ID_1=RULE_ID
		{
			$current.merge(this_ID_1);
		}
		{
			newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1());
		}
	)
;

// Entry rule entryRuleState_Impl
entryRuleState_Impl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getState_ImplRule()); }
	iv_ruleState_Impl=ruleState_Impl
	{ $current=$iv_ruleState_Impl.current; }
	EOF;

// Rule State_Impl
ruleState_Impl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getState_ImplAccess().getStateAction_0(),
					$current);
			}
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getState_ImplAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getState_ImplRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.xtext.example.mydsl.MyDsl.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_isFinal_2_0='isFinal'
				{
					newLeafNode(lv_isFinal_2_0, grammarAccess.getState_ImplAccess().getIsFinalIsFinalKeyword_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getState_ImplRule());
					}
					setWithLastConsumed($current, "isFinal", true, "isFinal");
				}
			)
		)?
	)
;

// Entry rule entryRuleTransition
entryRuleTransition returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTransitionRule()); }
	iv_ruleTransition=ruleTransition
	{ $current=$iv_ruleTransition.current; }
	EOF;

// Rule Transition
ruleTransition returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getTransitionAccess().getTransitionAction_0(),
					$current);
			}
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getTransitionAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTransitionRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.xtext.example.mydsl.MyDsl.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTransitionRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getTransitionAccess().getSourceStateCrossReference_2_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3='->'
		{
			newLeafNode(otherlv_3, grammarAccess.getTransitionAccess().getHyphenMinusGreaterThanSignKeyword_3());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTransitionRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getTransitionAccess().getTargetStateCrossReference_4_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_5=':'
		{
			newLeafNode(otherlv_5, grammarAccess.getTransitionAccess().getColonKeyword_5());
		}
		otherlv_6='trigger'
		{
			newLeafNode(otherlv_6, grammarAccess.getTransitionAccess().getTriggerKeyword_6());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getTransitionAccess().getTriggerEStringParserRuleCall_7_0());
				}
				lv_trigger_7_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTransitionRule());
					}
					set(
						$current,
						"trigger",
						lv_trigger_7_0,
						"org.xtext.example.mydsl.MyDsl.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleInitialState
entryRuleInitialState returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getInitialStateRule()); }
	iv_ruleInitialState=ruleInitialState
	{ $current=$iv_ruleInitialState.current; }
	EOF;

// Rule InitialState
ruleInitialState returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getInitialStateAccess().getInitialStateAction_0(),
					$current);
			}
		)
		otherlv_1='initialstate'
		{
			newLeafNode(otherlv_1, grammarAccess.getInitialStateAccess().getInitialstateKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getInitialStateAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getInitialStateRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.xtext.example.mydsl.MyDsl.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_isFinal_3_0='isFinal'
				{
					newLeafNode(lv_isFinal_3_0, grammarAccess.getInitialStateAccess().getIsFinalIsFinalKeyword_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getInitialStateRule());
					}
					setWithLastConsumed($current, "isFinal", true, "isFinal");
				}
			)
		)?
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
